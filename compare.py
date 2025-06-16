#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Automatically activate the project's virtual environment
import os
import sys

# Check if we're in a virtual environment
if not hasattr(sys, 'real_prefix') and not (hasattr(sys, 'base_prefix') and sys.base_prefix != sys.prefix):
    # Try to activate the project's virtual environment
    venv_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'env')
    activate_script = os.path.join(venv_path, 'bin', 'activate_this.py')
    
    if os.path.exists(activate_script):
        with open(activate_script) as f:
            exec(f.read(), {'__file__': activate_script})
    else:
        print("Virtual environment not found. Please create a virtual environment with 'python -m venv env'")
        print("Then install dependencies with 'pip install -r requirements.txt'")
        sys.exit(1)

# Get the current directory where the script is located
script_dir = os.path.dirname(os.path.abspath(__file__))

# Build the path to the virtual environment and add it to the path
env_dir = os.path.join(script_dir, 'env')
site_packages = os.path.join(
    env_dir, 
    'lib', 
    f'python{sys.version_info.major}.{sys.version_info.minor}',
    'site-packages'
)

# Check if the virtual environment exists and add it to the path
if os.path.exists(site_packages) and os.path.isdir(site_packages):
    sys.path.insert(0, site_packages)

"""
JSON Comparison Tool for Excel Files

This script analyzes Excel files containing JSON data in specified columns,
comparing the structures and identifying differences between them.

Usage:
    python compare.py <excel_file> [--output <output_file>]

Requirements:
    - Python 3.9+
    - pandas
    - openpyxl
    - deepdiff
"""

import argparse
import json
import logging
import os
import sys
from typing import Any, Dict, List, Optional, Tuple, Union

import pandas as pd
from deepdiff import DeepDiff
from openpyxl.utils.exceptions import InvalidFileException


# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    handlers=[
        logging.StreamHandler(sys.stdout),
        logging.FileHandler('json_comparison.log')
    ]
)
logger = logging.getLogger(__name__)


class JSONComparisonTool:
    """Tool for comparing JSON data in Excel files."""
    
    def __init__(
        self, 
        excel_file: str, 
        object_column: str = 'object', 
        new_data_column: str = 'new_data'
    ):
        """
        Initialize the JSON comparison tool.
        
        Args:
            excel_file: Path to the Excel file
            object_column: Name of the column containing original JSON data
            new_data_column: Name of the column containing new JSON data
        """
        self.excel_file = excel_file
        self.object_column = object_column
        self.new_data_column = new_data_column
        self.df = None
        self.results = []
        self.error_rows = []
    
    def load_excel(self) -> bool:
        """
        Load the Excel file into a pandas DataFrame.
        
        Returns:
            bool: True if successful, False otherwise
        """
        try:
            self.df = pd.read_excel(self.excel_file)
            
            # Verify required columns exist
            if self.object_column not in self.df.columns:
                logger.error(f"Column '{self.object_column}' not found in the Excel file")
                return False
                
            if self.new_data_column not in self.df.columns:
                logger.error(f"Column '{self.new_data_column}' not found in the Excel file")
                return False
                
            logger.info(f"Successfully loaded Excel file with {len(self.df)} rows")
            return True
            
        except FileNotFoundError:
            logger.error(f"Excel file not found: {self.excel_file}")
            return False
        except InvalidFileException:
            logger.error(f"Invalid Excel file: {self.excel_file}")
            return False
        except Exception as e:
            logger.error(f"Error loading Excel file: {str(e)}")
            return False
    
    def parse_json(self, json_str: Any) -> Tuple[Optional[Dict], Optional[str]]:
        """
        Parse a JSON string with error handling.
        
        Args:
            json_str: String containing JSON data or already parsed JSON object
            
        Returns:
            Tuple containing:
                - Parsed JSON object or None if parsing failed
                - Error message or None if parsing succeeded
        """
        # If already a dict or None, return as is
        if isinstance(json_str, dict) or json_str is None:
            return json_str, None
            
        # If it's a pandas NA or NaN value
        if pd.isna(json_str):
            return None, "Empty JSON value"
            
        # Convert to string if not already
        if not isinstance(json_str, str):
            json_str = str(json_str)
        
        # First attempt: replace line breaks in the entire JSON string
        # This is simpler and avoids issues with complex regular expressions
        json_str_clean = json_str.replace('\n', '\\n').replace('\r', '\\r')
        
        # Try standard JSON parsing with the cleaned string
        try:
            return json.loads(json_str_clean), None
        except json.JSONDecodeError:
            pass
        
        # If that failed, try with the original JSON string
        try:
            return json.loads(json_str), None
        except json.JSONDecodeError:
            pass
            
        # Try cleaning the string and parsing again
        try:
            # Replace single quotes with double quotes
            cleaned_str = json_str_clean.replace("'", '"')
            
            # Handle unquoted keys
            import re
            cleaned_str = re.sub(r'(\w+):', r'"\1":', cleaned_str)
            
            # Try to fix invalid control characters
            cleaned_str = re.sub(r'[\x00-\x1F\x7F]', '', cleaned_str)
            
            return json.loads(cleaned_str), None
        except json.JSONDecodeError:
            # More aggressive attempt
            try:
                # Replace additional problematic characters
                problem_chars = {
                    '\n': '\\n',
                    '\r': '\\r',
                    '\t': '\\t',
                    '\b': '\\b',
                    '\f': '\\f',
                    '"': '\\"',
                    '\\': '\\\\'
                }
                
                # Apply all corrections
                cleaned_str = json_str
                for char, replacement in problem_chars.items():
                    cleaned_str = cleaned_str.replace(char, replacement)
                
                # Reemplazar comillas simples por dobles
                cleaned_str = cleaned_str.replace("'", '"')
                
                # Corregir llaves no balanceadas
                if cleaned_str.count('{') > cleaned_str.count('}'):
                    cleaned_str += '}' * (cleaned_str.count('{') - cleaned_str.count('}'))
                elif cleaned_str.count('{') < cleaned_str.count('}'):
                    cleaned_str = '{' * (cleaned_str.count('}') - cleaned_str.count('{')) + cleaned_str
                
                # Intentar parsear nuevamente
                return json.loads(cleaned_str), None
            except json.JSONDecodeError:
                # Último intento con ast.literal_eval
                try:
                    import ast
                    # Convertir a formato de diccionario Python
                    eval_str = json_str.replace('"', "'")
                    parsed = ast.literal_eval(eval_str)
                    if isinstance(parsed, dict):
                        return parsed, None
                    return None, "No se pudo convertir a diccionario"
                except Exception as e:
                    return None, f"JSON parsing error: {str(e)}"
            except Exception as e:
                return None, f"JSON parsing error: {str(e)}"
        except Exception as e:
            return None, f"JSON parsing error: {str(e)}"
    
    def compare_json(self, obj1: Dict, obj2: Dict) -> Dict:
        """
        Compare two JSON objects and identify differences.
        
        Args:
            obj1: First JSON object
            obj2: Second JSON object
            
        Returns:
            Dictionary containing difference information
        """
        try:
            diff = DeepDiff(obj1, obj2, ignore_order=True, report_repetition=True, verbose_level=2)
            return diff
        except Exception as e:
            logger.warning(f"Error comparing JSON objects: {str(e)}")
            return {"error": str(e)}
    
    def process_row(self, row_index: int, row: pd.Series) -> Dict:
        """
        Process a single row from the DataFrame.
        
        Args:
            row_index: Index of the row
            row: Row data
            
        Returns:
            Dictionary containing comparison results
        """
        result = {
            "row_index": row_index,
            "object_parsed": False,
            "new_data_parsed": False,
            "has_differences": False,
            "difference_summary": "",
            "marketing_content": "",  # New field for marketing content comparison
            "differences": {},
            "errors": []
        }
        
        # Check if new_data is empty before trying to parse
        new_data_empty = pd.isna(row.get(self.new_data_column)) or row.get(self.new_data_column) == "" or row.get(self.new_data_column) is None
        
        # Parse original object
        obj_json, obj_error = self.parse_json(row.get(self.object_column))
        if obj_error:
            result["errors"].append(f"Error parsing '{self.object_column}': {obj_error}")
        else:
            result["object_parsed"] = True
        
        # If new_data is empty, mark it as a special case
        if new_data_empty:
            result["new_data_parsed"] = False
            result["has_differences"] = result["object_parsed"]  # If object was parsed, there's a difference (object vs empty)
            result["difference_summary"] = "New data is empty" if result["object_parsed"] else "Both columns have errors"
            result["errors"].append(f"'{self.new_data_column}' is empty")
        else:
            # Parse new data object if not empty
            new_json, new_error = self.parse_json(row.get(self.new_data_column))
            if new_error:
                result["errors"].append(f"Error parsing '{self.new_data_column}': {new_error}")
            else:
                result["new_data_parsed"] = True
            
            # Compare if both were parsed successfully
            if result["object_parsed"] and result["new_data_parsed"]:
                differences = self.compare_json(obj_json, new_json)
                
                # Check for content-related fields and store their values
                content_fields = []
                content_related_fields = ['content', 'push_content', 'push_notification_content', 'sms_content']
                
                # Extract content fields from differences
                if differences:
                    # Check for content changes in values_changed
                    if 'values_changed' in differences:
                        for key, value in differences['values_changed'].items():
                            field_name = str(key).replace('root', '').strip('[]').strip("'").strip()
                            if any(content_field in field_name.lower() for content_field in content_related_fields):
                                content_fields.append({
                                    "field": field_name,
                                    "old": value['old_value'],
                                    "new": value['new_value']
                                })
                
                # Store marketing content comparison
                if content_fields:
                    content_comparison = []
                    for field in content_fields:
                        content_comparison.append(f"Field: {field['field']}\nOriginal: {field['old']}\nNew: {field['new']}")
                    result["marketing_content"] = "\n\n".join(content_comparison)
                
                if differences:
                    result["has_differences"] = True
                    result["differences"] = differences
                    
                    # Create a human-readable summary
                    summary_parts = []
                    
                    # Added items
                    if 'dictionary_item_added' in differences:
                        added = [str(item).replace("root", "") for item in differences['dictionary_item_added']]
                        summary_parts.append(f"Added: {', '.join(added[:5])}" + (" ..." if len(added) > 5 else ""))
                        
                    # Removed items
                    if 'dictionary_item_removed' in differences:
                        removed = [str(item).replace("root", "") for item in differences['dictionary_item_removed']]
                        summary_parts.append(f"Removed: {', '.join(removed[:5])}" + (" ..." if len(removed) > 5 else ""))
                        
                    # Changed values
                    if 'values_changed' in differences:
                        changed = [f"{str(k).replace('root', '')}: {str(v['old_value'])[:20]} → {str(v['new_value'])[:20]}" 
                                  for k, v in list(differences['values_changed'].items())[:5]]
                        summary_parts.append(f"Changed: {', '.join(changed)}" + (" ..." if len(differences['values_changed']) > 5 else ""))
                        
                    # Type changes
                    if 'type_changes' in differences:
                        type_changes = [f"{str(k).replace('root', '')}: {v['old_type']} → {v['new_type']}" 
                                       for k, v in list(differences['type_changes'].items())[:5]]
                        summary_parts.append(f"Type changes: {', '.join(type_changes)}" + (" ..." if len(differences['type_changes']) > 5 else ""))
                        
                    result["difference_summary"] = " | ".join(summary_parts)
                else:
                    result["difference_summary"] = "No differences found"
            elif result["object_parsed"] and not result["new_data_parsed"]:
                result["has_differences"] = True
                result["difference_summary"] = "Object parsed but new_data has errors"
            elif not result["object_parsed"] and result["new_data_parsed"]:
                result["has_differences"] = True
                result["difference_summary"] = "New data parsed but object has errors"
            else:
                result["difference_summary"] = "Could not compare due to parsing errors in both columns"
            
        return result
    
    def analyze(self) -> bool:
        """
        Analyze the Excel file and compare JSON data.
        
        Returns:
            bool: True if analysis completed, False otherwise
        """
        # Load Excel file
        if not self.load_excel():
            return False
            
        total_rows = len(self.df)
        logger.info(f"Loaded {total_rows} rows from {self.excel_file}")
        
        # Process each row
        for idx, row in self.df.iterrows():
            try:
                # Log progress every 100 rows
                if idx % 100 == 0 and idx > 0:
                    logger.info(f"Processed {idx} rows out of {total_rows}...")
                    
                # Process the row
                result = self.process_row(idx, row)
                self.results.append(result)
                
                # Log any errors
                if result["errors"]:
                    for error in result["errors"]:
                        logger.warning(f"Row {idx}: {error}")
                    
            except Exception as e:
                logger.error(f"Error processing row {idx}: {str(e)}")
                self.error_rows.append(idx)
                self.results.append({
                    "row_index": idx,
                    "object_parsed": False,
                    "new_data_parsed": False,
                    "has_differences": False,
                    "difference_summary": f"Error: {str(e)}",
                    "differences": {},
                    "errors": [f"Processing error: {str(e)}"]
                })
                
        logger.info(f"Analysis completed. Processed {total_rows} rows with {len(self.error_rows)} errors.")
        
        # Generate statistical summary
        self.generate_summary()
        
        return True
    
    def generate_summary(self):
        """
        Generate and log a summary of the comparison results.
        """
        total_rows = len(self.results)
        object_parsed = sum(1 for r in self.results if r.get("object_parsed", False))
        new_data_parsed = sum(1 for r in self.results if r.get("new_data_parsed", False))
        has_differences = sum(1 for r in self.results if r.get("has_differences", False))
        
        # Count rows with empty new_data
        empty_new_data = sum(1 for r in self.results if any("is empty" in err for err in r.get("errors", [])))
        
        # Count most common difference types
        diff_summaries = {}
        for r in self.results:
            summary = r.get("difference_summary", "")
            if summary:
                diff_summaries[summary] = diff_summaries.get(summary, 0) + 1
        
        # Get the top 5 most common types
        top_diffs = sorted(diff_summaries.items(), key=lambda x: x[1], reverse=True)[:5]
        
        # Print summary
        logger.info("\n" + "=" * 50)
        logger.info("ANALYSIS SUMMARY")
        logger.info("=" * 50)
        logger.info(f"Total rows analyzed: {total_rows}")
        logger.info(f"Rows with 'object' successfully parsed: {object_parsed} ({object_parsed/total_rows*100:.1f}%)")
        logger.info(f"Rows with 'new_data' successfully parsed: {new_data_parsed} ({new_data_parsed/total_rows*100:.1f}%)")
        logger.info(f"Rows with empty 'new_data': {empty_new_data} ({empty_new_data/total_rows*100:.1f}%)")
        logger.info(f"Rows with detected differences: {has_differences} ({has_differences/total_rows*100:.1f}%)")
        
        logger.info("\nMost common difference types:")
        for diff_type, count in top_diffs:
            logger.info(f"- {diff_type}: {count} rows ({count/total_rows*100:.1f}%)")

        
        logger.info("=" * 50)
    
    def save_results(self, output_file: str) -> bool:
        """
        Save analysis results to a file.
        
        Args:
            output_file: Path to the output file
            
        Returns:
            bool: True if successful, False otherwise
        """
        try:
            # Create a DataFrame from results
            results_df = pd.DataFrame([
                {
                    "row_index": r["row_index"],
                    "difference_summary": r.get("difference_summary", ""),
                    "marketing_content": r.get("marketing_content", ""),  # New column for marketing content
                    "object_parsed": r.get("object_parsed", False),
                    "new_data_parsed": r.get("new_data_parsed", False),
                    "has_differences": r.get("has_differences", False),
                    "errors": "; ".join(r.get("errors", [])) if r.get("errors") else ""
                }
                for r in self.results
            ])
            
            # Determine file format based on extension
            _, ext = os.path.splitext(output_file)
            
            if ext.lower() == '.xlsx':
                results_df.to_excel(output_file, index=False)
            else:
                # Default to CSV
                results_df.to_csv(output_file, index=False)
                
            logger.info(f"Results saved to {output_file}")
            return True
            
        except Exception as e:
            logger.error(f"Error saving results: {str(e)}")
            return False
    
    def generate_error_report(self) -> str:
        """
        Generate a report of rows with errors.
        
        Returns:
            str: Error report
        """
        if not self.error_rows:
            return "No errors encountered during processing."
            
        report = [f"Error Report: {len(self.error_rows)} rows had issues"]
        
        for idx in self.error_rows:
            result = next((r for r in self.results if r["row_index"] == idx), None)
            if result:
                errors = result.get("errors", ["Unknown error"])
                report.append(f"Row {idx}: {'; '.join(errors)}")
                
        return "\n".join(report)


def main():
    """Main function to run the script."""
    parser = argparse.ArgumentParser(description="Compare JSON data in Excel files")
    parser.add_argument("excel_file", help="Path to the Excel file")
    parser.add_argument("--object-column", default="object", help="Column name for original JSON data")
    parser.add_argument("--new-data-column", default="new_data", help="Column name for new JSON data")
    parser.add_argument("--output", default="comparison_results.xlsx", help="Output file path")
    
    args = parser.parse_args()
    
    logger.info(f"Starting JSON comparison for file: {args.excel_file}")
    
    tool = JSONComparisonTool(
        args.excel_file,
        object_column=args.object_column,
        new_data_column=args.new_data_column
    )
    
    if tool.analyze():
        tool.save_results(args.output)
        
        # Print error report
        error_report = tool.generate_error_report()
        logger.info(error_report)
        
        logger.info(f"Analysis complete. Results saved to {args.output}")
    else:
        logger.error("Analysis failed. Check the log for details.")
        sys.exit(1)


if __name__ == "__main__":
    main()

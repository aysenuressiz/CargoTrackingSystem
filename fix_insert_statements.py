#!/usr/bin/env python3
"""
Script to fix incorrect INSERT statements in insert-database.sql
Fixes the column order for Neighborhoods table INSERT statements
Handles both correct and incorrect formats to ensure consistency
"""

import re
import sys

def fix_insert_statements(input_file, output_file):
    """
    Fix INSERT statements for Neighborhoods table by correcting column order
    Handles both correct and incorrect formats to ensure consistency
    """
    try:
        with open(input_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Pattern to match incorrect INSERT statements for Neighborhoods
        # Matches: INSERT INTO Neighborhoods (neighborhood_name, postal_code, district_id) VALUES (...)
        incorrect_pattern = r'INSERT INTO Neighborhoods \(neighborhood_name, postal_code, district_id\) VALUES \((.*?)\);'
        
        # Pattern to match correct INSERT statements for Neighborhoods
        # Matches: INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES (...)
        correct_pattern = r'INSERT INTO Neighborhoods \(neighborhood_name, district_id, postal_code\) VALUES \((.*?)\);'
        
        def replace_incorrect_match(match):
            values = match.group(1)
            # Split the values and swap the second and third values
            parts = values.split(', ')
            if len(parts) >= 3:
                # Extract the values
                neighborhood_name = parts[0].strip("'")
                postal_code = parts[1].strip()
                district_id = parts[2].strip()
                
                # Create corrected INSERT statement
                corrected = f"INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('{neighborhood_name}', {district_id}, {postal_code});"
                return corrected
            return match.group(0)  # Return original if can't parse
        
        def replace_correct_match(match):
            values = match.group(1)
            # Split the values to verify they're in correct order
            parts = values.split(', ')
            if len(parts) >= 3:
                # Extract the values
                neighborhood_name = parts[0].strip("'")
                district_id = parts[1].strip()
                postal_code = parts[2].strip()
                
                # Return the same format (already correct)
                return f"INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES ('{neighborhood_name}', {district_id}, {postal_code});"
            return match.group(0)  # Return original if can't parse
        
        # First, replace incorrect statements
        corrected_content = re.sub(incorrect_pattern, replace_incorrect_match, content)
        
        # Then, ensure all correct statements are in the same format
        corrected_content = re.sub(correct_pattern, replace_correct_match, corrected_content)
        
        # Write corrected content to output file
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(corrected_content)
        
        print(f"Fixed INSERT statements written to: {output_file}")
        print("All Neighborhoods INSERT statements now use consistent column order:")
        print("INSERT INTO Neighborhoods (neighborhood_name, district_id, postal_code) VALUES (...)")
        print("Please review the corrected file before using it.")
        
    except FileNotFoundError:
        print(f"Error: Input file '{input_file}' not found.")
        sys.exit(1)
    except Exception as e:
        print(f"Error processing file: {e}")
        sys.exit(1)

def main():
    if len(sys.argv) != 3:
        print("Usage: python fix_insert_statements.py <input_file> <output_file>")
        print("Example: python fix_insert_statements.py insert-database.sql insert-database-fixed.sql")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    
    print(f"Fixing INSERT statements in: {input_file}")
    print(f"Output will be written to: {output_file}")
    print("This will ensure all Neighborhoods INSERT statements use consistent column order.")
    
    fix_insert_statements(input_file, output_file)

if __name__ == "__main__":
    main()

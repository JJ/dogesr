import pdfplumber
import re

# Open the PDF file
pdf_path = 'raines-families.pdf'

# Appendix 1 starts on page 58 and ends on page 63
start_page = 55
end_page = 63

data = []

def parse_date(date_str):
    date_str = date_str.strip()
    # Handle unknown dates starting with ?
    if date_str.startswith('?'):
        return "Unknown"
    # Handle "nel '300", "nel '400", etc.
    century_match = re.search(r"nel\s+'(\d+)", date_str)
    if century_match:
        return f"1{century_match.group(1)}"
    # Handle specific years (e.g., 1297)
    year_match = re.search(r"(\d{4})", date_str)
    if year_match:
        return year_match.group(1)
    return "Unknown"

with pdfplumber.open(pdf_path) as pdf:
    for i in range(57, 63):
        page = pdf.pages[i]
        text = page.extract_text()
        if not text: continue

        for line in text.split('\n'):
            # Remove page headers and appendix titles without skipping names
            if "Dorit Raines" in line: continue
            if "Appendice 1" in line:
                line = re.sub(r".*Appendice 1:.*?1797", "", line)

            # Improved Regex:
            # 1. Name: Uppercase words, supports brackets e.g. GABRIEL (CABRIEL)
            # 2. Date: Non-greedy match until the next Name or End of Line
            # 3. Dash: Supports hyphens (-), en-dashes (–), and em-dashes (—)
            pattern = r"([A-ZÀÈÌÒÙ ]+(?:\([A-ZÀÈÌÒÙ ]+\))?)\s+([\?\d\w\s',]+?)\s*[-–—]\s*([\?\d\w\s',]+?)(?=\s+[A-ZÀÈÌÒÙ]{2,}|$)"
            matches = re.findall(pattern, line)

            for m in matches:
                name = m[0].strip()
                admission_raw = m[1].strip()
                # (Apply your parse_date function here)
                data.append((name, admission_raw))

# Sort data alphabetically by family name
data.sort(key=lambda x: x[0])

# Output as CSV
print("Family Name,Initial Date of Admission")
for row in data:
    print(f"{row[0]},{row[1]}")

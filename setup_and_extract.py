import subprocess
import sys

# 1. Add Windows platform
print("=== Adding Windows Platform ===")
result = subprocess.run(
    ["flutter", "create", "--platforms", "windows", "."],
    capture_output=True, text=True, cwd=r"c:\Users\GAMER\Desktop\sukoyok"
)
print(result.stdout)
if result.stderr:
    print("STDERR:", result.stderr)

# 2. Install dependencies
print("\n=== Installing Dependencies ===")
result2 = subprocess.run(
    ["flutter", "pub", "get"],
    capture_output=True, text=True, cwd=r"c:\Users\GAMER\Desktop\sukoyok"
)
print(result2.stdout)
if result2.stderr:
    print("STDERR:", result2.stderr)

# 3. Extract PDF content
print("\n=== Extracting PDF Content ===")
try:
    import PyPDF2
except ImportError:
    subprocess.run([sys.executable, "-m", "pip", "install", "PyPDF2"], capture_output=True)
    import PyPDF2

import os
pdf_dir = r"c:\Users\GAMER\Desktop\sukoyok"
pdf_files = ["baglachavuzu1.pdf", "kelimehavuzu1.pdf", "kelimehavuzu2.pdf"]

for pdf_name in pdf_files:
    pdf_path = os.path.join(pdf_dir, pdf_name)
    if os.path.exists(pdf_path):
        print(f"\n--- {pdf_name} ---")
        try:
            with open(pdf_path, 'rb') as f:
                reader = PyPDF2.PdfReader(f)
                print(f"Pages: {len(reader.pages)}")
                for i, page in enumerate(reader.pages[:5]):  # First 5 pages
                    text = page.extract_text()
                    if text:
                        print(f"\nPage {i+1}:")
                        print(text[:2000])  # First 2000 chars per page
        except Exception as e:
            print(f"Error reading {pdf_name}: {e}")

print("\n=== Done ===")

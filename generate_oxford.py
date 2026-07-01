import urllib.request
import json
import time
import os
import random

# Oxford 3000 Kelimelerini ve Türkçe anlamlarını çekiyoruz
URL = "https://raw.githubusercontent.com/ibrahimaykutbas/the-oxford-dictionary/master/db.json"
OUTPUT_FILE = "assets/oxford3000_full.json"

def fetch_words():
    print("Oxford 3000 kelime veritabanı indiriliyor...")
    req = urllib.request.Request(URL)
    with urllib.request.urlopen(req) as response:
        data = json.loads(response.read().decode())
    return data

def generate_medical_example(word):
    # Sağlık alanı için bazı taslak örnek cümleler
    templates = [
        f"The patient's condition was assessed in terms of {word}.",
        f"Recent medical studies focus heavily on the impact of {word}.",
        f"Doctors must carefully monitor the {word} during the treatment.",
        f"An accurate understanding of {word} is crucial for accurate diagnosis.",
        f"Clinical trials have shown that {word} plays a vital role in recovery.",
        f"The new therapy aims to target {word} effectively.",
        f"It is important to evaluate {word} before prescribing medication."
    ]
    return random.choice(templates)

def process_data(data):
    print("Kelimeler işleniyor ve YÖKDİL Sağlık formatına dönüştürülüyor...")
    vocab_list = []
    
    # Github deposundaki db.json yapısı {'a': [...], 'b': [...]} şeklindedir
    for letter, items in data.items():
        if isinstance(items, list):
            for item in items:
                english = item.get("english", "").strip()
                turkish = item.get("turkish", "").strip()
                
                if not english or not turkish:
                    continue
                
                # Seviyeyi rastgele B1 veya B2 yapalım (Tümü YÖKDİL odaklı)
                category = "Oxford B1 Seviyesi" if random.random() > 0.4 else "Oxford B2 Seviyesi"
                
                example = generate_medical_example(english)
                
                vocab_list.append({
                    "english": english,
                    "turkish": turkish,
                    "category": category,
                    "example": example,
                    "synonyms": [],
                    "collocations": []
                })
                
    return vocab_list

def main():
    if not os.path.exists('assets'):
        os.makedirs('assets')
        
    try:
        data = fetch_words()
        vocab_list = process_data(data)
        
        print(f"Toplam {len(vocab_list)} kelime başarıyla işlendi!")
        
        with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
            json.dump(vocab_list, f, ensure_ascii=False, indent=2)
            
        print(f"Harika! Bütün kelimeler {OUTPUT_FILE} dosyasına kaydedildi.")
        print("Şimdi sadece Flutter uygulamanızı yenileyin (Hot Reload).")
        
    except Exception as e:
        print(f"Bir hata oluştu: {e}")

if __name__ == "__main__":
    main()

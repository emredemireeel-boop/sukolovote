import re
import json

def parse_exam(input_file, output_file):
    with open(input_file, 'r', encoding='utf-8') as f:
        text = f.read()

    # Find questions using regex: number. Question text A) B) C) D) E)
    pattern = re.compile(r'(\d+)\.\s*(.*?)(A\).*?B\).*?C\).*?D\).*?E\).*?)(?=\d+\.|$)', re.DOTALL)
    
    questions = []
    
    for match in pattern.finditer(text):
        q_num = match.group(1)
        q_text = match.group(2).strip()
        options_text = match.group(3).strip()
        
        # We need to skip the instructional texts like 1.-20. sorularda...
        if 'sorularda,' in q_text or 'soruları aşağıda' in q_text:
            continue
            
        # Parse options
        opt_pattern = re.compile(r'A\)(.*?)\s*B\)(.*?)\s*C\)(.*?)\s*D\)(.*?)\s*E\)(.*)', re.DOTALL)
        opt_match = opt_pattern.search(options_text)
        
        if opt_match:
            options = [
                opt_match.group(1).strip(),
                opt_match.group(2).strip(),
                opt_match.group(3).strip(),
                opt_match.group(4).strip(),
                opt_match.group(5).strip()
            ]
            
            # Determine question type heuristically
            q_type = "Gramer/Kelime"
            if int(q_num) <= 20:
                q_type = "Kelime/Gramer"
            elif int(q_num) <= 30:
                q_type = "Cloze Test"
            elif int(q_num) <= 41:
                q_type = "Cümle Tamamlama"
            elif int(q_num) <= 47:
                q_type = "Çeviri (İng-Tür)"
            elif int(q_num) <= 53:
                q_type = "Çeviri (Tür-İng)"
            elif int(q_num) <= 59:
                q_type = "Paragraf Tamamlama"
            elif int(q_num) <= 65:
                q_type = "Anlamı Bozan Cümle"
            elif int(q_num) <= 80:
                q_type = "Paragraf Sorusu"
                
            questions.append({
                'number': int(q_num),
                'type': q_type,
                'question': q_text,
                'options': options,
                'correctIndex': 0, # Placeholder
                'explanation': 'Çözüm bekleniyor.' # Placeholder
            })
            
    # Remove instructions from question text
    for q in questions:
        q_text = q['question']
        # e.g., "1.-20. sorularda, cümlede boş bırakılan yerlere uygun düşen sözcük ya da ifadeyi bulunuz."
        q_text = re.sub(r'^\d+\.-\d+\.\s*sorularda.*?\.\s*', '', q_text)
        q['question'] = q_text

    # Write to dart
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write("import 'mock_exams_data.dart';\n\n")
        f.write("final List<ExamQuestion> exam2026 = [\n")
        
        for q in questions:
            opts_str = ", ".join([f"'{o.replace(chr(39), chr(92)+chr(39))}'" for o in q['options']])
            q_text_escaped = q['question'].replace(chr(39), chr(92)+chr(39)).replace('\n', ' ')
            f.write("  const ExamQuestion(\n")
            f.write(f"    number: {q['number']},\n")
            f.write(f"    type: '{q['type']}',\n")
            f.write(f"    question: '{q_text_escaped}',\n")
            f.write(f"    options: [{opts_str}],\n")
            f.write(f"    correctIndex: {q['correctIndex']},\n")
            f.write(f"    explanation: '{q['explanation']}',\n")
            f.write("  ),\n")
        
        f.write("];\n")

if __name__ == '__main__':
    parse_exam('scratch_2026.txt', 'lib/data/mock_exam_2026.dart')

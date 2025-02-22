import json
import re


def convert_text_to_json(input_text, required_keys=["Q", "A"]):
    """Converts a text input to a JSON object, and checks if it contains the required keys.
    """
    try:
        json_data = json.loads(input_text)
        if all(key in json_data for key in required_keys):
            return json_data
        else:
            raise
    except json.JSONDecodeError:
        print('Fail to convert text to json', input_text)
        return None
    
    
def preprocess_answer_yes_no(answer):
    """Preprocesses the answer from a Vision-Language Model (VLM) output
    to extract and clean Yes/No answers.
    """
    
    answer = answer.strip().lower()

    yes_no_patterns = {
        "yes": r"\byes\b",
        "no": r"\bno\b"
    }
    
    if re.search(yes_no_patterns["yes"], answer):
        return "Yes"
    elif re.search(yes_no_patterns["no"], answer):
        return "No"
    return None
    

def preprocess_answer(answer: str) -> str:
    """Preprocesses the answer from a Vision-Language Model (VLM) output
    to extract and clean ABCD answers.
    
    Args:
    - answer (str): The raw output from the VLM model.

    Returns:
    - str: The cleaned answer (A, B, C, or D).
    """
    answer = answer.strip().lower()
    
    choice_patterns = {
        "A": r"\b(a|option a)\b",
        "B": r"\b(b|option b)\b",
        "C": r"\b(c|option c)\b",
        "D": r"\b(d|option d)\b"
    }
    
    for choice, pattern in choice_patterns.items():
        if re.search(pattern, answer):
            return choice
    
    return ""
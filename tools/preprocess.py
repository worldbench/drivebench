## Delete the number of images based on the question

import json
import re
import sys
from typing import List, Dict


def extract_camera_names(question: str) -> List[str]:
    """
    Extracts camera names from patterns like <c1,CAM_BACK,0.5073,0.5778> in the question.

    Args:
        question (str): The question string to search.

    Returns:
        List[str]: A list of extracted camera names.
    """
    # Regex pattern to match <c1,CAM_BACK,0.5073,0.5778>
    pattern = r'<[^,]+,([^,]+),[^>]+>'
    return re.findall(pattern, question)


def filter_images(images: List[str], camera_names: List[str]) -> List[str]:
    """
    Filters the list of image paths to include only those that match the specified camera names.

    Args:
        images (List[str]): The original list of image paths.
        camera_names (List[str]): The list of camera names to retain.

    Returns:
        List[str]: The filtered list of image paths.
    """
    filtered = []
    for img in images:
        for cam in camera_names:
            if f"/{cam}/" in img:
                filtered.append(img)
                break  # Avoid adding the same image multiple times if multiple cams match
    return filtered


def process_json(data: List[Dict]) -> List[Dict]:
    """
    Processes the JSON data by filtering images based on camera names extracted from questions.

    Args:
        data (List[Dict]): The list of dictionaries to process.

    Returns:
        List[Dict]: The processed list of dictionaries.
    """
    for entry in data:
        question = entry.get("question", "")
        camera_names = extract_camera_names(question)
        if camera_names:
            # Remove duplicates by converting to a set
            unique_cameras = list(set(camera_names))
            # Filter images based on extracted camera names
            entry["image_path"] = {cam: path for cam, path in entry.get("image_path", {}).items() if cam in unique_cameras}
    return data


def main(input_file: str, output_file: str):
    """
    Main function to read input JSON, process it, and write to output JSON.

    Args:
        input_file (str): Path to the input JSON file.
        output_file (str): Path to the output JSON file.
    """
    try:
        with open(input_file, 'r', encoding='utf-8') as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"Error: The file {input_file} was not found.")
        sys.exit(1)
    except json.JSONDecodeError as e:
        print(f"Error decoding JSON: {e}")
        sys.exit(1)

    processed_data = process_json(data)

    try:
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(processed_data, f, indent=4)
        print(f"Processed data has been written to {output_file}")
    except IOError as e:
        print(f"Error writing to file {output_file}: {e}")
        sys.exit(1)


if __name__ == "__main__":

    if len(sys.argv) != 3:
        print("Usage: python preprocess.py <input_json_file> <output_json_file>")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    main(input_file, output_file)
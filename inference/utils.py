import re
from typing import List


def replace_system_prompt(prompt: str, image_paths: List[str]) -> str:
    """
    Replaces the specific sentence in the system prompt to reflect only the provided camera images.

    Args:
        prompt (str): The original system prompt containing the sentence to be replaced.
        image_paths (List[str]): A list of image file paths corresponding to different cameras.

    Returns:
        str: The updated system prompt with the specified sentence adjusted to include only the available cameras.
    """
    # Order of cameras
    camera_order = [
        "CAM_FRONT",
        "CAM_FRONT_LEFT",
        "CAM_FRONT_RIGHT",
        "CAM_BACK",
        "CAM_BACK_LEFT",
        "CAM_BACK_RIGHT"
    ]

    # Assumes camera name is the directory name after 'samples/'
    camera_pattern = r'samples/([^/]+)/'

    # Extract camera names from image paths
    extracted_cameras = []
    for path in image_paths:
        match = re.search(camera_pattern, path)
        if match:
            camera_name = match.group(1)
            if camera_name in camera_order:
                extracted_cameras.append(camera_name)
            else:
                raise ValueError(f"Unrecognized camera name '{camera_name}' in path '{path}'.")
        else:
            raise ValueError(f"Unable to extract camera name from path '{path}'.")

    # Remove duplicates while preserving order
    unique_cameras = []
    seen = set()
    for cam in extracted_cameras:
        if cam not in seen:
            unique_cameras.append(cam)
            seen.add(cam)

    ordered_cameras = [cam for cam in camera_order if cam in unique_cameras]

    if not ordered_cameras:
        raise ValueError("No valid camera images provided.")
    else:
        cameras_str = ", ".join(ordered_cameras)
        if len(ordered_cameras) == 1:
            new_sentence = f"You are provided with a single camera image: [{cameras_str}]."
        else:
            new_sentence = f"You are provided with {len(ordered_cameras)} camera images in the sequence [{cameras_str}]."

    # Define the original sentence to be replaced
    original_sentence_pattern = r"You are provided with up to six camera images in the sequence \[CAM_FRONT, CAM_FRONT_LEFT, CAM_FRONT_RIGHT, CAM_BACK, CAM_BACK_LEFT, CAM_BACK_RIGHT\]\."

    updated_prompt, num_subs = re.subn(original_sentence_pattern, new_sentence, prompt)

    if num_subs == 0:
        print("Warning: Original sentence not found in the prompt. No replacement made.")

    return updated_prompt
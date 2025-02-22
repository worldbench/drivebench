# Get Started

## Inference

Run the following command to perform inference of LLaVA:

```bash
. env.sh
bash script/llava1.5-7b.sh <gpu_num>
```

The results will be saved into json files. The inference script for more models will be added soon.

## Evaluation

Run the following command to evaluate the performance:

```bash
. env.sh
python evaluate/eval.py <json_file> --key <openai_key> --eval-gpt
```

The json file should have the format below:

```json
[
    {
        "scene_token": "209e9e9c3a2e4a399c44b6aa8be659d6",
        "frame_token": "672026f4880e440da4aff8367d289745",
        "question_type": "perception",
        "question": "What is the moving status of object <c2,CAM_BACK,0.7229,0.5620>? Please select the correct answer from the following options: A. Going ahead. B. Turn left. C. Turn right.",
        "answer": "A",
        "tag": [
            0
        ],
        "pred": " A. Going ahead."
    },
    ...
]
```
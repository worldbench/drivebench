# Data Preparation


## Download

First download the text data and image data from the following links:

| Data  |    Link      |
|-------|--------------|
| Text  | [<img src="https://huggingface.co/front/assets/huggingface_logo.svg" alt="Hugging Face" width="20"> HuggingFace](https://huggingface.co/datasets/drive-bench/arena) |
| Image | <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Google_Drive_icon_%282020%29.svg/1024px-Google_Drive_icon_%282020%29.svg.png" alt="Google Drive" width="20"> [Google Drive](https://drive.google.com/file/d/1_MqbX1oXH9S55eC0r_rZvvaoAD5GVOyW/view?usp=share_link) |

Then create the `data` folder and organize the data as follows:

```
data/
├── nuscenes/
│   └── samples/
├── corruption/
│   ├── BitError/
│   ├── Bright/
│   ├── CameraCrash/
│   └── ...
├── drivebench-test.json
├── biterror.json
├── bright.json
└── camcrash.json
```

## Preprocess

Preprocess the data by running the following command:

```bash
python tools/preprocess.py data/drivebench-test.json data/drivebench-test-final.json
```
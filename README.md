<p align="right">English | <a href="./README_CN.md">简体中文</a></p>  


<p align="center">
  <h3 align="center">  
    <img src="docs/figs/icons/human.png" align="center" width="5%">
    <strong>Are VLMs Ready for Autonomous Driving?<br>An Empirical Study from the Reliability, Data, and Metric Perspectives</strong>
  </h3>

  <p align="center">
      <a href="https://daniel-xsy.github.io/" target='_blank'>Shaoyuan Xie</a><sup>1</sup>&nbsp;&nbsp;&nbsp;
      <a href="https://ldkong.com/" target='_blank'>Lingdong Kong</a><sup>2,3</sup>&nbsp;&nbsp;&nbsp;
      <a href="https://scholar.google.com/citations?user=kMui170AAAAJJ&hl=en" target='_blank'>Yuhao Dong</a><sup>2,4</sup>&nbsp;&nbsp;&nbsp;
      <a href="https://scholar.google.com/citations?user=dgYJ6esAAAAJJ&hl=en" target='_blank'>Chonghao Sima</a><sup>2,6</sup>&nbsp;&nbsp;&nbsp;<br>
      <a href="https://scholar.google.com/citations?user=QDXADSEAAAAJJ&hl=en" target='_blank'>Wenwei Zhang</a><sup>2</sup>&nbsp;&nbsp;&nbsp;
      <a href="https://ics.uci.edu/~alfchen/" target='_blank'>Qi Alfred Chen</a><sup>1</sup>&nbsp;&nbsp;&nbsp;
      <a href="https://liuziwei7.github.io/" target='_blank'>Ziwei Liu</a><sup>4</sup>&nbsp;&nbsp;&nbsp;
      <a href="https://scholar.google.com/citations?user=lSDISOcAAAAJJ&hl=en" target='_blank'>Liang Pan</a><sup>2</sup>
    </br></br>
  <sup>1</sup>University of California, Irvine&nbsp;&nbsp;&nbsp;
  <sup>2</sup>Shanghai AI Laboratory&nbsp;&nbsp;&nbsp;
  <sup>3</sup>National University of Singapore&nbsp;&nbsp;&nbsp;
  <sup>4</sup>S-Lab, Nanyang Technological University&nbsp;&nbsp;&nbsp;
  <sup>5</sup>The University of Hong Kong
  </p>
</p>

<p align="center">
  <a href="" target='_blank'>
    <img src="https://img.shields.io/badge/Paper-%F0%9F%93%83-lightblue">
  </a>&nbsp;
  <a href="https://drive-bench.github.io/" target='_blank'>
    <img src="https://img.shields.io/badge/Project-%F0%9F%94%97-blue">
  </a>&nbsp;
  <a href="https://huggingface.co/datasets/drive-bench/arena" target='_blank'>
    <img src="https://img.shields.io/badge/Dataset-%F0%9F%8E%AC-pink">
  </a>&nbsp;
  <a >
    <img src="https://img.shields.io/badge/%E4%B8%AD%E8%AF%91%E7%89%88-%F0%9F%90%BC-red">
  </a>&nbsp;
  <a href="https://hits.seeyoufarm.com">
    <img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fdrive-bench%2Ftoolkit&count_bg=%2300B48B&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=Visitors&edge_flat=false"/>
  </a>
</p>


## About

| ![drivebench](./docs/figs/bench.png) |
|:-|
| - We introduce :blue_car: **DriveBench**, a benchmark dataset designed to evaluate VLM reliability across **17 settings** (clean, corrupted, and text-only inputs), encompassing **19,200 frames**, **20,498 question-answer pairs**, **three question types**, **four mainstream driving tasks**, and **a total of 12 popular VLMs**. 
| - Our findings reveal that VLMs often generate plausible responses derived from general knowledge or textual cues rather than true visual grounding, especially under degraded or missing visual inputs. This behavior, concealed by dataset imbalances and insufficient evaluation metrics, poses significant risks in safety-critical scenarios like autonomous driving. 
| - We further observe that VLMs struggle with multi-modal reasoning and display heightened sensitivity to input corruptions, leading to inconsistencies in performance. To address these challenges, we propose refined evaluation metrics that prioritize robust visual grounding and multi-modal understanding. Additionally, we highlight the potential of leveraging VLMs’ awareness of corruptions to enhance their reliability, offering a roadmap for developing more trustworthy and interpretable decision-making systems in real-world autonomous driving contexts. 



## :memo: Updates
- \[2025.01\] The evaluation data can be accessible at our [HuggingFace Dataset Card](https://huggingface.co/datasets/drive-bench/arena). :hugs:
- \[2025.01\] Introducing the :blue_car: **DriveBench** project! For more details, kindly refer to our [Project Page](https://drive-bench.github.io/) and [Preprint](). :rocket:


# Table of Content
- [Installation](#gear-installation)
- [Benchmark Comparison](#bar_chart-benchmark-comparison)
- [Data Preparation](#hotsprings-data-preparation)
- [Getting Started](#rocket-getting-started)
- [Benchmark Results](#aerial_tramway-benchmark-results)
- [Citation](#citation)
- [License](#license)
- [Acknowledgements](#acknowledgements)


## :gear: Installation

Will be updated soon.


## :bar_chart: Benchmark Comparison

<table>
<thead>
  <tr>
    <th rowspan="2">Benchmark</th>
    <th rowspan="2"><img src="./docs/figs/icons/perception.png" style="width: 40px; height: 40px; vertical-align: top;"><span>Perception</span></th>
    <th rowspan="2"><img src="./docs/figs/icons/prediction.png" style="width: 40px; height: 40px; vertical-align: top;"><span>Prediction</span></th>
    <th rowspan="2"><img src="./docs/figs/icons/behavior.png" style="width: 40px; height: 40px; vertical-align: top;"><span>Behavior</span></th>
    <th rowspan="2"><img src="./docs/figs/icons/planning.png" style="width: 40px; height: 40px; vertical-align: top;"><span>Planning</span></th>
    <th rowspan="2"><img src="./docs/figs/icons/robustness.png" style="width: 40px; height: 40px; vertical-align: top;"><span>Robustness</span></th>
    <th>Frames</th>
    <th>QA</th>
    <th rowspan="2">Logic</th>
    <th rowspan="2">Evaluation Metrics</th>
  </tr>
  <tr>
    <th>(Test)</th>
    <th>(Test)</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
  </tr>
  <tr>
    <td>BDD-X</td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td>-</td>
    <td>-</td>
    <td>None</td>
    <td>Language</td>
  </tr>
  <tr>
    <td>BDD-OIA</td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td>-</td>
    <td>-</td>
    <td>None</td>
    <td>F1 Score</td>
  </tr>
  <tr>
    <td>nuScenes-QA</td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td>36,114</td>
    <td>83,337</td>
    <td>None</td>
    <td>Acc</td>
  </tr>
  <tr>
    <td>Talk2Car</td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td>~1.8k</td>
    <td>2,447</td>
    <td>None</td>
    <td>-</td>
  </tr>
  <tr>
    <td>nuPrompt</td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td>~36k</td>
    <td>~6k</td>
    <td>None</td>
    <td>AMOTA</td>
  </tr>
  <tr>
    <td>DRAMA</td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td>-</td>
    <td>~14k</td>
    <td>Chain</td>
    <td>Language</td>
  </tr>
  <tr>
    <td>Rank2Tel</td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td>-</td>
    <td>-</td>
    <td>Chain</td>
    <td>Accuracy, Language</td>
  </tr>
  <tr>
    <td>DirveMLLM</td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td>880</td>
    <td>-</td>
    <td>None</td>
    <td>Acc</td>
  </tr>
  <tr>
    <td>DriveVLM</td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td>-</td>
    <td>-</td>
    <td>None</td>
    <td>GPT<sub>ctx</sub></td>
  </tr>
  <tr>
    <td>DriveLM</td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(192, 0, 0);">✘</span></td>
    <td>4,794</td>
    <td>15,480</td>
    <td>Graph</td>
    <td>Language, GPT</td>
  </tr>
  <tr>
    <td><strong><span style="font-family: 'Nunito', sans-serif; color: rgb(66, 133, 244);">Drive</span><span style="font-family: 'Nunito', sans-serif; color: rgb(192, 0, 0);">Bench</span> (Ours)</strong></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><span style="color: rgb(0, 176, 80);">✔</span></td>
    <td><b>19,200</b></td>
    <td><b>20,498</b></td>
    <td><b>Graph</b></td>
    <td><b>Acc, Language, GPT, GPT<sub>ctx</sub></b></td>
  </tr>
</tbody>     
</table>


## :hotsprings: Data Preparation

Will be updated soon.


## :rocket: Getting Started

Will be updated soon.


## :aerial_tramway: Benchmark Results

### 

| **Model**                          | **Size**       | **Type**       | **Perception (Clean)** | **Perception (Corr.)** | **Perception (T.O.)** | **Prediction (Clean)** | **Prediction (Corr.)** | **Prediction (T.O.)** | **Planning (Clean)** | **Planning (Corr.)** | **Planning (T.O.)** | **Behavior (Clean)** | **Behavior (Corr.)** | **Behavior (T.O.)** |
|:-|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| Human                               | -              | -              | 47.67                  | 38.32                  | -                      | -                      | -                      | -                      | -                     | -                     | -                     | 69.51                | 54.09                | -                     |
| GPT-4o                              | -              | Commercial     | 35.37                  | 35.25                  | 36.48                  | 51.30                  | 49.94                  | 49.05                  | 75.75                | 75.36                | 73.21                | 45.40                | 44.33                | 50.03                |
| LLaVA-1.5 | 7B | Open           | 23.22                  | 22.95                  | 22.31                  | 22.02                  | 17.54                  | 14.64                  | 29.15                | 31.51                | 32.45                | 13.60                | 13.62                | 14.91                |
| LLaVA-1.5 | 13B | Open           | 23.35                  | 23.37                  | 22.37                  | 36.98                  | 37.78                  | 23.98                  | 34.26                | 34.99                | 38.85                | 32.99                | 32.43                | 32.79                |
| LLaVA-NeXT | 7B | Open           | 24.15                  | 19.62                  | 13.86                  | 35.07                  | 35.89                  | 28.36                  | 45.27                | 44.36                | 27.58                | 48.16                | 39.44                | 11.92                |
| InternVL2 | 8B      | Open           | 32.36                  | 32.68                  | 33.60                  | 45.52                  | 37.93                  | 48.89                  | 53.27                | 55.25                | 34.56                | 54.58                | 40.78                | 20.14                |
| Phi-3                               | 4.2B    | Open           | 22.88                  | 23.93                  | 28.26                  | 40.11                  | 37.27                  | 22.61                  | 60.03                | 61.31                | 46.88                | 45.20                | 44.57                | 28.22                |
| Phi-3.5                             | 4.2B    | Open           | 27.52                  | 27.51                  | 28.26                  | 45.13                  | 38.21                  | 4.92                   | 31.91                | 28.36                | 46.30                | 37.89                | 49.13                | 39.16                |
| Oryx                                | 7B      | Open           | 17.02                  | 15.97                  | 18.47                  | 48.13                  | 46.63                  | 12.77                  | 53.57                | 55.76                | 48.26                | 33.92                | 33.81                | 23.94                |
| Qwen2-VL | 7B | Open           | 28.99                  | 27.85                  | 35.16                  | 37.89                  | 39.55                  | 37.77                  | 57.04                | 54.78                | 41.66                | 49.07                | 47.68                | 54.48                |
| Qwen2-VL | 72B | Open           | 30.13                  | 26.92                  | 17.70                  | 49.35                  | 43.49                  | 5.57                   | 61.30                | 63.07                | 53.35                | 51.26                | 49.78                | 39.46                |
| DriveLM                             | 7B      | Specialist     | 16.85                  | 16.00                  | 8.75                   | 44.33                  | 39.71                  | 4.70                   | 68.71                | 67.60                | 65.24                | 42.78                | 40.37                | 27.83                |
| Dolphins                            | 7B      | Specialist     | 9.59                   | 10.84                  | 11.01                  | 32.66                  | 29.88                  | 39.98                  | 52.91                | 53.77                | 60.98                | 8.81                 | 8.25                 | 11.92                |



## Citation
If you find this work helpful, please kindly consider citing our paper:
```bibtex
@article{xie2025drivebench,
  author  = {Xie, Shaoyuan and Kong, Lingdong and Dong, Yuhao and Sima, Chonghao and Zhang, Wenwei and Chen, Qi Alfred and Liu, Ziwei and Pan, Liang},
  title   = {Are VLMs Ready for Autonomous Driving? An Empirical Study from the Reliability, Data, and Metric Perspectives},
  journal = {arXiv preprint arXiv:2501.},
  year    = {2025},
}
```


## License

This work is under the [Apache License Version 2.0](https://www.apache.org/licenses/LICENSE-2.0), while some specific implementations in this codebase might be with other licenses. Kindly refer to [LICENSE.md]() for a more careful check, if you are using our code for commercial matters.


## Acknowledgements

To be updated.



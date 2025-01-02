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
  </a>
  <a href="https://drive-bench.github.io/" target='_blank'>
    <img src="https://img.shields.io/badge/Project-%F0%9F%94%97-blue">
  </a>
  <a href="https://huggingface.co/datasets/drive-bench/arena" target='_blank'>
    <img src="https://img.shields.io/badge/Dataset-%F0%9F%8E%AC-pink">
  </a>
  <a href="" target='_blank'>
    <img src="https://img.shields.io/badge/%E4%B8%AD%E8%AF%91%E7%89%88-%F0%9F%90%BC-red">
  </a>
  <a href="https://hits.seeyoufarm.com">
    <img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fdrive-bench%2Ftoolkit&count_bg=%2300B48B&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=Visitors&edge_flat=false"/>
  </a>
</p>


## About

Vision-Language Models (VLMs) are gaining traction in autonomous driving for their potential to provide interpretable decisions via natural language. However, their reliability and visual grounding remain unexamined. We introduce **DriveBench**, a benchmark to evaluate VLMs across 17 settings, 12 models, and 5 tasks. Our study shows VLMs often generate plausible but unreliable responses, especially with degraded inputs. We propose improved metrics and highlight the need for better dataset and metric designs to ensure trustworthy decision-making in autonomous driving.


## Updates

- [2025/01/01]: Launch of the :blue_car: **DriveBench** project! Check out more details in our [technical report](). :rocket:


## Outline

- [About](#about)
- [Installation](#gear-installation)
- [Data Preparation](#hotsprings-data-preparation)
- [Getting Started](#rocket-getting-started)
- [Benchmark](#bar_chart-benchmark)
- [Citation](#citation)
- [License](#license)
- [Acknowledgements](#acknowledgements)


## :gear: Installation

Will be updated soon.


## :hotsprings: Data Preparation

Will be updated soon.


## :rocket: Getting Started

Will be updated soon.


## :bar_chart: Benchmark

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

```


## License

This work is under the [Apache License Version 2.0](https://www.apache.org/licenses/LICENSE-2.0), while some specific implementations in this codebase might be with other licenses. Kindly refer to [LICENSE.md]() for a more careful check, if you are using our code for commercial matters.


## Acknowledgements

To be updated.



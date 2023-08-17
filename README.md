# LoLLMa 
$^{\text{ Lockett's local LLM AI}}$

---

This project was borne out of an anecdotal observation of a decline in ChatGPT's ability to extract the latent questions present in an ambiguous prompt. It aims to host and manage multiple large language models utilizing a robust hardware configuration, including a 4080 16GB GPU and an Intel Core i9-13900K CPU and 128GB RAM. 

The purpose of this repository is to offer begginners guide to handling local LLMs that integrates various models, training methods, and size configurations.

The information is specifically tailored to data enthusiasts, researchers, and hobbyists who want to explore the potentials of large language models and need guidance in setting up the required environment.


##  Installation 

Various utilities and step-by-step guides that I relied on for installing and configuring the necessary software and libraries:

* **Utilities**
  * [Anaconda 3](https://www.anaconda.com/download) allows you to keep your LLM dependencies in a sandbox to avoid conficts and can be a simpler implementation of Python for beginners. _Be sure to check the option to install conda variables into the PATH_. Several dependencies specific to this conda environment are included in this [setup](./environment.yml) file.
  * [KoboldCPP](https://github.com/LostRuins/koboldcpp) is a relatively simple interface that allows you to select custom options and provides an HTML chat interface.
* **Models**
    * Learning
    * Chat
    * Coding

* **Guides**
  * [Analytics Vidhya](https://www.analyticsvidhya.com/blog/2023/07/build-your-own-large-language-models/) provides an article that does a decent job explaining LLM's and their pracitcal usage. "The no. of tokens used to train LLM should be 20 times more than the no. of parameters of the model. "
  * [Hardware requirements](https://blog.eleuther.ai/transformer-math/) are difficult to define, but this article trys to get you started thinking about the math, while making the my single gpu laughable.
  * A [reddit user](https://www.reddit.com/r/singularity/comments/144th3k/incredibly_simple_guide_to_run_language_models/) provided a **straightforward start-up guide**. There are a lot of places where you can fail setting up and this was the first successful installation of a chatbot I had.
  * [HuggingFace](https://huggingface.co/docs/transformers/perf_train_gpu_one#anatomy-of-models-memory) demonstrates **how to train** the base models. provides a useful guide that focuses on training large models efficiently on a single GPU.



### Models
### Troubleshoot
- Troubleshooting common issues.

### Models

A comprehensive overview of various large language models, including:

- Model architectures.
- Use cases.
- Integration with existing frameworks.

### Training Methods

Explore different approaches to training models:

- Pre-processing of data.
- Fine-tuning strategies.
- Best practices in model evaluation.

### Size Considerations

Guidance on working with models of varying sizes:

- Memory management.
- Scalability considerations.
- Tools and techniques for optimization.

## Conclusion

This documentation seeks to serve as a foundational guide for anyone looking to explore and experiment with large language models on a specified hardware setup. It offers a hands-on approach to understanding the complex dynamics of hosting and training these models, making it an indispensable resource for data hobbyists.

Feel free to reach out with any questions, suggestions, or feedback on how this documentation can be further improved.

---

This revised version includes a clear structure, explains the project's purpose, defines the target audience, and organizes the information into well-defined sections for better readability.
---

## Installation guides

Below are various resources used throughout installation:


** **


*




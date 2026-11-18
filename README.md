# XAI Project (2026/27) — Project P9: Does a Language Model Use a Concept, or Merely Encode It?

## Overview
This repository contains the ongoing work for the **Explainable Artificial Intelligence (XAI)** course project (Academic Year 2026/27) at the **University of Padua**, supervised by Prof. Roberto Confalonieri.

The goal of this project is to investigate **Project P9 (Advanced)**: *Does a language model use a concept, or merely encode it?* 

We aim to explore the distinction between **concept decodability** (detecting a concept within a model's latent activations using probes like TCAV) and **predictive reliance/causal influence** (testing whether the model actively uses the encoded concept for its final predictions, or if it relies on lexical shortcuts/accidental correlations).

## Project Details & Scope
* **Course:** Explainable Artificial Intelligence (XAI)
* **Project ID:** P9 (Advanced Track)
* **Status:** Initial draft / Exploratory stage

## Authors & Team Members
* **Riccardo Stefani** - 2185068
* **Marco Diotto** - 2185069

---

## How to Run (Local Setup)
1. Create virtual enviroment:
   ```bash
   python -m venv venv
   venv/scripts/activate (or source/bin/activate)
   ```
2. Install required dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Follow the instructions commented in `requirements.txt` to ensure you have PyTorch installed with GPU/CUDA support.
4. Run the Jupyter Notebooks contained in the repo:  
   Press `Select kernel -> venv`, and then run the notebook cells.
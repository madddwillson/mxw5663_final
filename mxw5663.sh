#!/bin/bash


# Load necessary modules
module load Anaconda3/2020.11


# Create a new conda virtual environment
conda create -n  mxw5663_final python=3.7


# Activate the new virtual environment
source activate mxw5663_final

# Install sparktorch 
pip install git+https://github.com/dmmiller612/sparktorch.git


# Download the dataset
wget -O mnist_train.csv https://raw.githubusercontent.com/dmmiller612/sparktorch/master/examples/mnist_train.csv


# Train the deep CNN using sparktorch
python train_cnn.py --num-executors 4 --executor-cores 4 --executor-memory 8G


# Provide the GitHub repository link for the git clone
git clone https://github.com/madddwillson/mxw5663_final.git

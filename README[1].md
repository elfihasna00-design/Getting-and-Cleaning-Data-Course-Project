# Getting and Cleaning Data Course Project

This repository contains the files for the Coursera course project of
"Getting and Cleaning Data".

## Files in this repository

1. run_analysis.R  
   An R script that:
   - Downloads the dataset
   - Merges training and test datasets
   - Extracts only measurements on the mean and standard deviation
   - Uses descriptive activity names
   - Labels the dataset with descriptive variable names
   - Creates a second tidy dataset with the average of each variable
     for each activity and each subject

2. tidy_dataset.txt  
   A tidy dataset that contains the average of each variable for each
   activity and each subject.

## Dataset

The original dataset is the Human Activity Recognition Using Smartphones Dataset
from the UCI Machine Learning Repository:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## How to run the script

Run the following command in R:

source("run_analysis.R")

This will generate the file tidy_dataset.txt in the working directory.
# Getting and Cleaning Data Course Project

This repository was built for **"Peer-graded Assignment: Getting and Cleaning Data Course Project"** from 
the "Getting and Cleaning Data" course at Coursera.

## Project Requirements

The purpose of this project is to show how to collect, work with, and clean a data set.

The goal of this project is to create a tidy data, using R, that can be used for later analysis. The source dataset is obtained from the UCI Machine Learning Repository using  a study built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The R script called `run_analysis.R` should be run on the [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) collected from the accelerometers from the Samsung Galaxy S smartphone. This script should transform the data following the next steps:

 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names. 
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Repository Information

This repository contains 4 files:

 - `README.md`.
 - `run_analysis.R` - the R script used to collect, work with, and clean a data set.
 - `CodeBook.md` - describes the variables, the data, and any transformations performed to clean up the data. It contains the definitions of each of the columns in our generated `tidy_data_set.txt` file.
 - `tidy_data_set.txt` - is the final output file after running the `run_analysis.R` R script.

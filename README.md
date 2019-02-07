# Coursera *Getting and Cleaning Data* course project

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.

In this project, data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone was retrieved, read and cleaned, to prepare a tidy data set that is readily available for later analysis.

This repository contains the following files:

- `README.md`, this file provides an overview of the files within the dataset and their source
- `tidy_data.txt`, contains the processed data set
- `CodeBook.md`, the code book, which describes the contents of the data set (data, variables and transformations used to generate the data).
- `run_analysis.R`, the R script that was used to create the data set (see the [Creating the data set](#creating-data-set) section below) 

# Study design <a name="study-design"></a>

The data this project is based on was obtained from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#). The data was obtained as follows:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

# Creating the data set <a name="creating-data-set"></a>

The R script `run_analysis.R` can be used to source data, clean data and produce a final tidy data set by the following steps:

1) Download and unzip data from source if it doesn't already exist.
2) Merge the training and the test sets into one data frame
3) Extract only the measurements on the mean and standard deviation for each measurement.
4) Use descriptive activity names to name the activities in the data set.
5) Label the data set with descriptive variable names.
6) Create an independent tidy set with the mean of each variable for each activity and each subject.
7) Write the data set to the `tidy_data.txt` file.

The `tidy_data.txt` in this repository was created by running the `run_analysis.R` script using R version 3.5.2 (2018-12-20) on MacOS Mojave Version 10.14.2.

The `dplyr` package (version 0.7.8) was used for this script.
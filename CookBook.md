## Code Book

This document describes the output data and the process that was used to derive the data. It provides minimal information about the source data that was used as well.

### Source Data
The original source data was downloaded from [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

A snippet of information about the data from that website is provided below. For details, please refer to the website.
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Source data download location: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Files used from source
* `features.txt`: Names of the features.
* `activity_labels.txt`: Names and IDs for described activities.
* `X_train.txt`: Observations for 21 volunteers.
* `subject_train.txt`: Mapping volunteers to observations in `X_train.txt`.
* `y_train.txt`: Mapping activity to observations in `X_train.txt`.
* `X_test.txt`: Observations for 9 volunteers.
* `subject_test.txt`: Mapping volunteers to observations in `X_test.txt`.
* `y_test.txt`: Mapping activity to observations in `X_test.txt`.

Other files containing raw data in directory `Inertial Signals` were not used.

### Process
* Load the features and activity labels files
* Identify the features of interest (Anything that has mean or sd in the name)
* Read the test files (3) into data tables
* Apply appropriate heades to the test files (all 3)
* Merge columns of the 3 test files
* Repeat the process done on test files to training files
* Merge the test and training files (rows)
* Aggregate the merged files based on subject and activity and compute mean of all columns
* Write the aggregated file as a CSV
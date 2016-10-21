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

### List of variables used in the generated dataset
* `subject` - ID number of the subject
* `activity_label` - Descriptive name of the activity
* `tBodyAcc-mean()-X`
* `tBodyAcc-std()-X`
* `tGravityAcc-mean()-X`
* `tGravityAcc-std()-X`
* `tBodyAccJerk-mean()-X`
* `tBodyAccJerk-std()-X`
* `tBodyGyro-mean()-X`
* `tBodyGyro-std()-X`
* `tBodyGyroJerk-mean()-X`
* `tBodyGyroJerk-std()-X`
* `tBodyAccMag-mean()`
* `tGravityAccMag-std()`
* `tBodyGyroMag-mean()`
* `tBodyGyroJerkMag-std()`
* `fBodyAcc-mean()-Z`
* `fBodyAcc-std()-Z`
* `fBodyAcc-meanFreq()-Z`
* `fBodyAccJerk-mean()-Z`
* `fBodyAccJerk-std()-Z`
* `fBodyAccJerk-meanFreq()-Z`
* `fBodyGyro-mean()-Z`
* `fBodyGyro-std()-Z`
* `fBodyGyro-meanFreq()-Z`
* `fBodyAccMag-meanFreq()`
* `fBodyBodyAccJerkMag-meanFreq()`
* `fBodyBodyGyroMag-meanFreq()`
* `fBodyBodyGyroJerkMag-meanFreq()`
* `tBodyAcc-mean()-Y`
* `tBodyAcc-std()-Y`
* `tGravityAcc-mean()-Y`
* `tGravityAcc-std()-Y`
* `tBodyAccJerk-mean()-Y`
* `tBodyAccJerk-std()-Y`
* `tBodyGyro-mean()-Y`
* `tBodyGyro-std()-Y`
* `tBodyGyroJerk-mean()-Y`
* `tBodyGyroJerk-std()-Y`
* `tBodyAccMag-std()`
* `tBodyAccJerkMag-mean()`
* `tBodyGyroMag-std()`
* `fBodyAcc-mean()-X`
* `fBodyAcc-std()-X`
* `fBodyAcc-meanFreq()-X`
* `fBodyAccJerk-mean()-X`
* `fBodyAccJerk-std()-X`
* `fBodyAccJerk-meanFreq()-X`
* `fBodyGyro-mean()-X`
* `fBodyGyro-std()-X`
* `fBodyGyro-meanFreq()-X`
* `fBodyAccMag-mean()`
* `fBodyBodyAccJerkMag-mean()`
* `fBodyBodyGyroMag-mean()`
* `fBodyBodyGyroJerkMag-mean()`
* `tBodyAcc-mean()-Z`
* `tBodyAcc-std()-Z`
* `tGravityAcc-mean()-Z`
* `tGravityAcc-std()-Z`
* `tBodyAccJerk-mean()-Z`
* `tBodyAccJerk-std()-Z`
* `tBodyGyro-mean()-Z`
* `tBodyGyro-std()-Z`
* `tBodyGyroJerk-mean()-Z`
* `tBodyGyroJerk-std()-Z`
* `tGravityAccMag-mean()`
* `tBodyAccJerkMag-std()`
* `tBodyGyroJerkMag-mean()`
* `fBodyAcc-mean()-Y`
* `fBodyAcc-std()-Y`
* `fBodyAcc-meanFreq()-Y`
* `fBodyAccJerk-mean()-Y`
* `fBodyAccJerk-std()-Y`
* `fBodyAccJerk-meanFreq()-Y`
* `fBodyGyro-mean()-Y`
* `fBodyGyro-std()-Y`
* `fBodyGyro-meanFreq()-Y`
* `fBodyAccMag-std()`
* `fBodyBodyAccJerkMag-std()`
* `fBodyBodyGyroMag-std()`
* `fBodyBodyGyroJerkMag-std()`
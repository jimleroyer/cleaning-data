# Code book on tidy data 

This code book explains the data found in the `tidy_data.csv`.

## Information on Experimental Source Study

The source data set comes from a study named *Human Activity Recognition Using Smartphones Data Set*. A full description of the original data set can be found at [this link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The original data set was downloaded from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). The original description is as follows:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Data Dictionary

 * Column 1: `subject`: Participant ID of the study, from 1 to 30. 
 * Column 2: `activity`: Activity label applied on each row of the tidy data, represents the activity performed by the participant for the given recorded metrics. 
   * `walking`, 
   * `walking_upstairs`, 
   * `walking_downstairs`, 
   * `sitting`, 
   * `standing`, 
   * `laying`. 
 * Column 3: `tBodyAcc.std...X`
 * Column 4: `tBodyAcc.std...Y`
 * Column 5: `tBodyAcc.std...Z`
 * Column 6: `tGravityAcc.std...X`
 * Column 7: `tGravityAcc.std...Y`
 * Column 8: `tGravityAcc.std...Z`
 * Column 9: `tBodyAccJerk.std...X`
 * Column 10: `tBodyAccJerk.std...Y`
 * Column 11: `tBodyAccJerk.std...Z`
 * Column 12: `tBodyGyro.std...X`
 * Column 13: `tBodyGyro.std...Y`
 * Column 14: `tBodyGyro.std...Z`
 * Column 15: `tBodyGyroJerk.std...X`
 * Column 16: `tBodyGyroJerk.std...Y`
 * Column 17: `tBodyGyroJerk.std...Z`
 * Column 18: `tBodyAccMag.std..`
 * Column 19: `tGravityAccMag.std..`
 * Column 20: `tBodyAccJerkMag.std..`
 * Column 21: `tBodyGyroMag.std..`
 * Column 22: `tBodyGyroJerkMag.std..`
 * Column 23: `fBodyAcc.std...X`
 * Column 24: `fBodyAcc.std...Y`
 * Column 25: `fBodyAcc.std...Z`
 * Column 26: `fBodyAccJerk.std...X`
 * Column 27: `fBodyAccJerk.std...Y`
 * Column 28: `fBodyAccJerk.std...Z`
 * Column 29: `fBodyGyro.std...X`
 * Column 30: `fBodyGyro.std...Y`
 * Column 31: `fBodyGyro.std...Z`
 * Column 32: `fBodyAccMag.std..`
 * Column 33: `fBodyBodyAccJerkMag.std..`
 * Column 34: `fBodyBodyGyroMag.std..`
 * Column 35: `fBodyBodyGyroJerkMag.std..`
 * Column 36: `tBodyAcc.mean...X`
 * Column 37: `tBodyAcc.mean...Y`
 * Column 38: `tBodyAcc.mean...Z`
 * Column 39: `tGravityAcc.mean...X`
 * Column 40: `tGravityAcc.mean...Y`
 * Column 41: `tGravityAcc.mean...Z`
 * Column 42: `tBodyAccJerk.mean...X`
 * Column 43: `tBodyAccJerk.mean...Y`
 * Column 44: `tBodyAccJerk.mean...Z`
 * Column 45: `tBodyGyro.mean...X`
 * Column 46: `tBodyGyro.mean...Y`
 * Column 47: `tBodyGyro.mean...Z`
 * Column 48: `tBodyGyroJerk.mean...X`
 * Column 49: `tBodyGyroJerk.mean...Y`
 * Column 50: `tBodyGyroJerk.mean...Z`
 * Column 51: `tBodyAccMag.mean..`
 * Column 52: `tGravityAccMag.mean..`
 * Column 53: `tBodyAccJerkMag.mean..`
 * Column 54: `tBodyGyroMag.mean..`
 * Column 55: `tBodyGyroJerkMag.mean..`
 * Column 56: `fBodyAcc.mean...X`
 * Column 57: `fBodyAcc.mean...Y`
 * Column 58: `fBodyAcc.mean...Z`
 * Column 59: `fBodyAcc.meanFreq...X`
 * Column 60: `fBodyAcc.meanFreq...Y`
 * Column 61: `fBodyAcc.meanFreq...Z`
 * Column 62: `fBodyAccJerk.mean...X`
 * Column 63: `fBodyAccJerk.mean...Y`
 * Column 64: `fBodyAccJerk.mean...Z`
 * Column 65: `fBodyAccJerk.meanFreq...X`
 * Column 66: `fBodyAccJerk.meanFreq...Y`
 * Column 67: `fBodyAccJerk.meanFreq...Z`
 * Column 68: `fBodyGyro.mean...X`
 * Column 69: `fBodyGyro.mean...Y`
 * Column 70: `fBodyGyro.mean...Z`
 * Column 71: `fBodyGyro.meanFreq...X`
 * Column 72: `fBodyGyro.meanFreq...Y`
 * Column 73: `fBodyGyro.meanFreq...Z`
 * Column 74: `fBodyAccMag.mean..`
 * Column 75: `fBodyAccMag.meanFreq..`
 * Column 76: `fBodyBodyAccJerkMag.mean..`
 * Column 77: `fBodyBodyAccJerkMag.meanFreq..`
 * Column 78: `fBodyBodyGyroMag.mean..`
 * Column 79: `fBodyBodyGyroMag.meanFreq..`
 * Column 80: `fBodyBodyGyroJerkMag.mean..`
 * Column 81: `fBodyBodyGyroJerkMag.meanFreq..`
 * Column 82: `angle.tBodyAccMean.gravity.`
 * Column 83: `angle.tBodyAccJerkMean..gravityMean.`
 * Column 84: `angle.tBodyGyroMean.gravityMean.`
 * Column 85: `angle.tBodyGyroJerkMean.gravityMean.`
 * Column 86: `angle.X.gravityMean.`
 * Column 87: `angle.Y.gravityMean.`
 * Column 88: `angle.Z.gravityMean.`

Columns 3 to 88 represents means and standard deviations for metrics recorded by the *Human Activity Recognition* study. 

## Summary Choices

The represented data follows a "wide format" that respects the rules of tidy data:

1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table

Hence segregated data that were in different files are now in the same file containing several rows for each observation of subject, performed activity and associated metrics for the observation. These latter columns are properly identified and their values are in human redable format.  

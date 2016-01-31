# Getting and Cleaning Data Project Codebook.
_Beraldo Leal_

## Dataset

 - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The steps taken in order to filter such dataset were:

1. Download data;
1. Unzip data;
1. Read test data features;
1. Read test data subject data;
1. Build the test dataset;
1. Read train set data;
1. Read train data features;
1. Read train data subject data;
1. Build the train dataset;
1. Merge the trainning and test datasets;
1. Replace Feature code with activity name;
1. Filter only __mean__ and __std__ columns;
1. Agregate dataset using __feature__ and __subject__ columns;
1. Write output.

## Variables

We filtered the original dataset calculating each variable average value then
grouping them by subject (```subject``` column) and activity(```feature```
column).

The following variables have each 3 readings (one for each axis - X,Y,Z)

1. tBodyAcc-mean
1. tBodyAcc-std
1. tGravityAcc-mean
1. tGravityAcc-std
1. tBodyAccJerk-mean
1. tBodyAccJerk-std
1. tBodyGyro-mean
1. tBodyGyro-std
1. tBodyGyroJerk-mean
1. tBodyGyroJerk-std
1. fBodyAcc-mean
1. fBodyAcc-std
1. fBodyAccJerk-mean
1. fBodyAccJerk-std
1. fBodyGyro-mean
1. fBodyGyro-std


The following variables only count with a single value

1. tBodyAccMag-mean
1. tBodyAccMag-std
1. tGravityAccMag-mean
1. tGravityAccMag-std
1. tBodyAccJerkMag-mean
1. tBodyAccJerkMag-std
1. tBodyGyroMag-mean
1. tBodyGyroMag-std
1. tBodyGyroJerkMag-mean
1. tBodyGyroJerkMag-std
1. fBodyAccMag-mean
1. fBodyAccMag-std
1. fBodyBodyAccJerkMag-mean
1. fBodyBodyAccJerkMag-std
1. fBodyBodyGyroMag-mean
1. fBodyBodyGyroMag-std
1. fBodyBodyGyroJerkMag-mean
1. fBodyBodyGyroJerkMag-std

We groupped all cases using two variables:

1. feature: one of the following:
    1. LAYING
    1. SITTING
    1. STANDING
    1. WALKING
    1. WALKING_DOWNSTAIRS
    1. WALKING_UPSTAIRS
1.  subject: 1-30 individuals;

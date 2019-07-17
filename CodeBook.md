# Data dictionary of the Getting and Cleaning Data assignment
## Introduction
The dataset is composed of 88 variables.
The first two variables indicate the subject ID and the activity.

The remaining variables are floating-point numbers that represent the mean of 86 measurements obtained from the Human Activity Recognition Using Smartphones Data Set. These 86 variables are a subset of the original 561 and were selected because the measurement name contained the text "Mean", "mean", "Std" or "std".

[Click here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) to get more information about the experiment and the measurements.


## Variables details

* SubjectID: 1:30
  * ID of the subject performing the experiment
* Activity: String
  * Activity performed by the subject. Possible values are:
    * WALKING
    * WALKING_UPSTAIRS
    * WALKING_DOWNSTAIRS
    * SITTING
    * STANDING
    * LAYING
* time_BodyAcc_mean_X: floating-point
    * mean of measurement tBodyAcc-mean()-X
* time_BodyAcc_mean_Y: floating-point
    * mean of measurement tBodyAcc-mean()-Y
* time_BodyAcc_mean_Z: floating-point
    * mean of measurement tBodyAcc-mean()-Z
* time_BodyAcc_std_X: floating-point
    * mean of measurement tBodyAcc-std()-X
* time_BodyAcc_std_Y: floating-point
    * mean of measurement tBodyAcc-std()-Y
* time_BodyAcc_std_Z: floating-point
    * mean of measurement tBodyAcc-std()-Z
* time_GravityAcc_mean_X: floating-point
    * mean of measurement tGravityAcc-mean()-X
* time_GravityAcc_mean_Y: floating-point
    * mean of measurement tGravityAcc-mean()-Y
* time_GravityAcc_mean_Z: floating-point
    * mean of measurement tGravityAcc-mean()-Z
* time_GravityAcc_std_X: floating-point
    * mean of measurement tGravityAcc-std()-X
* time_GravityAcc_std_Y: floating-point
    * mean of measurement tGravityAcc-std()-Y
* time_GravityAcc_std_Z: floating-point
    * mean of measurement tGravityAcc-std()-Z
* time_BodyAccJerk_mean_X: floating-point
    * mean of measurement tBodyAccJerk-mean()-X
* time_BodyAccJerk_mean_Y: floating-point
    * mean of measurement tBodyAccJerk-mean()-Y
* time_BodyAccJerk_mean_Z: floating-point
    * mean of measurement tBodyAccJerk-mean()-Z
* time_BodyAccJerk_std_X: floating-point
    * mean of measurement tBodyAccJerk-std()-X
* time_BodyAccJerk_std_Y: floating-point
    * mean of measurement tBodyAccJerk-std()-Y
* time_BodyAccJerk_std_Z: floating-point
    * mean of measurement tBodyAccJerk-std()-Z
* time_BodyGyro_mean_X: floating-point
    * mean of measurement tBodyGyro-mean()-X
* time_BodyGyro_mean_Y: floating-point
    * mean of measurement tBodyGyro-mean()-Y
* time_BodyGyro_mean_Z: floating-point
    * mean of measurement tBodyGyro-mean()-Z
* time_BodyGyro_std_X: floating-point
    * mean of measurement tBodyGyro-std()-X
* time_BodyGyro_std_Y: floating-point
    * mean of measurement tBodyGyro-std()-Y
* time_BodyGyro_std_Z: floating-point
    * mean of measurement tBodyGyro-std()-Z
* time_BodyGyroJerk_mean_X: floating-point
    * mean of measurement tBodyGyroJerk-mean()-X
* time_BodyGyroJerk_mean_Y: floating-point
    * mean of measurement tBodyGyroJerk-mean()-Y
* time_BodyGyroJerk_mean_Z: floating-point
    * mean of measurement tBodyGyroJerk-mean()-Z
* time_BodyGyroJerk_std_X: floating-point
    * mean of measurement tBodyGyroJerk-std()-X
* time_BodyGyroJerk_std_Y: floating-point
    * mean of measurement tBodyGyroJerk-std()-Y
* time_BodyGyroJerk_std_Z: floating-point
    * mean of measurement tBodyGyroJerk-std()-Z
* time_BodyAccMag_mean: floating-point
    * mean of measurement tBodyAccMag-mean()
* time_BodyAccMag_std: floating-point
    * mean of measurement tBodyAccMag-std()
* time_GravityAccMag_mean: floating-point
    * mean of measurement tGravityAccMag-mean()
* time_GravityAccMag_std: floating-point
    * mean of measurement tGravityAccMag-std()
* time_BodyAccJerkMag_mean: floating-point
    * mean of measurement tBodyAccJerkMag-mean()
* time_BodyAccJerkMag_std: floating-point
    * mean of measurement tBodyAccJerkMag-std()
* time_BodyGyroMag_mean: floating-point
    * mean of measurement tBodyGyroMag-mean()
* time_BodyGyroMag_std: floating-point
    * mean of measurement tBodyGyroMag-std()
* time_BodyGyroJerkMag_mean: floating-point
    * mean of measurement tBodyGyroJerkMag-mean()
* time_BodyGyroJerkMag_std: floating-point
    * mean of measurement tBodyGyroJerkMag-std()
* freq_BodyAcc_mean_X: floating-point
    * mean of measurement fBodyAcc-mean()-X
* freq_BodyAcc_mean_Y: floating-point
    * mean of measurement fBodyAcc-mean()-Y
* freq_BodyAcc_mean_Z: floating-point
    * mean of measurement fBodyAcc-mean()-Z
* freq_BodyAcc_std_X: floating-point
    * mean of measurement fBodyAcc-std()-X
* freq_BodyAcc_std_Y: floating-point
    * mean of measurement fBodyAcc-std()-Y
* freq_BodyAcc_std_Z: floating-point
    * mean of measurement fBodyAcc-std()-Z
* freq_BodyAcc_meanFreq_X: floating-point
    * mean of measurement fBodyAcc-meanFreq()-X
* freq_BodyAcc_meanFreq_Y: floating-point
    * mean of measurement fBodyAcc-meanFreq()-Y
* freq_BodyAcc_meanFreq_Z: floating-point
    * mean of measurement fBodyAcc-meanFreq()-Z
* freq_BodyAccJerk_mean_X: floating-point
    * mean of measurement fBodyAccJerk-mean()-X
* freq_BodyAccJerk_mean_Y: floating-point
    * mean of measurement fBodyAccJerk-mean()-Y
* freq_BodyAccJerk_mean_Z: floating-point
    * mean of measurement fBodyAccJerk-mean()-Z
* freq_BodyAccJerk_std_X: floating-point
    * mean of measurement fBodyAccJerk-std()-X
* freq_BodyAccJerk_std_Y: floating-point
    * mean of measurement fBodyAccJerk-std()-Y
* freq_BodyAccJerk_std_Z: floating-point
    * mean of measurement fBodyAccJerk-std()-Z
* freq_BodyAccJerk_meanFreq_X: floating-point
    * mean of measurement fBodyAccJerk-meanFreq()-X
* freq_BodyAccJerk_meanFreq_Y: floating-point
    * mean of measurement fBodyAccJerk-meanFreq()-Y
* freq_BodyAccJerk_meanFreq_Z: floating-point
    * mean of measurement fBodyAccJerk-meanFreq()-Z
* freq_BodyGyro_mean_X: floating-point
    * mean of measurement fBodyGyro-mean()-X
* freq_BodyGyro_mean_Y: floating-point
    * mean of measurement fBodyGyro-mean()-Y
* freq_BodyGyro_mean_Z: floating-point
    * mean of measurement fBodyGyro-mean()-Z
* freq_BodyGyro_std_X: floating-point
    * mean of measurement fBodyGyro-std()-X
* freq_BodyGyro_std_Y: floating-point
    * mean of measurement fBodyGyro-std()-Y
* freq_BodyGyro_std_Z: floating-point
    * mean of measurement fBodyGyro-std()-Z
* freq_BodyGyro_meanFreq_X: floating-point
    * mean of measurement fBodyGyro-meanFreq()-X
* freq_BodyGyro_meanFreq_Y: floating-point
    * mean of measurement fBodyGyro-meanFreq()-Y
* freq_BodyGyro_meanFreq_Z: floating-point
    * mean of measurement fBodyGyro-meanFreq()-Z
* freq_BodyAccMag_mean: floating-point
    * mean of measurement fBodyAccMag-mean()
* freq_BodyAccMag_std: floating-point
    * mean of measurement fBodyAccMag-std()
* freq_BodyAccMag_meanFreq: floating-point
    * mean of measurement fBodyAccMag-meanFreq()
* freq_BodyBodyAccJerkMag_mean: floating-point
    * mean of measurement fBodyBodyAccJerkMag-mean()
* freq_BodyBodyAccJerkMag_std: floating-point
    * mean of measurement fBodyBodyAccJerkMag-std()
* freq_BodyBodyAccJerkMag_meanFreq: floating-point
    * mean of measurement fBodyBodyAccJerkMag-meanFreq()
* freq_BodyBodyGyroMag_mean: floating-point
    * mean of measurement fBodyBodyGyroMag-mean()
* freq_BodyBodyGyroMag_std: floating-point
    * mean of measurement fBodyBodyGyroMag-std()
* freq_BodyBodyGyroMag_meanFreq: floating-point
    * mean of measurement fBodyBodyGyroMag-meanFreq()
* freq_BodyBodyGyroJerkMag_mean: floating-point
    * mean of measurement fBodyBodyGyroJerkMag-mean()
* freq_BodyBodyGyroJerkMag_std: floating-point
    * mean of measurement fBodyBodyGyroJerkMag-std()
* freq_BodyBodyGyroJerkMag_meanFreq: floating-point
    * mean of measurement fBodyBodyGyroJerkMag-meanFreq()
* angle(tBodyAccMean,gravity): floating-point
    * mean of measurement angle(tBodyAccMean,gravity)
* angle(tBodyAccJerkMean),gravityMean): floating-point
    * mean of measurement angle(tBodyAccJerkMean),gravityMean)
* angle(tBodyGyroMean,gravityMean): floating-point
    * mean of measurement angle(tBodyGyroMean,gravityMean)
* angle(tBodyGyroJerkMean,gravityMean): floating-point
    * mean of measurement angle(tBodyGyroJerkMean,gravityMean)
* angle(X,gravityMean): floating-point
    * mean of measurement angle(X,gravityMean)
* angle(Y,gravityMean): floating-point
    * mean of measurement angle(Y,gravityMean)
* angle(Z,gravityMean): floating-point
    * mean of measurement angle(Z,gravityMean)


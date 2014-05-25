#Code Book For Tidy Data Study

## Contents
1. Input Files
2. Variables
3. Output Files


##1. Input Files
 The following file are used by the run_analysis() script as input.
 
File | File Path | File Description
--- | --- | ---
train data|"UCI HAR Dataset/train/X_train.txt" | Contains 561 variables per row  for the TRAIN subjects
 test data|"UCI HAR Dataset/test/X_test.txt" | Contains 561 variables for per row the TEST subjects
 train activities|"UCI HAR Dataset/train/y_train.txt"| Contains an activity code for each row in the train data file 
 test activities|"UCI HAR Dataset/test/y_test.txt" |Contains an activity code for each row in the test data file
train subjects|"UCI HAR Dataset/train/subject_train.txt| Contains a subject number (1:30) fro each row in the train data file
 test subjects|"UCI HAR Dataset/test/subject_test.txt" | Contains a subject number (1:30) fro each row in the test data file
 activity labels|"UCI HAR Dataset/activity_labels.txt" | Contains the descriptive labels for the activity codes


##2. Variables
        

The raw data set contains 561 variables.  We are only using the mean and standard deviation in our study.  The following is a list of the variables that are extracted from the original data.  We also rename the variables to more meaningful names.  The variable list contains the original name (preceded by feature number) and the new name that is assigned to the variable.

We selected the following 73 feature variables.

The feature variables selected are only for mean and std measures.

The variable names in the output files were changed to be more meningful.

 
Feature Number | Original Variable Name | New Variable Name 
--- | --- | ---
1| tBodyAcc-mean()-X |         BodyAccelerationDirectionXTimeMean
2| tBodyAcc-mean()-Y |         BodyAccelerationDirectionYTimeMean
3| tBodyAcc-mean()-Z |         BodyAccelerationDirectionZTimeMean
4| tBodyAcc-std()-X |          BodyAccelerationDirectionXTimeSdev
5| tBodyAcc-std()-Y |          BodyAccelerationDirectionYTimeSdev
6| tBodyAcc-std()-Z |          BodyAccelerationDirectionZTimeSdev
41| tGravityAcc-mean()-X |     GravityAccelerationDirectionXTimeMean
42| tGravityAcc-mean()-Y |     GravityAccelerationDirectionYTimeMean
43| tGravityAcc-mean()-Z |     GravityAccelerationDirectionZTimeMean
44| tGravityAcc-std()-X |      GravityAccelerationDirectionXTimeSdev
45| tGravityAcc-std()-Y |      GravityAccelerationDirectionYTimeSdev
46| tGravityAcc-std()-Z |      GravityAccelerationDirectionZTimeSdev
81| tBodyAccJerk-mean()-X|     BodyAccelerationJerkDirectionXTimeMean
82| tBodyAccJerk-mean()-Y |    BodyAccelerationJerkDirectionYTimeMean
83| tBodyAccJerk-mean()-Z  |   BodyAccelerationJerkDirectionZTimeMean
84| tBodyAccJerk-std()-X |     BodyAccelerationJerkDirectionXTimeSdev
85| tBodyAccJerk-std()-Y |     BodyAccelerationJerkDirectionYTimeSdev
86| tBodyAccJerk-std()-Z |     BodyAccelerationJerkDirectionZTimeSdev
121| tBodyGyro-mean()-X  |     BodyGyroDirectionXTimeMean
122| tBodyGyro-mean()-Y |      BodyGyroDirectionYTimeMean
123| tBodyGyro-mean()-Z |      BodyGyroDirectionZTimeMean
124| tBodyGyro-std()-X  |      BodyGyroDirectionXTimeSdev
125| tBodyGyro-std()-Y  |      BodyGyroDirectionYTimeSdev
126| tBodyGyro-std()-Z  |      BodyGyroDirectionZTimeSdev
161| tBodyGyroJerk-mean()-X |  BodyGyroJerkDirectionXTimeMean
162| tBodyGyroJerk-mean()-Y |  BodyGyroJerkDirectionYTimeMean
163| tBodyGyroJerk-mean()-Z |  BodyGyroJerkDirectionZTimeMean
164| tBodyGyroJerk-std()-X|BodyGyroJerkDirectionXTimeSdev
165| tBodyGyroJerk-std()-Y|BodyGyroJerkDirectionYTimeSdev
166| tBodyGyroJerk-std()-Z|BodyGyroJerkDirectionZTimeSdev
201| tBodyAccMag-mean()| BodyAccelerationMagnitudeTimeMean
202| tBodyAccMag-std()|BodyAccelerationMagnitudeTimeSdev
214| tGravityAccMag-mean()|GravityAccelerationMagnitudeTimeMean
215| tGravityAccMag-std()|GravityAccelerationMagnitudeTimeSdev
227| tBodyAccJerkMag-mean()|BodyAccelerationJerkMagnitudeTimeMean
228| tBodyAccJerkMag-std()|BodyAccelerationJerkMagnitudeTimeSdev
240| tBodyGyroMag-mean()|BodyGyroMagnitudeTimeMean
241| tBodyGyroMag-std()|BodyGyroMagnitudeTimeSdev
253| tBodyGyroJerkMag-mean()|BodyGyroJerkMagnitudeTimeMean
254| tBodyGyroJerkMag-std()|BodyGyroJerkMagnitudeTimeSdev
266| fBodyAcc-mean()-X|BodyAccelerationDirectionXFreqMean
267| fBodyAcc-mean()-Y|BodyAccelerationDirectionYFreqMean
268| fBodyAcc-mean()-Z|BodyAccelerationDirectionZFreqMean
269| fBodyAcc-std()-X|BodyAccelerationDirectionXFreqSdev
270| fBodyAcc-std()-Y|BodyAccelerationDirectionYFreqSdev
271| fBodyAcc-std()-Z|BodyAccelerationDirectionZFreqSdev
345| fBodyAccJerk-mean()-X|BodyAccelerationJerkDirectionXFreqMean
346| fBodyAccJerk-mean()-Y|BodyAccelerationJerkDirectionYFreqMean
347| fBodyAccJerk-mean()-Z|BodyAccelerationJerkDirectionZFreqMean
348| fBodyAccJerk-std()-X|BodyAccelerationJerkDirectionXFreqSdev
349| fBodyAccJerk-std()-Y|BodyAccelerationJerkDirectionYFreqSdev
350| fBodyAccJerk-std()-Z|BodyAccelerationJerkDirectionZFreqSdev
424| fBodyGyro-mean()-X|BodyGyroDirectionXFreqMean
425| fBodyGyro-mean()-Y|BodyGyroDirectionYFreqMean
426| fBodyGyro-mean()-Z|BodyGyroDirectionZFreqMean
427| fBodyGyro-std()-X|BodyGyroDirectionXFreqSdev
428| fBodyGyro-std()-Y|BodyGyroDirectionYFreqSdev
429| fBodyGyro-std()-Z|BodyGyroDirectionZFreqSdev
503| fBodyAccMag-mean()|BodyAccelerationMagnitudeFreqMean
504| fBodyAccMag-std()|BodyAccelerationMagnitudeFreqSdev
516| fBodyBodyAccJerkMag-mean()|BodyAccelerationJerkMagnitudeFreqMean
517| fBodyBodyAccJerkMag-std()|BodyAccelerationJerkMagnitudeFreqSdev
529| fBodyBodyGyroMag-mean()|BodyGyroMagnitudeFreqMean
530| fBodyBodyGyroMag-std()|BodyGyroMagnitudeFreqSdev
542| fBodyBodyGyroJerkMag-mean()|BodyGyroJerkMagnitudeFreqMean
543| fBodyBodyGyroJerkMag-std()|BodyGyroJerkMagnitudeFreqSdev
555| angle(tBodyAccMean,gravity)|BodyGravityAccelerationAngleMean
556| angle(tBodyAccJerkMean),gravityMean)|BodyGravityAccelerationJerkAngleMean
557| angle(tBodyGyroMean,gravityMean)|BodyGravityGyroAngleMean
558| angle(tBodyGyroJerkMean,gravityMean)|BodyGravityGyroJerkAngleMean
559| angle(X,gravityMean)|GravityDirectionXAngleMean
560| angle(Y,gravityMean)|GravityDirectionYAngleMean
561| angle(Z,gravityMean)|GravityDirectionZAngleMean




##3. Output Files
  The R script run_analysis() creates two files in the working directory.

File Name|File Description
--- | ---
HumanActivyRecognitionDetail.txt| Mean and Standard Deviation Values. One row for each observation
HumanActivityRecognitionSummaryBySubjectAndActivity.txt| The average of each variable in the HumanActivityRecognitionDetail.csv file by subject and activity


The first three columns of the output files are Row Number, Subject, Activity.

The remaining 73 columns are the variables selected bove.

The detail file "HumanActivyRecognitionDetail.txt" has one row per observation

The summary file "HumanActivityRecognitionSummaryBySubjectAndActivity.txt" has the mean for each variable by Subject and Activity.



#Tidy Data Study

##Study Design
The raw data input to this study are test and train data files used in the "Human Activity Recognition Using Smartphones Dataset" (See Acknowledgement Section).

Only the mean and standard deviation variables were selected from the original raw data for the "Tidy Data" study.

The activities file and activitites labels are also used to assign meaningful activities labels to the data.

The subjects files are also used to assign subjects to the observations.  There were 30 subjects that participated in the study.  They are numbered 1-30.

The "test" and "train" sunject data is merged together since we are intersted in the complete data for the Tidy Data Study.

There are 561 variables in the original study. we are only interested in the mean and standard deviation variable for our study. (See variables section)   

##Dataset
        This study dataset includes the following files
                README.md      -  Description of this study
                run_analysis.R -  R script to extract selected data



##Input Files
 The following file are used ny run_analysis() as input.
 
File | File Path | File Description
--- | --- | ---
train data|"UCI HAR Dataset/train/X_train.txt" | Contains 561 variables per row  for the TRAIN subjects
 test data|"UCI HAR Dataset/test/X_test.txt" | Contains 561 variables for per row the TEST subjects
 train activities|"UCI HAR Dataset/train/y_train.txt"| Contains an activity code for each row in the train data file 

 test activities|"UCI HAR Dataset/test/y_test.txt" |Contains an activity code for each row in the test data file

train subjects|"UCI HAR Dataset/train/subject_train.txt| Contains a subject number (1:30) fro each row in the train data file

 test subjects|"UCI HAR Dataset/test/subject_test.txt" | Contains a subject number (1:30) fro each row in the test data file

 activity labels|"UCI HAR Dataset/activity_labels.txt" | Contains the descriptive labels for the activity codes


##Output Files

##Code Book
        run_analysis() creates two files:





###Variables
The raw data set contains 561 variables.  We are only using the mean and standard deviation in our study.  The following is a list of the variables that are extracted from the original data.  We also rename the variables to more meaningful names.  The variable list contains the original name (preceded by feature number) and the new name that is assigned to the variable.

 
Feature Number | Original Variable Name | New Variable Name 
--- | --- | ---
1| tBodyAcc-mean()-X |         BodyAccelerationDirectionXTimeMean
2| tBodyAcc-mean()-Y |         BodyAccelerationDirectionYTimeMean
3| tBodyAcc-mean()-Z |        BodyAccelerationDirectionZTimeMean
4 tBodyAcc-std()-X           BodyAccelerationDirectionXTimeSdev

5 tBodyAcc-std()-Y           BodyAccelerationDirectionYTimeSdev

6 tBodyAcc-std()-Z           BodyAccelerationDirectionZTimeSdev

41 tGravityAcc-mean()-X      GravityAccelerationDirectionXTimeMean

42 tGravityAcc-mean()-Y      GravityAccelerationDirectionYTimeMean

43 tGravityAcc-mean()-Z      GravityAccelerationDirectionZTimeMean

44 tGravityAcc-std()-X       GravityAccelerationDirectionXTimeSdev

45 tGravityAcc-std()-Y       GravityAccelerationDirectionYTimeSdev

46 tGravityAcc-std()-Z       GravityAccelerationDirectionZTimeSdev

81 tBodyAccJerk-mean()-X     BodyAccelerationJerkDirectionXTimeMean

82 tBodyAccJerk-mean()-Y     BodyAccelerationJerkDirectionYTimeMean

83 tBodyAccJerk-mean()-Z     BodyAccelerationJerkDirectionZTimeMean

84 tBodyAccJerk-std()-X      BodyAccelerationJerkDirectionXTimeSdev

85 tBodyAccJerk-std()-Y      BodyAccelerationJerkDirectionYTimeSdev

86 tBodyAccJerk-std()-Z      BodyAccelerationJerkDirectionZTimeSdev

121 tBodyGyro-mean()-X       BodyGyroDirectionXTimeMean

122 tBodyGyro-mean()-Y       BodyGyroDirectionYTimeMean

123 tBodyGyro-mean()-Z       BodyGyroDirectionZTimeMean

124 tBodyGyro-std()-X        BodyGyroDirectionXTimeSdev

125 tBodyGyro-std()-Y        BodyGyroDirectionYTimeSdev

126 tBodyGyro-std()-Z        BodyGyroDirectionZTimeSdev

161 tBodyGyroJerk-mean()-X   BodyGyroJerkDirectionXTimeMean

162 tBodyGyroJerk-mean()-Y   BodyGyroJerkDirectionYTimeMean

163 tBodyGyroJerk-mean()-Z   BodyGyroJerkDirectionZTimeMean

164 tBodyGyroJerk-std()-X
165 tBodyGyroJerk-std()-Y
166 tBodyGyroJerk-std()-Z
201 tBodyAccMag-mean()
202 tBodyAccMag-std()
214 tGravityAccMag-mean()
215 tGravityAccMag-std()
227 tBodyAccJerkMag-mean()
228 tBodyAccJerkMag-std()
240 tBodyGyroMag-mean()
241 tBodyGyroMag-std()
253 tBodyGyroJerkMag-mean()
254 tBodyGyroJerkMag-std()
266 fBodyAcc-mean()-X
267 fBodyAcc-mean()-Y
268 fBodyAcc-mean()-Z
269 fBodyAcc-std()-X
270 fBodyAcc-std()-Y
271 fBodyAcc-std()-Z
294 fBodyAcc-meanFreq()-X
295 fBodyAcc-meanFreq()-Y
296 fBodyAcc-meanFreq()-Z
345 fBodyAccJerk-mean()-X
346 fBodyAccJerk-mean()-Y
347 fBodyAccJerk-mean()-Z
348 fBodyAccJerk-std()-X
349 fBodyAccJerk-std()-Y
350 fBodyAccJerk-std()-Z
373 fBodyAccJerk-meanFreq()-X
374 fBodyAccJerk-meanFreq()-Y
375 fBodyAccJerk-meanFreq()-Z
424 fBodyGyro-mean()-X
425 fBodyGyro-mean()-Y
426 fBodyGyro-mean()-Z
427 fBodyGyro-std()-X
428 fBodyGyro-std()-Y
429 fBodyGyro-std()-Z
452 fBodyGyro-meanFreq()-X
453 fBodyGyro-meanFreq()-Y
454 fBodyGyro-meanFreq()-Z
503 fBodyAccMag-mean()
504 fBodyAccMag-std()
516 fBodyBodyAccJerkMag-mean()
517 fBodyBodyAccJerkMag-std()
529 fBodyBodyGyroMag-mean()
530 fBodyBodyGyroMag-std()
542 fBodyBodyGyroJerkMag-mean()
543 fBodyBodyGyroJerkMag-std()
555 angle(tBodyAccMean,gravity)
556 angle(tBodyAccJerkMean),gravityMean)
557 angle(tBodyGyroMean,gravityMean)
558 angle(tBodyGyroJerkMean,gravityMean)
559 angle(X,gravityMean)
560 angle(Y,gravityMean)
561 angle(Z,gravityMean)


















##Instructions

 R must be installed on the computer that will execute the run_analysis() script. 
 R version 3.0.3 (Warm Puppy) was used for this study.

* Step 1.    Download and unzip
  * Download the original study data [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

* Step 2    Set the working directory to the directory that contains the "UCI HAR Dataset" directory.

* Step 3    Load the R script run_analysis.R
  * From the R prompt>  `source("run_analysis.R")`

* Step 4    Run the script
  * From the R prompt> `run_analysis()`


##Acknowledgement

Use of the "Tidy Data" study does not require a license or acknowledgement.

However,

Use of the "Human Activity Recognition Using Smartphones" dataset in publications must be acknowledged by referencing the following publication: 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

For more information about the "Human Activity Recognition Using Smartphones" study:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)



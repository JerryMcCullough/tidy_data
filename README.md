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
 train data:		"UCI HAR Dataset/train/X_train.txt"

 test data:		"UCI HAR Dataset/test/X_test.txt"

 train activities:	"UCI HAR Dataset/train/y_train.txt"

 test activities:	"UCI HAR Dataset/test/y_test.txt"

 test subjects:		"UCI HAR Dataset/test/subject_test.txt"

 train subjects:	"UCI HAR Dataset/train/subject_train.txt

 activity labels:	"UCI HAR Dataset/activity_labels.txt"


##Output Files

##Code Book
        run_analysis() creates two files:





##Variables
The raw data set contains 561 variable.  We are only using the mean and standard deviation in our study.  The following is a list of the variables tah are extracted from the original data.  We also rename the variables to more meaning ful names.  The variable list contains the original name (with feature number) and the name we assigned to the variable.

 

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



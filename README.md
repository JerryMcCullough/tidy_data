#Tidy Data Study

##Study Design
The raw data input to this study are test and train data files used in the "Human Activity Recognition Using Smartphones Dataset" (See Acknowledgement Section) 

Only the mean and standard deviation variables were selected from the original raw data for the "Tidy Data" study.



##Dataset
        This study dataset includes the following files
                README.md      -  Description of this study
                run_analysis.R -  R script to extract selected data



##Input Files

##Output Files

##Code Book
        run_analysis() creates two files:





##Variables


##Instructions

 R must be installed on the computer that will run the run_analysis() script. 
 R version 3.0.3 (Warm Puppy) was used for this study.

* Step 1.    Download and unzip
  * Download the original study data [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

* Step 2    Set the working directory to the directory that contains the "UCI HAR Dataset" directory.

* Step 3    Load the R script run_analysis.R
  * From the R prompt>  `source("run_analysis.R")`

* Step 4    Run the script
  * From the R prompt> `run_analysis()`


##Acknowledgement

Lincense information for the dataset that is input to this study.


For more information about the original study:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

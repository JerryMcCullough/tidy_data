run_analysis <- function(directory="directory") {
	
	
# Set working directory to the directory that contains the "UCI HAR Dataset" directory	
# Input Files	  
	  traindatafile <- "UCI HAR Dataset/train/X_train.txt"
	  testdatafile <- "UCI HAR Dataset/test/X_test.txt"
	  trainactivitiesfile <- "UCI HAR Dataset/train/y_train.txt"  
	  testactivitiesfile <- "UCI HAR Dataset/test/y_test.txt"
      testsubjectsfile <- "UCI HAR Dataset/test/subject_test.txt"
      trainsubjectsfile <- "UCI HAR Dataset/train/subject_train.txt"
# test files 
#	  traindatafile <- "UCI HAR Dataset/train/X_trainn.txt"
#	  testdatafile <- "UCI HAR Dataset/test/X_testn.txt"
#	  trainactivitiesfile <- "UCI HAR Dataset/train/y_trainn.txt"  
#	  testactivitiesfile <- "UCI HAR Dataset/test/y_testn.txt"
#      testsubjectsfile <- "UCI HAR Dataset/test/subject_testn.txt"
#      trainsubjectsfile <- "UCI HAR Dataset/train/subject_trainn.txt"


	  activitylabelsfile <- "UCI HAR Dataset/activity_labels.txt"
# Vector of the mean and standard deviation features to extract	  
select_features <- c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,503,504,516,517,529,530,542,543,555,556,557,558,559,560,561)
# Vector of the new variable names
new_feature_names <- c("Subject","Activity"
,"BodyAccelerationDirectionXTimeMean"
,"BodyAccelerationDirectionYTimeMean"
,"BodyAccelerationDirectionZTimeMean"
,"BodyAccelerationDirectionXTimeSdev"
,"BodyAccelerationDirectionYTimeSdev"
,"BodyAccelerationDirectionZTimeSdev"
,"GravityAccelerationDirectionXTimeMean"
,"GravityAccelerationDirectionYTimeMean"
,"GravityAccelerationDirectionZTimeMean"
,"GravityAccelerationDirectionXTimeSdev"
,"GravityAccelerationDirectionYTimeSdev"
,"GravityAccelerationDirectionZTimeSdev"
,"BodyAccelerationJerkDirectionXTimeMean"
,"BodyAccelerationJerkDirectionYTimeMean"
,"BodyAccelerationJerkDirectionZTimeMean"
,"BodyAccelerationJerkDirectionXTimeSdev"
,"BodyAccelerationJerkDirectionYTimeSdev"
,"BodyAccelerationJerkDirectionZTimeSdev"
,"BodyGyroDirectionXTimeMean"
,"BodyGyroDirectionYTimeMean"
,"BodyGyroDirectionZTimeMean"
,"BodyGyroDirectionXTimeSdev"
,"BodyGyroDirectionYTimeSdev"
,"BodyGyroDirectionZTimeSdev"
,"BodyGyroJerkDirectionXTimeMean"
,"BodyGyroJerkDirectionYTimeMean"
,"BodyGyroJerkDirectionZTimeMean"
,"BodyGyroJerkDirectionXTimeSdev"
,"BodyGyroJerkDirectionYTimeSdev"
,"BodyGyroJerkDirectionZTimeSdev"
,"BodyAccelerationMagnitudeTimeMean"
,"BodyAccelerationMagnitudeTimeSdev"
,"GravityAccelerationMagnitudeTimeMean"
,"GravityAccelerationMagnitudeTimeSdev"
,"BodyAccelerationJerkMagnitudeTimeMean"
,"BodyAccelerationJerkMagnitudeTimeSdev"
,"BodyGyroMagnitudeTimeMean"
,"BodyGyroMagnitudeTimeSdev"
,"BodyGyroJerkMagnitudeTimeMean"
,"BodyGyroJerkMagnitudeTimeSdev"
,"BodyAccelerationDirectionXFreqMean"
,"BodyAccelerationDirectionYFreqMean"
,"BodyAccelerationDirectionZFreqMean"
,"BodyAccelerationDirectionXFreqSdev"
,"BodyAccelerationDirectionYFreqSdev"
,"BodyAccelerationDirectionZFreqSdev"
,"BodyAccelerationJerkDirectionXFreqMean"
,"BodyAccelerationJerkDirectionYFreqMean"
,"BodyAccelerationJerkDirectionZFreqMean"
,"BodyAccelerationJerkDirectionXFreqSdev"
,"BodyAccelerationJerkDirectionYFreqSdev"
,"BodyAccelerationJerkDirectionZFreqSdev"
,"BodyGyroDirectionXFreqMean"
,"BodyGyroDirectionYFreqMean"
,"BodyGyroDirectionZFreqMean"
,"BodyGyroDirectionXFreqSdev"
,"BodyGyroDirectionYFreqSdev"
,"BodyGyroDirectionZFreqSdev"
,"BodyAccelerationMagnitudeFreqMean"
,"BodyAccelerationMagnitudeFreqSdev"
,"BodyAccelerationJerkMagnitudeFreqMean"
,"BodyAccelerationJerkMagnitudeFreqSdev"
,"BodyGyroMagnitudeFreqMean"
,"BodyGyroMagnitudeFreqSdev"
,"BodyGyroJerkMagnitudeFreqMean"
,"BodyGyroJerkMagnitudeFreqSdev"
,"BodyGravityAccelerationAngleMean"
,"BodyGravityAccelerationJerkAngleMean"
,"BodyGravityGyroAngleMean"
,"BodyGravityGyroJerkAngleMean"
,"GravityDirectionXAngleMean"
,"GravityDirectionYAngleMean"
,"GravityDirectionZAngleMean")
#  Read test and train data files
	  indatatrain <- read.table(traindatafile)
	  indatatest <- read.table(testdatafile)
# Read the test and train activities files
      inacttrain <- read.table(trainactivitiesfile)
      inacttest <- read.table(testactivitiesfile)
# Read the test and train subjects files
      insubtrain <- read.table(trainsubjectsfile)
      insubtest <- read.table(testsubjectsfile)

# Read activity labels
	  actlabels <- read.table(activitylabelsfile)

# Combine the test and train data files
# with only the columns in the select_features vector
      indata <- rbind(indatatrain[,select_features],indatatest[,select_features])
# Combine the test and train activities files
      activities <- rbind(inacttrain,inacttest)
# Combine the test and train subjects files
      subjects <- rbind(insubtrain, insubtest) 
# Combine the subjects and activity codes with the data
      tidydata1 <- cbind(subjects, activities, indata)
# Set New Column Names
      names(tidydata1) <- new_feature_names
# Update activity labels
#1 WALKING
#2 WALKING_UPSTAIRS
#3 WALKING_DOWNSTAIRS
#4 SITTING
#5 STANDING
#6 LAYING
  act <- tidydata1$Activity %in% "1"
  tidydata1[act,2] <- "Walking"
  act <- tidydata1$Activity %in% "2"
  tidydata1[act,2] <- "WalkingUpstairs" 
  act <- tidydata1$Activity %in% "3"
  tidydata1[act,2] <- "WalkingDownstairs"
  act <- tidydata1$Activity %in% "4"
  tidydata1[act,2] <- "Sitting"
  act <- tidydata1$Activity %in% "5"
  tidydata1[act,2] <- "Standing"
  act <- tidydata1$Activity %in% "6"
  tidydata1[act,2] <- "Laying"      
#str(tidydata1)
# Write the detail data file 
      write.csv(tidydata1, file = "HumanActivityRecognitionDetail.csv")
# Convert tidydata1 to data table
      tidydata1_dt <- data.table(tidydata1)
# Summarize the data by subject and activity
# Calculate the mean of each variable
tidydata2 <- tidydata1_dt[, lapply(.SD,mean), by=eval(colnames(tidydata1_dt)[1:2])] 
# Write the summarized data file
write.csv(tidydata2, file = "HumanActivityRecognitionSummaryBySubjectAndActivity.csv")

#str(tidydata1)
#str(select_features)
#str(tidydata2)  

}

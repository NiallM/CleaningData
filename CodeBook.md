Code Book

Steps In Process
Manual Process
1 - Downloaded data from website 
2 - Unzipped data into R working folder

R Script
3 - In R script loaded test and training data into data frames
4 - Load in reference labels
5 - Load feature headers into data frame
6 - Load in test data  
7 - Set headername of subject_test to "subjectNo"
8 - Set headername of test_x to feature headers from feature_desc data frame
9 - Set headername of test_y to "actNo"
10 - Load training data
11 - Set headername of subject_train to "subjectNo"
12 - Set headername of train_x to feature headers from feature_desc data frame
13 - Set headername of train_y to "actNo"
14 - Merge test and training data set parts
15 - Combine parts of the data sets into one data frame
16 - Keep only columns with mean or std text but also keep subjectNo and actNo 
17 - Reassemble parts of data frame with non mean and std cols stripped out 
18 - Merge in activity labels from the activity file i.e. replace 1 with WALKING
19 - Write the output_data data frame to output file


Variables
"actNo" - Activity id
"subjectNo" 
"tBodyAcc-mean()-X" 
"tBodyAcc-mean()-Y" 
"tBodyAcc-mean()-Z"
"tGravityAcc-mean()-X"
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z"
"tBodyAccJerk-mean()-X"
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"
"tBodyGyro-mean()-X"
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"
"tBodyGyroJerk-mean()-X"
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"
"tBodyAccMag-mean()"
"tGravityAccMag-mean()"
"tBodyAccJerkMag-mean()"
"tBodyGyroMag-mean()"
"tBodyGyroJerkMag-mean()"
"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"
"fBodyAcc-meanFreq()-X"
"fBodyAcc-meanFreq()-Y"
"fBodyAcc-meanFreq()-Z"
"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"
"fBodyAccJerk-mean()-Z"
"fBodyAccJerk-meanFreq()-X"
"fBodyAccJerk-meanFreq()-Y"
"fBodyAccJerk-meanFreq()-Z"
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"
"fBodyGyro-meanFreq()-X"
"fBodyGyro-meanFreq()-Y" 
"fBodyGyro-meanFreq()-Z"
"fBodyAccMag-mean()" 
"fBodyAccMag-meanFreq()"
"fBodyBodyAccJerkMag-mean()"
"fBodyBodyAccJerkMag-meanFreq()"
"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroMag-meanFreq()"
"fBodyBodyGyroJerkMag-mean()"
"fBodyBodyGyroJerkMag-meanFreq()"
"angle(tBodyAccMean,gravity)"
"angle(tBodyAccJerkMean),gravityMean)" 
"angle(tBodyGyroMean,gravityMean)" 
"angle(tBodyGyroJerkMean,gravityMean)"
"angle(X,gravityMean)"
"angle(Y,gravityMean)"
"angle(Z,gravityMean)"
"tBodyAcc-std()-X"
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"
"tGravityAcc-std()-X" 
"tGravityAcc-std()-Y"
"tGravityAcc-std()-Z" 
"tBodyAccJerk-std()-X" 
"tBodyAccJerk-std()-Y"
"tBodyAccJerk-std()-Z"
"tBodyGyro-std()-X" 
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"
"tBodyGyroJerk-std()-X"
"tBodyGyroJerk-std()-Y" 
"tBodyGyroJerk-std()-Z" 
"tBodyAccMag-std()" 
"tGravityAccMag-std()"
"tBodyAccJerkMag-std()" 
"tBodyGyroMag-std()" 
"tBodyGyroJerkMag-std()"
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y" 
"fBodyAcc-std()-Z"
"fBodyAccJerk-std()-X" 
"fBodyAccJerk-std()-Y" 
"fBodyAccJerk-std()-Z"
"fBodyGyro-std()-X" 
"fBodyGyro-std()-Y" 
"fBodyGyro-std()-Z"
"fBodyAccMag-std()" 
"fBodyBodyAccJerkMag-std()" 
"fBodyBodyGyroMag-std()"
"fBodyBodyGyroJerkMag-std()"
"actDesc" - Activity with correct label

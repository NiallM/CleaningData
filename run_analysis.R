# function run_analysis
run_analysis <- function(){
  
  # load reference labels
  features <- read.table("UCI HAR Dataset/features.txt", col.names=c("featNo", "featDesc"))
  activity <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("actNo", "actDesc"))
  # load feature headers into vector
  feature_desc <-  features[,2]
  
  # load test data  
  subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
  test_x = read.table("UCI HAR Dataset/test/X_test.txt")
  test_y = read.table("UCI HAR Dataset/test/y_test.txt")
  # set headername of subject_test to "subjectNo"
  colnames(subject_test) <- "subjectNo"
  # set headername of test_x to feature headers from vector feature_desc
  colnames(test_x) <- feature_desc
  # set headername of test_y to "actNo"
  colnames(test_y) <- "actNo"
  
  #load training data
  subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
  train_x = read.table("UCI HAR Dataset/train/X_train.txt")
  train_y = read.table("UCI HAR Dataset/train/y_train.txt")
  # set headername of subject_train to "subjectNo"
  colnames(subject_train) <- "subjectNo"
  # set headername of train_x to feature headers from vector feature_desc
  colnames(train_x) <- feature_desc
  # set headername of train_y to "actNo"
  colnames(train_y) <- "actNo"

  # merge test and training data set parts
  all_subjects <- rbind(subject_test, subject_train)
  all_x <- rbind(test_x, train_x)
  all_y <- rbind(test_y, train_y)

  # combine parts of the data sets into one data frame
  all_vals <- cbind(all_subjects, all_x, all_y)
  
  # keep only columns with mean or std text
  # but also keep subjectNo and actNo 
  # for means
  mean_col_ids <- grep("mean",names(all_vals),ignore.case=TRUE)
  mean_colDesc <- names(all_vals)[mean_col_ids]
  # for std
  std_col_ids <- grep("std",names(all_vals),ignore.case=TRUE)
  std_colDesc <- names(all_vals)[std_col_ids]
  
  # reassemble parts of data frame with non mean and std cols stripped out 
  output_data <-all_vals[,c("subjectNo", mean_colDesc, std_colDesc, "actNo")]
  # merge in activity labels from the activity file
  # i.e. replace 1 with WALKING
  output_data <- merge(output_data,activity,by="actNo" ,all = TRUE)
  
  # write the output_data data frame to output file
  write.table(output_data, "tidy_data.txt", row.name=FALSE)
  
}

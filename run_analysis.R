
# Getting and Cleaning Data Course Project

# Mohamed Abdelnaby

# Oct 11 2020


# Dataset downloaded& Extracted.

# 1. Merge the training and the test sets to create one data set.

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

# 3. Use descriptive activity names to name the activities in the data set.

# 4. Appropriately label the data set with descriptive activity names. 

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


DatasetDirectory <- "UCI HAR Dataset"



TrainingSet <- read.table(file.path(DatasetDirectory, "train", "subject_train.txt"))

xTrainingSet <- read.table(file.path(DatasetDirectory, "train", "X_train.txt"))

yTrainingSet <- read.table(file.path(DatasetDirectory, "train", "y_train.txt"))


AllTrainingSet <- cbind(xTrainingSet,TrainingSet,yTrainingSet)



TestSet <- read.table(file.path(DatasetDirectory, "test", "subject_test.txt"))

xTestSet <- read.table(file.path(DatasetDirectory, "test", "X_test.txt"))

yTestSet <- read.table(file.path(DatasetDirectory, "test", "y_test.txt"))


AllTestSet = cbind(xTestSet,TestSet,yTestSet)

CompleteDataSet <- rbind(AllTrainingSet,AllTestSet)


features <- read.table(file.path(DatasetDirectory,"features.txt"), as.is = TRUE)


activities <- read.table(file.path(DatasetDirectory, "activity_labels.txt"))

colnames(activities) <- c("activityId", "activityLabel")



colnames(CompleteDataSet) <- c("Subject", features[, 2], "Activity")      #set the original colnames 

#head(CompleteDataSet)



mean_std_data <- grepl("subject|activity|mean|std", colnames(CompleteDataSet))  #match and get the colums that contains  subject, activity, mean ,std

CompleteDataSet <- CompleteDataSet[, mean_std_data]



CompleteDataSet$Activity <- factor(CompleteDataSet$Activity, levels = activities[, 1], labels = activities[, 2])   # Replace the activity ID with the label



# Appropriately labels the data set with descriptive variable names.

DataSetCols <- colnames(CompleteDataSet)            #getDataSetNames


DataSetCols <- gsub("[\\(\\)-]", "", DataSetCols)   #change the special characters


show(DataSetCols)

# expand abbreviations and clean up names

DataSetCols <- gsub("^f", "freqDomain", DataSetCols)              # replace first character if f with Frequancy Domain

DataSetCols <- gsub("^t", "timeDomain", DataSetCols)              # replace first character if f with Time Domain

DataSetCols <- gsub("Acc", "Accelerometer", DataSetCols)

DataSetCols <- gsub("Gyro", "Gyroscope", DataSetCols)

DataSetCols <- gsub("Mag", "Magnitude", DataSetCols)

DataSetCols <- gsub("Freq", "Frequency", DataSetCols)

DataSetCols <- gsub("mean", "Mean", DataSetCols)

DataSetCols <- gsub("std", "StandardDeviation", DataSetCols)



DataSetCols <- gsub("BodyBody", "Body", DataSetCols)            #replace BodyBody with One Body



# set the columns names for the datasets

colnames(CompleteDataSet) <- DataSetCols



# group by subject and activity and summarize using mean

TheMeansSet <- CompleteDataSet %>% 
  
  group_by(Subject, Activity) %>%
  
  summarise_each(funs(mean))



# write the result table into "tidy.txt"

write.table(TheMeansSet, "tidy.txt", row.names = FALSE, 
            
            quote = FALSE)




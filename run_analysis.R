# The goal of this script is to create a data frame starting from the individual data files and to structure the data in a tidy format 

library(dplyr)

# File names
activity_labels_filename <- "./UCI HAR Dataset/activity_labels.txt"
features_filename        <- "./UCI HAR Dataset/features.txt"
X_train_filename         <- "./UCI HAR Dataset/train/X_train.txt"
y_train_filename         <- "./UCI HAR Dataset/train/y_train.txt"
subject_train_filename   <- "./UCI HAR Dataset/train/subject_train.txt"
X_test_filename          <- "./UCI HAR Dataset/test/X_test.txt"
y_test_filename          <- "./UCI HAR Dataset/test/y_test.txt"
subject_test_filename    <- "./UCI HAR Dataset/test/subject_test.txt"

# Read files and create data tables
activity_labels_df <- read.table(activity_labels_filename, sep = " ")
features_df        <- read.table(features_filename, sep = " ")
X_train_df         <- read.table(X_train_filename)
y_train_df         <- read.table(y_train_filename)
subject_train_df   <- read.table(subject_train_filename)
X_test_df          <- read.table(X_test_filename)
y_test_df          <- read.table(y_test_filename)
subject_test_df    <- read.table(subject_test_filename)

# 1 - Merges the training and the test sets to create one data set.
# Reconstruct the 10299x561 matrix with all the samples (train + test)
X <- rbind(X_train_df, X_test_df)

# 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
meanStdColumns <- grepl(c("Mean|mean|Std|std"), features_df[,2])
meanStdDF <- X[,meanStdColumns]
    
# 3 - Uses descriptive activity names to name the activities in the data set
# Reconstruct vector with the activities (train + test)
yVector <- rbind(y_train_df, y_test_df)
activitiesVector <- sapply(yVector, FUN = function(x) activity_labels_df[x,2])

# Reconstruct vector with the subjects (train + test)
subjectVector <- rbind(subject_train_df, subject_test_df)

meanStdDF <- cbind(subjectVector, activitiesVector, meanStdDF)

# 4 - Appropriately labels the data set with descriptive variable names.
meanStdColumnNames <- as.character(features_df[meanStdColumns,2])
# get rid of "(", ")" and "-" in variable names
meanStdColumnNames <- gsub("\\(\\)","",meanStdColumnNames)
meanStdColumnNames <- gsub("\\(\\)|\\-","_",meanStdColumnNames)
meanStdColumnNames <- gsub("^t","time_",meanStdColumnNames)
meanStdColumnNames <- gsub("^f","freq_",meanStdColumnNames)
colnames(meanStdDF) <- append(c("SubjectID", "Activity"), meanStdColumnNames)

# 5 - From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.
summarisedDF <- meanStdDF %>% group_by(SubjectID, Activity) %>%  summarise_if(is.numeric, mean, na.rm = TRUE)

# save the resulting data frame to a file
write.table(summarisedDF, "summarisedDF.txt")

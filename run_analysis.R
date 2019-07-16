# The goal of this script is to create a data frame starting from the individual data files and to structure the data in a tidy format 
# File names
activity_labels_filename <- "./UCI HAR Dataset/activity_labels.txt"
features_filename        <- "./UCI HAR Dataset/features.txt"
X_train_filename         <- "./UCI HAR Dataset/train/X_train.txt"
y_train_filename         <- "./UCI HAR Dataset/train/y_train.txt"
subject_train_filename   <- "./UCI HAR Dataset/train/subject_train.txt"
X_test_filename          <- "./UCI HAR Dataset/test/X_test.txt"
y_test_filename          <- "./UCI HAR Dataset/test/y_test.txt"
subject_test_filename    <- "./UCI HAR Dataset/test/subject_test.txt"

# Read files and create data frames
activity_labels_df <- read.table(activity_labels_filename, sep = " ")
features_df        <- read.table(features_filename, sep = " ")
X_train_df         <- read.table(X_train_filename)
y_train_df         <- read.table(y_train_filename)
subject_train_df   <- read.table(subject_train_filename)
X_test_df          <- read.table(X_test_filename)
y_test_df          <- read.table(y_test_filename)
subject_test_df    <- read.table(subject_test_filename)

# Reconstruct the 10299x561 matrix with all the samples (train + test)
X <- rbind(X_train_df, X_test_df)

# Reconstruct vector with the activities (train + test)
yVector <- rbind(y_train_df, y_test_df)
yVector <- merge(activity_labels_df, yVector, by="V1")
yVector <- yVector[,2]

# Reconstruct vector with the subjects (train + test)
subjectVector <- rbind(subject_train_df, subject_test_df)

# Create the dataframe
df <- cbind(subjectVector, yVector, X)

# Give name to columns
colnames(df) <- append(c("SubjectID", "ActivityID"), as.character(features_df[,2]))


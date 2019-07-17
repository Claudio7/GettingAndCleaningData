# Getting and Cleaning Data assignment Dataset
Version 1.0

# Introduction
This dataset was developed as part of the Getting and Cleaning Data assignment and was created starting from the from the Human Activity Recognition Using Smartphones Data Set. [Click here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) to get more information about the experiment and the measurements.

# Data manipulation
The dataset was obtained from the Human Activity Recognition Using Smartphones Data Set by performing the following manipulations:

* Reconstructing the original dataset (10299x561) combining the train and test datasets
* Subsetting the original dataset in order to select only the (86) columns whose variable names contained the text "Mean", "mean", "Std" or "std"
* Giving descriptive names to the activities in the data set (STANDING, WALKING, SITTING, etc)
* Adding the ID of the subject participating in the experiment (subject ID ranges from 1 to 30)
* Labelling variables with more descriptive names
* Averaging each variable for each activity and each subject
* Making sure that the result dataframe is tidy:

  1. Each variable forms a column.
  2. Each observation forms a row.
  3. Each type of observational unit forms a table.

See also [Tidy Data](http://vita.had.co.nz/papers/tidy-data.pdf) by Hadley Wickham for a detailed description of Tidy Data.

You can see the R code [here](run_analysis.R)

# Dataset description
The dataset is composed by a (180x88) data frame.

For each record it is provided:
- ID of the subject who took part in the experiment (IDs range from 1 to 30)
- Activity carried out by the subject (STANDING, WALKING, SITTING, etc)
- mean of the 86 variables grouped by subject ID and activity

# Importing the dataset
The data frame can be created using the following command:
```
summarisedDF <- read.table("summarisedDF.txt")
```

# Files 
- README.md: this file
- [CodeBook.md](CodeBook.md): 
- [run_analysis.R](run_analysis.R): R file used to process the initial dataset and obtain the resulting dataset
- [summarisedDF.txt](summarisedDF.txt): the assignment data frame 


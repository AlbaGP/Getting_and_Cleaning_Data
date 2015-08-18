# Summary
The aim of this project is to create a tidy data set from the data in the following url:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

It represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Steps to follow 

1. Unzip the data from the url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Copy the contents of UCI HAR Dataset folder into your working directory
3. Download run_analysis.R and save it into your working directory
4. Once the script is run in your computer, it creates a file in your working directory called TidyData.txt with the tidy data set created from the data in the zip folder
5. The script automatically downloads the plyr package which is needed

## Script explanation

We should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Step 1
As a previous step, the required packages are loaded (in this case the plyr package). Then the data is read into R, the columns are named and the X and Y sets are merged for the train and test data. The result are two sets trainSet and testSet, which are also merged to finally create unionSet.

## Step 2
Only the measures related to the mean and standard deviation are extracted. UnionSet is filtered according to these variables.

## Step 3
We paste the descriptive activity names into the data set in step 2 

## Step 4
Change the column names for those columns referring to activities so that they are descriptive and easily readable and understandable.

## Step 5
Create the final data set with the data grouped by IdActivity and IdSubject, and the activity columns aggregated using the mean.
Finally, we create a txt file containing the tidy data set called TidyData.txt

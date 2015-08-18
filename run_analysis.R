##########################################################################################
##################  Getting and Cleaning Data Course Project  ###########################
##########################################################################################

# The goal of this script is to prepare tidy data from the data provided in the course which 
# can later be used for analysis. The preparation of the data will be divided into the 
# following steps:

# 1.Merge the training and the test sets to create one data set.
# 2.Extract only the measurements on the mean and standard deviation for each measurement. 
# 3.Use descriptive activity names to name the activities in the data set
# 4.Appropriately label the data set with descriptive variable names. 
# 5.From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

## 1.Merge the training and the test sets to create one data set.

# Load required packages
if (!require("plyr")) {
  install.packages("plyr")
}

# Read the data into R
features     <- read.table('./features.txt') 
activitylabs <- read.table('./activity_labels.txt')

subjectrain  <- read.table('./train/subject_train.txt') 
xtrain       <- read.table('./train/x_train.txt') 
ytrain       <- read.table('./train/y_train.txt')

subjectest   <- read.table('./test/subject_test.txt') 
xtest        <- read.table('./test/x_test.txt') 
ytest        <- read.table('./test/y_test.txt') 

# Name the columns
colnames(activitylabs)  <- c("IdActivity","Activity")
colnames(subjectrain)   <- "IdSubject"
colnames(xtrain)        <- features[,2] 
colnames(ytrain)        <- "IdActivity"

colnames(subjectest)    <- "IdSubject"
colnames(xtest)         <- features[,2] 
colnames(ytest)         <- "IdActivity"

# Merge the sets
trainSet <- cbind(ytrain,subjectrain,xtrain)
testSet  <- cbind(ytest,subjectest,xtest)
unionSet <- rbind(trainSet,testSet)

## 2.Extract only the measurements on the mean and standard deviation for each measurement.
measuresIndexes<-grepl("[Mm]ean\\()|[Ss]td\\()",features[,2]) 
measures<- as.vector(features[,2][measuresIndexes])

indexes<-c("IdSubject","IdActivity",measures)

unionSet_meanStd<-unionSet[,indexes]

## 3.Use descriptive activity names to name the activities in the data set

finalSet <-merge(unionSet_meanStd,activitylabs,by='IdActivity',all.x=TRUE) 

## 4.Appropriately label the data set with descriptive variable names. 

columnNames<- colnames(finalSet)

for (i in 3:length(columnNames))
{
  columnNames[i]<-gsub("-", "",columnNames[i])
  columnNames[i]<-gsub("^t", "Time",columnNames[i])
  columnNames[i]<-gsub("\\()","", columnNames[i])
  columnNames[i]<-gsub("Acc", "Acceleration", columnNames[i])
  columnNames[i]<-gsub("mean","Mean", columnNames[i])
  columnNames[i]<-gsub("std", "StandardDeviation", columnNames[i])
  columnNames[i]<-gsub("Mag","Magnitude",columnNames[i])
  columnNames[i]<-gsub("BodyBody","Body", columnNames[i])
  columnNames[i]<-gsub("^f", "Frequency",columnNames[i])
}

colnames(finalSet)<-columnNames

## 5.From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

data_grouped<-ddply(finalSet,c("IdActivity","IdSubject"),numcolwise(mean))

# Create the txt file to be submitted
write.table(data_grouped, file = "./TidyData.txt",row.name=FALSE)



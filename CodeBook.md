# CodeBook

The aim of this file is to further explain the steps follow in the R script and the variables included in it

## Source of the data 

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Required steps to follow

You should create one R script called run_analysis.R that does the following. 

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

## Variables description
A description of all the variables is included in the file features_info.txt located in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
We have included a subset of these variables. Concretely, we have chosen just the variables relative to the mean and the standard deviation. We have also changed their names so that they are more easily readable and understandable in order to make them as descriptive as possible.

## List of the variables included in the tidy data set
1. "IdActivity"                                             
2. "IdSubject"                                              
3. "TimeBodyAccelerationMeanX"                              
4. "TimeBodyAccelerationMeanY"                              
5. "TimeBodyAccelerationMeanZ"                              
6. "TimeBodyAccelerationStandardDeviationX"                 
7. "TimeBodyAccelerationStandardDeviationY"                 
8. "TimeBodyAccelerationStandardDeviationZ"                 
9. "TimeGravityAccelerationMeanX"                           
10. "TimeGravityAccelerationMeanY"                           
11. "TimeGravityAccelerationMeanZ"                           
12. "TimeGravityAccelerationStandardDeviationX"              
13. "TimeGravityAccelerationStandardDeviationY"              
14. "TimeGravityAccelerationStandardDeviationZ"              
15. "TimeBodyAccelerationJerkMeanX"                          
16. "TimeBodyAccelerationJerkMeanY"                          
17. "TimeBodyAccelerationJerkMeanZ"                          
18. "TimeBodyAccelerationJerkStandardDeviationX"             
19. "TimeBodyAccelerationJerkStandardDeviationY"             
20. "TimeBodyAccelerationJerkStandardDeviationZ"             
21. "TimeBodyGyroMeanX"                                      
22. "TimeBodyGyroMeanY"                                      
23. "TimeBodyGyroMeanZ"                                      
24. "TimeBodyGyroStandardDeviationX"                         
25. "TimeBodyGyroStandardDeviationY"                         
26. "TimeBodyGyroStandardDeviationZ"                         
27. "TimeBodyGyroJerkMeanX"                                  
28. "TimeBodyGyroJerkMeanY"                                  
29. "TimeBodyGyroJerkMeanZ"                                  
30. "TimeBodyGyroJerkStandardDeviationX"                     
31. "TimeBodyGyroJerkStandardDeviationY"                     
32. "TimeBodyGyroJerkStandardDeviationZ"                     
33. "TimeBodyAccelerationMagnitudeMean"                      
34. "TimeBodyAccelerationMagnitudeStandardDeviation"         
35. "TimeGravityAccelerationMagnitudeMean"                   
36. "TimeGravityAccelerationMagnitudeStandardDeviation"      
37. "TimeBodyAccelerationJerkMagnitudeMean"                  
38. "TimeBodyAccelerationJerkMagnitudeStandardDeviation"     
39. "TimeBodyGyroMagnitudeMean"                              
40. "TimeBodyGyroMagnitudeStandardDeviation"                 
41. "TimeBodyGyroJerkMagnitudeMean"                          
42. "TimeBodyGyroJerkMagnitudeStandardDeviation"             
43. "FrequencyBodyAccelerationMeanX"                         
44. "FrequencyBodyAccelerationMeanY"                         
45. "FrequencyBodyAccelerationMeanZ"                         
46. "FrequencyBodyAccelerationStandardDeviationX"            
47. "FrequencyBodyAccelerationStandardDeviationY"            
48. "FrequencyBodyAccelerationStandardDeviationZ"            
49. "FrequencyBodyAccelerationJerkMeanX"                     
50. "FrequencyBodyAccelerationJerkMeanY"                     
51. "FrequencyBodyAccelerationJerkMeanZ"                     
52. "FrequencyBodyAccelerationJerkStandardDeviationX"        
53. "FrequencyBodyAccelerationJerkStandardDeviationY"        
54. "FrequencyBodyAccelerationJerkStandardDeviationZ"        
55."FrequencyBodyGyroMeanX"                                 
56. "FrequencyBodyGyroMeanY"                                 
57. "FrequencyBodyGyroMeanZ"                                 
58. "FrequencyBodyGyroStandardDeviationX"                    
59. "FrequencyBodyGyroStandardDeviationY"                    
60. "FrequencyBodyGyroStandardDeviationZ"                    
61. "FrequencyBodyAccelerationMagnitudeMean"                 
62. "FrequencyBodyAccelerationMagnitudeStandardDeviation"    
63. "FrequencyBodyAccelerationJerkMagnitudeMean"             
64. "FrequencyBodyAccelerationJerkMagnitudeStandardDeviation"
65. "FrequencyBodyGyroMagnitudeMean"                         
66. "FrequencyBodyGyroMagnitudeStandardDeviation"            
67. "FrequencyBodyGyroJerkMagnitudeMean"                     
68. "FrequencyBodyGyroJerkMagnitudeStandardDeviation" 
69. "Activity" 

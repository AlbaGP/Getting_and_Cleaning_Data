# CodeBook

The aim of this file is to explain the different variables included in the script run_analysis.R

# Source of the data 

The data used for this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. More information can be found in the following url, from which the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data that we have used can be downloaded from the following link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Data origin
A full description of the origin of the data and the features selection can be found in the zip folder referred above. A summary of the most important information in those files is the following:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
## Features Selection
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation
Among other, but those above are the ones that we have kept for the purpose of this project.

# Variables description
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
55. "FrequencyBodyGyroMeanX"                                 
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

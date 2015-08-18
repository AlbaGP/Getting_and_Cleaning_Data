# CodeBook

The aim of this file is to explain the different variables included in the script run_analysis.R

# Source of the data 

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Data origin
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

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

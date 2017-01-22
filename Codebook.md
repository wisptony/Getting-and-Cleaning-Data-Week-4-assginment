Codebook for tidy.txt

Transformation of raw data

1. Read label, subject, traning and testing set of data into R
2. Merge training and testing set together into one data set called "data" with function rbind()
3. Assign variable names read from feature.txt to merged data set "data"
4. Select mean and standard deviation variables in "data" to create a new data set called "data_selected"
5. Substitute numeric labels of activity with descriptive words then bind activity with "data_selected" with cbind()
6. Bind subject id number with "data_selected"
7. Using reshape2 package to create a new data set called "data_summarize" which includes the mean of each measurement
   in "data_selected" grouped by object and activity. "data_summarize" is stored in "tidy.txt"

Variables

Identifier

id:id of subjects involved in this experiment
activity:activities that each subject took in this experiment, such as walking, walking upstairs etc.

Variables
The variables selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ      
tGravityAcc-XYZ    
tBodyAccJerk-XYZ    
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag    
fBodyAcc-XYZ        
fBodyAccJerk-XYZ             
fBodyGyro-XYZ            
fBodyAccMag                
fBodyAccJerkMag            
fBodyGyroMag            
fBodyGyroJerkMag               

The set of variables that were estimated from these signals are: 

mean(): Mean value  
std(): Standard deviation







##Variables:
subject_id : unique identifier for each subject that participated in the study
activity_label : name of the activity that the subject was performing at the time of data capture

Mean and stnadard deviation across X,Y, and Z axisfor following sensor variales:  
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

## Data Procesing Steps

Load test data  
Load train data  
Merges the training and the test sets to create one data set  
Get a listing of features  
Label columns  
Label activities  
Extracts only the measurements on the mean and standard deviation for each measuremen  
Aggregate (using mean function) each varible above by Subject ID and Activity Label  

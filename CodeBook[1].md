# Code Book for tidy_dataset.txt

## Dataset Description

The dataset contains the average of selected measurements from the
Human Activity Recognition Using Smartphones Dataset.

Each row represents one subject and one activity.

## Variables

- subject  
  The ID of the subject who performed the activity (integer: 1–30)

- activity  
  The type of activity performed:
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

All other variables are numeric and represent the average of the original
measurements for each subject and activity.

The measurements include signals from accelerometer and gyroscope such as:

- Time domain signals (tBodyAcc, tGravityAcc, tBodyGyro)
- Frequency domain signals (fBodyAcc, fBodyGyro)
- Mean and standard deviation measurements only

Example variable names:
- tBodyAcc-mean()-X
- tBodyAcc-std()-Y
- fBodyGyro-mean()-Z

## Data Transformation Steps

The following steps were performed in run_analysis.R:

1. Download and unzip the dataset
2. Read training and test datasets
3. Merge training and test datasets
4. Assign descriptive variable names using features.txt
5. Extract only measurements on mean() and std()
6. Replace activity IDs with descriptive activity names
7. Create a second tidy dataset by computing the average of each variable
   for each subject and each activity
8. Write the tidy dataset to tidy_dataset.txt
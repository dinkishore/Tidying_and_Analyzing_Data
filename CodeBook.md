# Codebook for run_analysis.R
## Data used - Samsung UCI HAR Dataset


### workdir -> "character"

For Setting Working Directory(Directory with the Dataset)



### X_train -> "data.frame" with "numeric" values(7352 observations of 561 variables)

Training Set of X by combining the following 3 measurements

  body_acc  (Unit: 'g'(Standard gravity units))
  
  body_gyro (Unit: radians/sec)
  
  total_acc (Unit: 'g')


  
### Y_train -> "data.frame" with "numeric" values(2947 observations of 1 variable)

Training Set of Y(Result of Calculation of X_train)



### X_test -> "data.frame" with "numeric" values(2947 observations of 561 variables)

Testing Set of X by combining the following 3 measurements

  body_acc  (Unit: 'g'(Standard gravity units))
  
  body_gyro (Unit: radians/sec)
  
  total_acc (Unit: 'g')
  
  
  
### Y_test -> "data.frame" with "numeric" values(7352 observations of 1 variable)

Testing Set of Y(Result of Calculation of X_train)



### activity_levels -> "data.frame" with "character" value

Represents 6 levels of activities
character values represents activities(6 levels)
("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")

### feature_label -> "character" with 561 values

Represents the 561 subjects



### subject_train -> "data.frame" with "numeric" values(7352 values)

Contains the subject values for train set(Ranges from 1 to 30)



### subject_train -> "data.frame" with "numeric" values(2947 values)

Contains the subject values for test set(Ranges from 1 to 30)



### Y_label_train,Y_label_test

Represents the labeled variants for Y_train and Y_test



### X_merge -> "data.frame" with "numeric" values(10299 observations of 80 variables)

Represents the merged data of X_train and X_test



### Y_label_merge -> "data.frame" with "character" values(10299 observations of 1 variable)

Represents the row-wise merging of Y_label_train and Y_label_test



### complete_merge -> "data.frame" with "numeric" and "character" values(10299 observations of 81 variables)

Represents the column-wise merging of X_merge and Y_merge

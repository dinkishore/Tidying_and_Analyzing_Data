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



### act_labels -> "data.frame" with "numeric" and "character" values

numeric values represent labels(ranges from 1 to 6)

character values represents activities(6 levels)
("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")   



### activity_levels -> "data.frame" with "character" value

Represents 6 levels of activities



### Y_label_train,Y_label_test

Represents the labeled variants for Y_train and Y_test



### X_merge -> "data.frame" with "numeric" values(10299 observations of 561 variables)

Represents the merged data of X_train and X_test



### Y_label_merge -> "data.frame" with "character" values(10299 observations of 1 variable)

Represents the row-wise merging of Y_label_train and Y_label_test



### complete_merge -> "data.frame" with "numeric" and "character" values(10299 observations of 564 variables)

Represents the column-wise merging of X_merge and Y_merge



### std -> "function(data)"

Returns the standard deviation of observation(square root of variance)



### Y_merge -> "data.frame" with "numeric" values(10299 observations of 1 variable)

Represents the row-wise merging of Y_train and Y_test



### data_merging -> "function(data,Y,label)"

data  -> Subject data(X)
Y     -> Activity data(Y)
label -> Label to be specified(Later,it will be removed from the output file to avoid error)

Return the tidy dataset of average of each variable(subject) and of each activity



### mergeFile -> "data.frame" with "numeric" values(6 observations of 561 variables)

Tidy dataset which is returned by the function "data_merging"
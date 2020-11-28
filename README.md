# Tidying and Analyzing Data

This repository contains scripts of tidying and analyzing data(Used with Samsung Smartphone Data).

## run_analysis.R

### Initializing Working Directory and Setting Train,Test Data Sets

This part of the script is meant to be setting working directory(Directory that consists the Samsung Data) and defining variables for Training and Testing Data Set.
Activity Labels are classified in Y_label_train and Y_label_test.

### Merging Training and Testing Data

Here, training and testing data are merged to form a single data set.
Also, descriptive labels were given for each activity, which was received from 'activity_labels.txt'

### Including Mean and Standard Deviation of each Measurement(I have chosen 1st column for readability)

Mean and Standard Deviation of measurement are merged into the complete dataset(Train,Test Set)

### Creating Second Dataset and Writing in Table Format

This tidy dataset is created for outputting average of each subject for each activity.
Then, the dataset is written in a new file in table format with row.names = FALSE for better readability.



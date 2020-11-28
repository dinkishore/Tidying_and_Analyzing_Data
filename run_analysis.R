# Initializing Working Directory

workdir <- "D:/Workspace of R/UCI HAR Dataset"


# Setting Variables for training and testing set of X and Y

X_train <- read.table(sprintf("%s/train/x_train.txt",workdir))
Y_train <- read.table(sprintf("%s/train/y_train.txt",workdir))
X_test <- read.table(sprintf("%s/test/X_test.txt",workdir))
Y_test <- read.table(sprintf("%s/test/y_test.txt",workdir))


# Setting activity labels

act_labels <- read.table(sprintf("%s/activity_labels.txt",workdir))
activity_levels <- act_labels[[2]]
Y_label_train <- data.frame(Y = activity_levels[Y_train[[1]]])
Y_label_test <- data.frame(Y = activity_levels[Y_test[[1]]])


# Merging Training and Testing Set

names(X_train) <- sub('V','X_for_Subject_',names(X_train),fixed=T)
names(X_test) <- sub('V','X_for_Subject_',names(X_test),fixed=T)
X_merge <- rbind(X_train,X_test)
Y_label_merge <- rbind(Y_label_train,Y_label_test)
complete_merge <- cbind(X_merge,Y_label_merge)


# Including Mean and Standard Deviation of measurement
# (In this case, I have chosen 1st column)

std <- function(data){ sqrt(var(data))}
complete_merge <- cbind(complete_merge,subject_1_mean = mean(complete_merge$X_for_Subject_1))
complete_merge <- cbind(complete_merge,subject_1_std = std(complete_merge$X_for_Subject_1))


# Function for creating second independent tidy data set

Y_merge <- rbind(Y_train,Y_test)
data_merging <- function(data,Y,label){
  mean_activity <- data.frame()
  for (i in 1:dim(data)[2]){
      temp_mean <- tapply(data[[i]],Y[[1]],mean)
      temp_mean <- as.data.frame(temp_mean)
      names(temp_mean) <- sprintf("Mean_Subject_%d",i)
      mean_activity <- data.frame(append(mean_activity,temp_mean))
  }
  row.names(mean_activity) <- label
  mean_activity
}
mergeFile <- data_merging(X_merge,Y_merge,activity_levels)


#Creating and Outputting Table

write.table(mergeFile,sprintf("%s/Output.txt",workdir),row.names = F)


 
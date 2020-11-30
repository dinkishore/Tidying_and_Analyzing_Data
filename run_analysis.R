library(dplyr)

# Initializing Working Directory

workdir <- "D:/Workspace of R/UCI HAR Dataset"


# Setting Variables for training and testing set of X and Y

X_train <- read.table(sprintf("%s/train/x_train.txt",workdir))
Y_train <- read.table(sprintf("%s/train/y_train.txt",workdir))
X_test <- read.table(sprintf("%s/test/X_test.txt",workdir))
Y_test <- read.table(sprintf("%s/test/y_test.txt",workdir))


# Setting activity labels

activity_levels <- read.table(sprintf("%s/activity_labels.txt",workdir))[[2]]
feature_label <- read.table(sprintf("%s/features.txt",workdir))[[2]]
Y_label_train <- data.frame(activity = activity_levels[Y_train[[1]]])
Y_label_test <- data.frame(activity = activity_levels[Y_test[[1]]])


# Merging Training and Testing Set
subject_train <- read.table(sprintf("%s/train/subject_train.txt",workdir))
subject_test <- read.table(sprintf("%s/test/subject_test.txt",workdir))
names(subject_train) <- "Subject"
names(subject_test) <- "Subject"
names(X_train) <- feature_label
names(X_test) <- feature_label
X_train <- cbind(subject_train,X_train)
X_test <- cbind(subject_test,X_test)
X_merge <- rbind(X_train,X_test)
Y_label_merge <- rbind(Y_label_train,Y_label_test)

# Including Mean and Standard Deviation of measurement only

X_merge <- X_merge[grep("mean()|std()|Subject",names(X_merge))]
complete_merge <- cbind(Y_label_merge,X_merge)


# Creating second independent tidy data set
complete_merge <- group_by(complete_merge,activity,Subject) %>% arrange(Subject) %>% summarise_all(mean)


#Creating and Outputting Table

write.table(complete_merge,sprintf("%s/Output.txt",workdir),row.names = F)
 

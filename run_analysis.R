##Load test data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testY <- read.table("./UCI HAR Dataset/test/Y_test.txt")
testX <- read.table("./UCI HAR Dataset/test/X_test.txt")
test <-cbind(subject_test,testY,testX )

## Load train data
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainY <- read.table("./UCI HAR Dataset/train/Y_train.txt")
trainX <- read.table("./UCI HAR Dataset/train/X_train.txt")
train <- cbind(subject_train,trainY,trainX)

##Merges the training and the test sets to create one data set.
full_data <-rbind(test,train)

##get a listing of features
features <- read.table("./UCI HAR Dataset/features.txt")

##Label columns
names(full_data) <- c("subject_id","activity_id",as.character(features$V2))
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(activity_labels) <- c("activity_id","activity_label")

##Label activities
full_data_labeled <- merge(full_data,activity_labels,by="activity_id",all=TRUE)

##Extracts only the measurements on the mean and standard deviation for each measuremen
library(sqldf)
mean_sd_features <- sqldf("select V2 from features where V2 like '%mean()%' or V2 like '%std()%'")
subset_cols <- c("subject_id","activity_label",as.character(mean_sd_features[,1]))
mean_sd_full_data <- full_data_labeled[,subset_cols]

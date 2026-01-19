library(dplyr)
url<-
  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,"dataset.zip", mode="wb")
unzip("dataset.zip")
features<-read.table("UCI HAR Dataset/features.txt")
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")

x_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")

x_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")

x_all<-rbind(x_train,x_test)
y_all<-rbind(y_train,y_test)
subject_all<-rbind(subject_train,subject_test)

colnames(x_all)<-features[,2]
colnames(y_all)<-"activity"
colnames(subject_all)<-"subject"

data_all<-cbind(subject_all,y_all,x_all)
mean_std_cols<-grep("mean\\(\\)|std\\(\\)",colnames(data_all))
data_mean_std<-data_all[, c(1,2,mean_std_cols)]

data_mean_std$activity<-activity_labels[data_mean_std$activity,2]

tidy_data<-data_mean_std %>%
  group_by(subject,activity) %>%
  summarise_all(mean)

write.table(tidy_data,"tidy_dataset.txt",row.name=FALSE)
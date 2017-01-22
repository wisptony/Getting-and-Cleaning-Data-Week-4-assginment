#Set working directory
setwd("~/UCI HAR Dataset")
#read in data
label_train<-read.table("train/y_train.txt")
label_test<-read.table("test/y_test.txt")
trainingset<-read.table("train/X_train.txt")
testingset<-read.table("test/X_test.txt")
subject_train<-read.table("train/subject_train.txt")
subject_test<-read.table("test/subject_test.txt")
features<-read.table("features.txt")
activity_labels<-read.table("activity_labels.txt")
#merge training and testing set data
#merging training and testing set into one set of data
data<-rbind(trainingset,testingset)
#name variables of combined dataset descriptively
valid_col_names<-make.names(names=as.character(features$V2),unique = T,allow_ = T)
names(data)<-valid_col_names
#Extract only the measurements on mean and standard deviation
library(dplyr)
data_selected<-select(data,contains("mean"),contains("std"))
#Use descriptive names to describe activities in the selected data set
#Combine activity label first
activity<-rbind(label_train,label_test)
#Substitue numeric labels with descriptive language
activity<-tolower(as.character(factor(activity$V1,labels=activity_labels$V2)))
#Combine descriptive label with data set
data_selected<-cbind(activity,data_selected)
#Create a second data set with average for each activity and subject
#First, combine object and bind it to data_selected
subject<-rbind(subject_train,subject_test)
colnames(subject)<-"subject"
data_selected<-cbind(subject,data_selected)
#Group data_selected by activity and subject then summarize it with average
library(reshape2)
data_melted<-melt(data_selected, id=c("activity","subject"))
data_summarize<-dcast(data_melted,subject+activity~variable,mean)
write.table(data_summarize,"tidy.txt",row.names = F,quote = F)
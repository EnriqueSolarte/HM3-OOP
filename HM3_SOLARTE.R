#Object Oriented Programing 221841
#Assignment No.3
#ID: 105AG8410
#Name: Bolívar Solarte
#Date:09/12/2016 

#load Data
x_test<-read.table("x_test.txt")
x_train<-read.table("x_train.txt")
y_test<-read.table("y_test.txt")
y_train<-read.table("y_train.txt")
subjectID_test<-read.table("subjectID_test.txt")
subjectID_train<-read.table("subjectID_train.txt")
activities<-read.table("activityID.txt")

#changing names
names(y_train)<-"act"
names(y_test)<-"act"
names(subjectID_test)<-"SubJectID"
names(subjectID_train)<-"SubJectID"
names(activities)<-c("index","activity")


#Merge dataSet TRAIN and dataSet TEST
train<-data.frame(x_train,y_train,subjectID_train)
test<-data.frame(x_test,y_test,subjectID_test)

#combinding DATASETS
da<-rbind(train,test)

da<-merge(x=da,y=activities,by.x = "act",by.y = "index")
#Removing data
rm(test);rm(train);rm(activities)
rm(x_test);rm(x_train);rm(y_test);rm(y_train);rm(subjectID_test);rm(subjectID_train);

#Plot Histogram for Activities
ggplot(da,aes(x = da$activity)) + 
geom_histogram(stat="count",colour="green",fill="blue",alpha=0.4)  +
xlab("Activities")+ ggtitle("Histogram for Activities") + ylab("Frequecy")

#Plot Histogram for subjects
ggplot(da,aes(x = da$SubJectID)) + 
geom_histogram(colour="blue",fill="green",alpha=0.4,binwidth = 0.5,bins = 35)  +
xlab("Subjects")+ ggtitle("Histogram for Subjects") + ylab("Frequecy")

#Plot Histogram for subjects and activities
ggplot(da,aes(x = da$SubJectID,colour=da$activity,fill=da$activity)) +  
geom_histogram(alpha=0.4,binwidth = 0.5,bins = 35)  +
xlab("Subjects")+ ggtitle("Histogram for Subjects") + ylab("Frequecy")





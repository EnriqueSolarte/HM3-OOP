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
names(y_train)<-"activity"
names(y_test)<-"activity"
names(subjectID_test)<-"SubJectID"
names(subjectID_train)<-"SubJectID"
names(activities)<-c("index","act")


#Marge dataSet TRAIN and dataSet TEST
train<-data.frame(x_train,y_train,subjectID_train)
test<-data.frame(x_test,y_test,subjectID_test)
#removing data
rm(x_test);rm(x_train);rm(y_test);rm(y_train);rm(subjectID_test);rm(subjectID_train);

#combinding DATASETS
da<-rbind(train,test)
#Removing data
rm(test);rm(train)


da2<-merge(x=da,y=activities,by.x = "activity",by.y = "index")



ggplot(da,aes(x = da$activity)) + 
geom_histogram(binwidth = 0.2)  + xlab("Activities")

ggplot(da2,aes(x = da2$act)) + 
  geom_histogram(stat="count")  + xlab("Activities")

activities





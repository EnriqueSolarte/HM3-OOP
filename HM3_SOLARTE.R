

#load Data
x_test<-read.table("x_test.txt")
x_train<-read.table("x_train.txt")
y_test<-read.table("y_test.txt")
y_train<-read.table("y_train.txt")
subjectID_test<-read.table("subjectID_test.txt")
subjectID_train<-read.table("subjectID_train.txt")


names(y_train)<-"activity"
names(y_test)<-"activity"
names(subjectID_test)<-"SubJectID"
names(subjectID_train)<-"SubJectID"

rm(x_test);rm(x_train);rm(y_test);rm(y_train);rm(subjectID_test);rm(subjectID_train);

train<-data.frame(x_train,y_train,subjectID_train)
test<-data.frame(x_test,y_test,subjectID_test)


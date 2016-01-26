#Preparation of Samsung Movement Data for analysis.
#Data available from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#read.custom <- function(x){
#        read.table(x,sep=" ")
#}
#Read in All Data
#Read y_train
#ytrain <- read.table("train/y_train.txt", sep = " ")
#Read X_train
xtrain <- read.table("train/X_train.txt", sep = " ")
#Read subject_train
#subtrain <- read.table("train/subject_train.txt", sep = " ")
#Read y_test
#ytest <- read.table("test/y_test.txt", sep = " ")
#Read x_test
#xtest <- read.table("test/X_test.txt", sep = " ")
#Read subject_test
#subtest <- read.table("test/subject_test.txt", sep = " ")
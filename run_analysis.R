#Preparation of Samsung Movement Data for analysis.
#Data available from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
read.custom <- function(x){
        read.table(x,sep=" ")
}
#Read in All Data
#Read y_train
ytrain <- read.custom("train/y_train.txt")
#Read X_train
xtrain <- read.custom("train/X_train.txt")
#Read subject_train
subtrain <- read.custom("train/suject_train.txt")
#Read y_test
ytest <- read.custom("test/y_test.txt")
#Read x_test
xtest <- read.custom("test/X_test.txt")
#Read subject_test
subtest <- read.custom("test/subject_test.txt")
#Preparation of Samsung Movement Data for analysis.
#Data available from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
library(dplyr)
library(tidyr)
#Read in All Data
#Read y_train
ytrain <- read.table("train/y_train.txt", sep = "")
#Read X_train
xtrain <- read.table("train/X_train.txt", sep = "")
#Read subject_train
subtrain <- read.table("train/subject_train.txt", sep = "")
#Read y_test
ytest <- read.table("test/y_test.txt", sep = "")
#Read x_test
xtest <- read.table("test/X_test.txt", sep = "")
#Read subject_test
subtest <- read.table("test/subject_test.txt", sep = "")

###Bind vertically
xdat <- bind_rows(xtrain,xtest)
ydat <- bind_rows(ytrain,ytest)
subdat <- bind_rows(subtrain,subtest)

#remove test and train dataframes.
rm("xtest","xtrain","ytest","ytrain","subtest","subtrain")

###Add Descriptive Headers to Data.
featurenames <- read.table("features.txt") %>% select(V2) %>% mutate(V2 = as.character(V2))
names(xdat) <- featurenames$V2
rm("featurenames")

names(ydat) <- "Action.Performed"
names(subdat) <- "Participant.ID"

###Prepare xdat
#find and remove unwanted variables
#Assignment calls for only mean and Standard Deviation values.
#I am taking this to mean only the variables that specifically end in "mean()" or "std()"
wanted <- (grepl("mean\\(\\)", names(xdat))|grepl("std\\(\\)", names(xdat)))

xdat <- xdat[which(wanted)]
rm("wanted")

### Prepare ydat
#we need to replace these numbers with useful factor names.
activity <- as.character(read.table("activity_labels.txt")$V2)
ydat <- ydat%>% mutate(Action.Performed = activity[Action.Performed])

### Prepare subdat

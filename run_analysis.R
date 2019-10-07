## Download file from location and unzip
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","UCI HAR Dataset.zip")
unzip("UCI HAR Dataset.zip")

## Read files and assign to datasets (data frames)
features <- read.table("./UCI HAR Dataset/features.txt", sep = "")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt", sep = "")
testData <- read.table("./UCI HAR Dataset/test/X_test.txt", sep = "")
testActivities <-read.table("./UCI HAR Dataset/test/y_test.txt", sep = "")
testSubjects <-read.table("./UCI HAR Dataset/test/subject_test.txt", sep = "")
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt", sep = "")
trainActivities <-read.table("./UCI HAR Dataset/train/y_train.txt", sep = "")
trainSubjects <-read.table("./UCI HAR Dataset/train/subject_train.txt", sep = "")

## Adjust the labes in test and train datasets
names(testData) <- features$V2
names(trainData) <- features$V2

## Add subjects & activities in test and train datasets
testData["subject"] = testSubjects$V1
trainData["subject"] = trainSubjects$V1
testData["activityNumeric"] = testActivities$V1
trainData["activityNumeric"] = trainActivities$V1

## Merge test & train datasets
totalData <- rbind(testData,trainData)

## Join totalData with activties to retrieve descriptive activity names
totalData <- merge(x= totalData, y=activities, by.x = "activityNumeric", by.y = "V1")

## Rename newly added column to a meaningful name
colnames(totalData)[colnames(totalData)=="V2"] <- "activityType"

## Select only mean & Std columns (along with subject and activityType)
totalData <- select(totalData, c(subject, activityType, grep("mean\\(\\)|std\\(\\)", names(totalData), value = T)))

## Clean variable names (remove brakets and replace dashes with underscores)
names(totalData) <- gsub("-","_",gsub("\\(\\)", "", names(totalData)))

#############################
## Create new tidy dataset ##
#############################

## Group previous dataset by activity and subject and then summarize and produce mean for each variable
tidyData <- totalData %>%
            group_by(activityType, subject) %>%
            summarise_all(mean)

## Export data to file
write.table(tidyData, "tidyData.txt", row.names = F)
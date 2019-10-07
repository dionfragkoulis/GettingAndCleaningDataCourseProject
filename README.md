This repository is used to store files related to the course project of the "Getting and Cleaning Data" course inclused in the "Data Science Specialization".
The repository contains the following files:

* **tidyData.csv**
    The tidy dataseet containing only the average of each variable for each activity and each subject. The file has appropriate variables labeling

* **run_analysis.R**
	The source code used to get and clean the data in order to create the final output (tidyData.csv) file.
	
	1. Download the zip file from the given directory and unzip it
	1. Read the unzipped files and assigned them into data frames:
		* features.txt
		* activity_labels.txt
		* /test/X_test.txt
		* /test/y_test.txt
		* /test/subject_test.txt
		* /train/X_train.txt
		* /train/y_train.txt
		* /train/subject_train.txt
	1. Assign labels to test and train datasets from using dataset from features.txt
	1. Add Subjects and Activities to test and train datasets by using the datasets from activity_labels.txt, /test/subject_test.txt and /train/subject_train.txt
	1. Combine test and train datasets to create a new total dataset (totalData)
	1. Join (merge) totalData with dataset from activity_labels.txt in order to obtain the discriptive activity names
	1. Set the header for discriptive activity names (activityTypes)
	1. Isolate (select) only the desired columns:
		* mean() columns
		* std() columns
		* subjects
		* activityTypes
	1. Clean variable names (remove brakets and replace dashes with underscores) from the new dataset
	1. Create a new dataset (tidyData) by grouping totalData by subjects and activities and then summarize it to calculate the mean for each variable (by studend and by activity)
	1. Write the tidy dataset to a file (tidyData.csv)
	
* **README.md**
    This file
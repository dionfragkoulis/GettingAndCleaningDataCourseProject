### Code book for tidyData.csv

* The process followed includes the steps below:

	* Contents from **/test/X_test.txt** and **features.txt** were combined to produce a dataset with meaningful variable labels (**testData**)
	* Contents from **/train/X_train.txt** and **features.txt** were combined to produce a dataset with meaningful variable labels (**trainData**)
	* Contents from **/test/subject_test.txt** and **/train/subject_train.txt** were combinded with **testData ** and **trainData** respectively in order to provide the subject information
	* Contents from **/test/y_test.txt"** and **/train/y_train.txt"** were combined with with **testData ** and **trainData** respectively in order to provide the activity information
	* Contents from **testData ** and **trainData** were combined in order to produce a single file containing all observations (**totalData**)
	* **totalData** are enriched with descriptive activity information by joining with contents from **activity_labels.txt"" 
	* **totalData** are subset so they contain particular columns:
		* subject
		* activities
		* all mean() columns
		* all std() columns
	* **totalData** variable names were cleansed in order to omit brackets and replace dashes with underscores
	* **totalData** are grouped by activtiy and by subject and then summarized to produced the mean for each column (by activity and by subject) and a new tidy dataset is generated (**tidyData**)
	
* The **tidyData.csv** file contains the following variables:

	Variable | Description
	---------|-------------
	activityType | Derived from **activity_labels.txt** joined with the **totalData** dataset
	subject | Derived from **/test/subject_test.txt** and **/train/subject_train.txt** joined with **testData** and **trainData* respectively
	tBodyAcc_mean_Z | Derived from **tBodyAcc-mean()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tGravityAcc_mean_X | Derived from **tGravityAcc-mean()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tGravityAcc_std_Y | Derived from **tGravityAcc-std()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAccJerk_mean_Z | Derived from **tBodyAccJerk-mean()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyro_mean_X | Derived from **tBodyGyro-mean()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyro_std_Y | Derived from **tBodyGyro-std()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyroJerk_mean_Z | Derived from **tBodyGyroJerk-mean()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAccMag_mean | Derived from **tBodyAccMag-mean()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAccJerkMag_mean | Derived from **tBodyAccJerkMag-mean()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyroJerkMag_mean | Derived from **tBodyGyroJerkMag-mean()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAcc_mean_Z | Derived from **fBodyAcc-mean()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAccJerk_mean_X | Derived from **fBodyAccJerk-mean()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAccJerk_std_Y | Derived from **fBodyAccJerk-std()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyGyro_mean_Z | Derived from **fBodyGyro-mean()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAccMag_mean | Derived from **fBodyAccMag-mean()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyBodyGyroMag_mean | Derived from **fBodyBodyGyroMag-mean()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAcc_std_X | Derived from **tBodyAcc-std()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tGravityAcc_mean_Y | Derived from **tGravityAcc-mean()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tGravityAcc_std_Z | Derived from **tGravityAcc-std()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAccJerk_std_X | Derived from **tBodyAccJerk-std()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyro_mean_Y | Derived from **tBodyGyro-mean()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyro_std_Z | Derived from **tBodyGyro-std()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyroJerk_std_X | Derived from **tBodyGyroJerk-std()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAccMag_std | Derived from **tBodyAccMag-std()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAccJerkMag_std | Derived from **tBodyAccJerkMag-std()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyroJerkMag_std | Derived from **tBodyGyroJerkMag-std()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAcc_std_X | Derived from **fBodyAcc-std()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAccJerk_mean_Y | Derived from **fBodyAccJerk-mean()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAccJerk_std_Z | Derived from **fBodyAccJerk-std()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyGyro_std_X | Derived from **fBodyGyro-std()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAccMag_std | Derived from **fBodyAccMag-std()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyBodyGyroMag_std | Derived from **fBodyBodyGyroMag-std()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAcc_mean_X | Derived from **tBodyAcc-mean()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAcc_std_Y | Derived from **tBodyAcc-std()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tGravityAcc_mean_Z | Derived from **tGravityAcc-mean()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAccJerk_mean_X | Derived from **tBodyAccJerk-mean()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAccJerk_std_Y | Derived from **tBodyAccJerk-std()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyro_mean_Z | Derived from **tBodyGyro-mean()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyroJerk_mean_X | Derived from **tBodyGyroJerk-mean()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyroJerk_std_Y | Derived from **tBodyGyroJerk-std()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tGravityAccMag_mean | Derived from **tGravityAccMag-mean()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyroMag_mean | Derived from **tBodyGyroMag-mean()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAcc_mean_X | Derived from **fBodyAcc-mean()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAcc_std_Y | Derived from **fBodyAcc-std()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAccJerk_mean_Z | Derived from **fBodyAccJerk-mean()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyGyro_mean_X | Derived from **fBodyGyro-mean()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyGyro_std_Y | Derived from **fBodyGyro-std()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyBodyAccJerkMag_mean | Derived from **fBodyBodyAccJerkMag-mean()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyBodyGyroJerkMag_mean | Derived from **fBodyBodyGyroJerkMag-mean()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAcc_mean_Y | Derived from **tBodyAcc-mean()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAcc_std_Z | Derived from **tBodyAcc-std()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tGravityAcc_std_X | Derived from **tGravityAcc-std()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAccJerk_mean_Y | Derived from **tBodyAccJerk-mean()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyAccJerk_std_Z | Derived from **tBodyAccJerk-std()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyro_std_X | Derived from **tBodyGyro-std()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyroJerk_mean_Y | Derived from **tBodyGyroJerk-mean()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyroJerk_std_Z | Derived from **tBodyGyroJerk-std()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tGravityAccMag_std | Derived from **tGravityAccMag-std()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	tBodyGyroMag_std | Derived from **tBodyGyroMag-std()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAcc_mean_Y | Derived from **fBodyAcc-mean()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAcc_std_Z | Derived from **fBodyAcc-std()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyAccJerk_std_X | Derived from **fBodyAccJerk-std()-X** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyGyro_mean_Y | Derived from **fBodyGyro-mean()-Y** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyGyro_std_Z | Derived from **fBodyGyro-std()-Z** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyBodyAccJerkMag_std | Derived from **fBodyBodyAccJerkMag-std()** from **totalData** dataset as the mean of the value when grouped by activity and subject
	fBodyBodyGyroJerkMag_std | Derived from **fBodyBodyGyroJerkMag-std()** from **totalData** dataset as the mean of the value when grouped by activity and subject
# Coursera-Getting and cleaning data Course Project
The repo has the course project files for Getting and Cleaning Data course of Coursera

The major part of the project is creating a script "run_analysis.R" which reads the datasets collected from  the accelerometers from the Samsung Galaxy S smartphone, merges the datasets into one big dataset, renames the column names appropriately and create a summarized tidy dataset representing the average of each feature variables corresponding to mean and standard deviation measurements for each activity and each subject.

##Assumptions before running the script
1. The working directory of run_analysis.R file should be the one where the samsung dataset is present. The file should be present inside the dataset directory beside the folders which contain testing and training data.
2. dplyr packages should be installed and loaded in the environment.

##Script Description:  
1.  First read the data from the files into the environment. There are a total of 8 files to be read:
    1. features.txt : This table contains the names of all the features which were measured in the experiment. We would be needing this to name the variables of final tidy dataset.
    2. activity_labels.txt : This contains the names of the 6 activities which were performed by the subjects which include walking, walking upstairs, walking downstairs, sitting, standing and Laying.
    3. subject_train.txt : Contains the training data regarding the 30 subjects who participated in the experiment.
    4. subject_test.txt : Contains the testing data regarding the 30 subjects who participated in the experiment.
    5. x_train.txt
    6. x_test.txt
    7. y_train.txt
    8. y_test.txt
  The four files above contain all the measurements which are divided into training and test data sets.
2. Merge the sepearte tables which have been read earlier. Since we have to make complete set out of training and test set, we use the bind_rows function on the tables. After making all the rows equal, use the bind_cols to rejoin the three seperate tables into one table which accomplishes the task of merging the training and test sets.
3. The dataset now does not have proper column names. Name the variables of features by using the names which was extracted in step 1 from activity_labels.txt.
4. The data now contains duplicate columns which need to be eliminated. Eliminate the columns which leaves with a complete merged dataset.
5. Extract only the measurements that are calculating mean and standard deviation. This is done using the grepl function inside the select function. The variable names that contain the strings "-mean()" and "-std()" are the ones that only deal with mean and standard deviation of measures.
6. The dataset now contains 10299 rows and 68 columns.
7. Mutate the dataset such that integer values for activity in "activity" variable are replaced with corresponding activity names.This "integer values to names" combination information is retrived from activity_labels data which was read in step 1.
8. Update the variable names such that they become easier to write by making all the cases lower, and removing special characters hypen and braces.
9. Group by on subjectid and activity and summarize on the mean for each variable.
10. Final dataset is not comprised of 180 Rows and 68 Columns. Since there are 30 subjects and each subject did all the three activities the total rows become 6*30 = 180. 
11. Write the tidy data obtained using write.table

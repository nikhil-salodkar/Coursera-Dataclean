#First reading all the relevant data into environment.
#The working directory of script should be where the dataset files and test and train folders are present.
features <- read.table("features.txt")
features <- features$V2
features <- as.character(features)
activity_labels <- read.table("activity_labels.txt")
activity_labels$V2 <- as.character(activity_labels$V2)
subject_train <- read.table("./train/subject_train.txt")
subject_test <- read.table("./test/subject_test.txt")
x_train <- read.table("./train/x_train.txt")
y_train <- read.table("./train/y_train.txt")
x_test <- read.table("./test/x_test.txt")
y_test <- read.table("./test/y_test.txt")

#Reading of data completed.
#Now merging the training and test set.
#First we will bind the data row wise for all the variables such that all the variables have same rows.

binded_data <- bind_rows(x_train,x_test)
binded_subject <- bind_rows(subject_train,subject_test)
binded_y <- bind_rows(y_train,y_test)
names(binded_subject) <- c("subjectid")
names(binded_y) <- c("activity")

#Binding row wise completed. Now all the variables have same number of rows.
#Now Bind all the three variables into one table column wise. This will result in completely merged data
#containing Subject id's, all the Features and the Activity y with rows 10299 rows and 563 columns.

bulk_data <- bind_cols(binded_subject,binded_data,binded_y)
#names to first and last column is already given  as subjectid and activity. Now renaming all the feature
#variables according to the features names we have extracted from features.txt
names(bulk_data)[2:562] <- features

#After this when we try to do a select operation on the data, it gives error as duplicate columns.
#We need to remove the duplicate columns first which is done by the below script.
bulk_data <- bulk_data[,!duplicated(colnames(bulk_data))]

#now selecting only the columns that deals with on the mean and standard deviation for each measurement.
relevant_features <- features[grepl("-mean()",features,fixed=TRUE)|grepl("-std()",features,fixed=TRUE)]
selected_data <- select(bulk_data,subjectid,one_of(relevant_features),activity)

#The data is now rid of duplicate columns.
#Now to perform the step 3 in the instructions for the course project, mutating the data such that
#integer values for activity in activity variable are replaced with corresponding activity names.
#This integer values to names combination information is retrived from activity_labels.txt data. 
selected_data <- mutate(selected_data,activity = activity_labels[activity,2])

#now to perform step 4 in the course project instructions renaming the variables properly so that data analysis in
#future with data becomes easier. Converting all the variable names to lower case and removing the hyphen and braces character.
names(selected_data) <- tolower(names(selected_data))
names(selected_data) <- gsub("-","",names(selected_data))
names(selected_data) <- sub("()","",names(selected_data),fixed = TRUE)


#Now performing group by on subjectid and activity and summarizing on the mean for each variable.
my_group <- group_by(selected_data,subjectid,activity)
tidy_data <- summarise_each(my_group,funs(mean))

#The tidy_data table contains the final deliverable in wide format as asked in the course project instructions.

write.table(tidy_data,file="tidy_data.txt",row.name = FALSE)




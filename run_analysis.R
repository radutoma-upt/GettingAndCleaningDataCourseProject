# 0. Preparation Stage

# Loading required packages or install it if not exist
if(!library(dplyr, logical.return = TRUE)) {
  install.packages('dplyr')

}

# Initialize variables
folderName <- 'UCI HAR Dataset'
fileName <- 'getdata_projectfiles_UCI HAR Dataset.zip'
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Download the dataset

# Checking if folder exists
if(!file.exists(folderName)) {
  # Checking if archive already exists.
  if(!file.exists(fileName)) {
    # If the file does not exist download it
    download.file(fileURL, fileName, method="curl")
  }
  # Unzip the file
  unzip(fileName)
}

# 1. Merges the training and the test sets to create one data set.

  # Grab the complete list of features and activities
  features <- read.table(file.path(folderName, 'features.txt'), col.names = c("n","functions"))
  activities <- read.table(file.path(folderName, 'activity_labels.txt'), col.names = c("code", "activity"))
 
  # Read in the data from the test sets
  subject_test <- read.table(file.path(folderName, 'test', 'subject_test.txt'), col.names = "subject")
  x_test <- read.table(file.path(folderName, 'test', 'X_test.txt'), col.names = features$functions)
  y_test <- read.table(file.path(folderName, 'test', 'y_test.txt'), col.names = "code")
  
  # Read in the data from the training sets
  subject_train <- read.table(file.path(folderName, 'train', 'subject_train.txt'), col.names = "subject")
  x_train <- read.table(file.path(folderName, 'train', 'X_train.txt'), col.names = features$functions)
  y_train <- read.table(file.path(folderName, 'train', 'y_train.txt'), col.names = "code")

  # Bind the rows for each of the data sets together
  Subject <- rbind(subject_train, subject_test)
  X <- rbind(x_train, x_test)
  Y <- rbind(y_train, y_test)
  
  # Merges the training and the test sets 
  FullData <- cbind(Subject, Y, X)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

  # Select to the features that contains mean and standard deviation 
  TidyData <- FullData %>% select(subject, code, contains("mean"), contains("std"))

# 3. Uses descriptive activity names to name the activities in the data set
  
  # Update the activity name
  TidyData$code <- activities[TidyData$code, 2]
  
# 4. Appropriately labels the data set with descriptive variable names. 
 
# Reading the features_info.txt one can say that some of the acronyms can be replaced with descriptive names  
  names(TidyData)[2] = "activity"
  names(TidyData)<-gsub("^t", "Time", names(TidyData))
  names(TidyData)<-gsub("^f", "Frequency", names(TidyData))
  names(TidyData)<-gsub("Acc", "Accelerometer", names(TidyData))
  names(TidyData)<-gsub("Gyro", "Gyroscope", names(TidyData))
  names(TidyData)<-gsub("angle", "Angle", names(TidyData))
  names(TidyData)<-gsub("gravity", "Gravity", names(TidyData))
  names(TidyData)<-gsub("BodyBody", "Body", names(TidyData))
  names(TidyData)<-gsub("Mag", "Magnitude", names(TidyData))
  names(TidyData)<-gsub("-mean()", "Mean", names(TidyData), ignore.case = FALSE)
  names(TidyData)<-gsub("-std()", "STD", names(TidyData), ignore.case = FALSE)
  names(TidyData)<-gsub("-freq()", "Frequency", names(TidyData), ignore.case = FALSE)
  
 # 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

  FinalTidyData <- TidyData %>%
    group_by(subject, activity) %>%
    summarise_all(funs(mean))
  # Send the data out to a file
  write.table(FinalTidyData, "FinalTidyData.txt", row.name=FALSE)
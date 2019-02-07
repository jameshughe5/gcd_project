run_analysis.R

#Load dplyr package

          library(dplyr)

##### Step 0 --> Load the data from the internet to working directory and unzip

          fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles
          %2FUCI%20HAR%20Dataset.zip"
          fileName <- "UCI HAR Dataset.zip"
  
         if (!file.exists(fileName)) {
         download.file(fileURL, fileName, mode = "wb")
}


        dataPath <- "UCI HAR Dataset"
        if (!file.exists(dataPath)) {
        unzip(fileName)
}


##### Step 0.1 --> Read data from directory into R
        
        
# 0.1.1 --> Read training set data
        
        training_subjects <- read.table(file.path(dataPath, "train", "subject_train.txt"))
        training_values <- read.table(file.path(dataPath, "train", "X_train.txt"))
        training_activity <- read.table(file.path(dataPath, "train", "y_train.txt"))
        
# 0.1.2 --> Read test set data
        
        test_subjects <- read.table(file.path(dataPath, "test", "subject_test.txt"))
        test_values <- read.table(file.path(dataPath, "test", "X_test.txt"))
        test_activity <- read.table(file.path(dataPath, "test", "y_test.txt"))
        
# 0.1.3 --> Read the feature labels
        
        features <- read.table(file.path(dataPath, "features.txt"), as.is = TRUE)
        
# 0.1.4 --> Read the activity labels
        
        activities <- read.table(file.path(dataPath, "activity_labels.txt"))
        colnames(activities) <- c("activityID", "activityLabel")
        

#### Step 1.0 --> Bind tables to create merged data set
        
        train <- cbind(training_subjects, training_values, training_activity)
        test <- cbind(test_subjects, test_values, test_activity)
        human_activity <- rbind(test, train)
        
# 1.1 --> Remove unconcatenated objects from global environment
           
        rm(training_subjects, training_values, training_activity,
           test_subjects, test_values, test_activity)
        
# 1.2 --> Assign column names to the data set 
        
        colnames(human_activity) <- c("subject", features[,2], "activity")
        
#### Step 2 --> Extract only mean and standard deviation measurements from dataset
        
        cols2keep <- grepl("subject|mean|std|activity", colnames(human_activity))
        human_activity <- human_activity[,cols2keep]
        
#### Step 3 --> Use descriptive names for each activity within the dataset 
        
        human_activity$activity <- factor(human_activity$activity, 
              levels = activities[,1], labels = activities[,2])
        
#### Step 4 --> Label data set with descriptive variable names
 
# 4.1 --> Create character vector of variable names for data set 
        
        humanColNames <- colnames(human_activity)
        
# 4.2 --> Tidy up variable names     
        
        humanColNames <- gsub("[\\(\\)-]", "", humanColNames)
        humanColNames <- gsub("Mag", "Magnitude_", humanColNames)
        humanColNames <- gsub("Freq", "Frequency_", humanColNames)
        humanColNames <- gsub("mean", "Mean_", humanColNames)
        humanColNames <- gsub("std", "StandardDeviation_", humanColNames)
        humanColNames <- gsub("^t", "timeDomain_", humanColNames)
        humanColNames <- gsub("^f", "frequencyDomain_", humanColNames)
        humanColNames <- gsub("Acc", "Accelerometer_", humanColNames)
        humanColNames <- gsub("Gyro", "Gyrometer_", humanColNames)
        humanColNames <- gsub("BodyBody", "Body_", humanColNames)
        humanColNames <- gsub("Gravity", "Gravity_", humanColNames)
        humanColNames <- gsub("Body", "Body_", humanColNames)
        humanColNames <- gsub("Jerk", "Jerk_", humanColNames)
        
# 4.3 --> Apply variable names to dataframe
        
        colnames(human_activity) <- humanColNames
        
#### Step 5 --> Create tidy data set with average of each activity and each of subject
        
        human_activity_means <- human_activity %>% 
          group_by(subject, activity) %>%
          summarise_all(funs(mean))
        
# 5.1 --> Export human_activity_means to text file tidy_data.txt
        
        write.table(human_activity_means, "tidy_data.txt", row.names = FALSE, 
                    quote = FALSE)
           
        
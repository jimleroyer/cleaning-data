# Load dependencies
library(dplyr)
library(data.table)

options(stringsAsFactors=FALSE)

# Download & extract data if not existing in workspace
zip_file <- "uci_har_dataset.zip"
if (!file.exists(zip_file)) {
  url_data <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url_data, zip_file, method = "curl")
  unzip(zip_file, overwrite = F)
}

# Test data
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt") # IDs of the subject
test_x <- read.table("UCI HAR Dataset/test/X_test.txt") # rows of the test results
test_y <- read.table("UCI HAR Dataset/test/Y_test.txt", col.names=c("activity_id")) # activities of the test rows

# Training data
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
train_x <- read.table("UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("UCI HAR Dataset/train/Y_train.txt", col.names=c("activity_id"))

# Labels and references
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activity_id", "activity"))
features <- read.table("UCI HAR Dataset/features.txt", col.names=c("id", "feature"))

# Merge results of rows altogether
subject <- rbind(test_subject, train_subject)
activity <- rbind(test_y, train_y)
x <- rbind(test_x, train_x)

# Associates the activity ID with its matching activity label
activities$activity <- tolower(activities$activity) # lower activity labels
activity <- activity %>% inner_join(activities, by = "activity_id")

# Merge results of columns altogether
results <- cbind(subject, activity, x)

# Rename columns with meaningful names
normalized_names <- make.names(features$feature, unique=TRUE, allow_ = TRUE)
names(results) <- append(c("subject", "activity_id", "activity"), normalized_names)

# Filter in columns with standard deviation and mean in their names
filtered <- results %>% select(subject, activity, contains("std"), contains("mean"))

# Save the tidy data (as represented by step 1-4 requirements)
write.csv(filtered, "tidy_data.csv", row.names = F)

# Calculate mean on selected columns, grouped by subjects and activities
averages <- filtered %>% 
  group_by(subject, activity) %>%
  summarise_each(funs(mean))

# Save the tidy data (as represented by step 1-4 requirements)
write.csv(averages, "tidy_data_mean.csv", row.names = F)


# Let's see some of the final aggregated values!
print(averages, n=50)

library(data.table)

# Read activity labels and features
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
features <- read.table("./UCI HAR Dataset/features.txt")[,2]
# Extract the features that are either mean or stdev from the entire set of features
features_of_interest <- grepl("mean|std", features)

# Read the test data
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
# apply headers to X_test
names(X_test) <- features
# filter down X_test data to the desired set of features
X_test <- X_test[,features_of_interest]
# Add activity data to y_test
y_test[,2] <- activity_labels[y_test[,1]]
# add headers to y_test
names(y_test) <- c("activity_id", "activity_label")
# add header to subject_test
names(subject_test) <- "subject"
# merge the columns from all the 3 tables
test_data <- cbind(as.data.table(subject_test), y_test, X_test)

# Read the train data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
# apply headers to X_train
names(X_train) <- features
# filter down X_train to the desired set of features
X_train <- X_train[,extract_features]
# add activity data to y_train
y_train[,2] <- activity_labels[y_train[,1]]
# add headers to y_train
names(y_train) <- c("activity_id", "activity_label")
# add headers to subject_train
names(subject_train) <- "subject"
# merge the columns from all 3 tables
train_data <- cbind(as.data.table(subject_train), y_train, X_train)

# Merge the two tables (rows)
all_data <- rbind(test_data, train_data)

# find out columns for which we compute mean
category_labels <- c("subject", "activity_id", "activity_label")
data_labels <- setdiff(colnames(all_data), category_labels)

# Create a new clean dataset that's grouped by subject and activity and mean is computed for all columns
new_data <- all_data[, lapply(.SD, mean, na.rm = TRUE), by="subject,activity_label", .SDcols=data_labels]
write.csv(new_data, 'tidy_dataset.csv', row.names = FALSE)
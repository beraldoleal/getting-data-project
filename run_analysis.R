library(plyr)

data_dir <- "UCI HAR Dataset/"

# Step 1
x_train <- read.table(paste(data_dir, "train/X_train.txt", sep=''))
y_train <- read.table(paste(data_dir, "train/y_train.txt", sep=''))
subject_train <- read.table(paste(data_dir, "train/subject_train.txt", sep=''))

x_test <- read.table(paste(data_dir, "test/X_test.txt", sep=''))
y_test <- read.table(paste(data_dir, "test/y_test.txt", sep=''))
subject_test <- read.table(paste(data_dir, "test/subject_test.txt", sep=''))

# create merged data set
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

# Step 2
features <- read.table(paste(data_dir, "features.txt", sep=''))

mean_and_std <- grep("-(mean|std)\\(\\)", features[, 2])

x_data <- x_data[, mean_and_std]

# correct the column names
names(x_data) <- features[mean_and_std, 2]

# Step 3

activities <- read.table(paste(data_dir, "activity_labels.txt", sep=''))
y_data[, 1] <- activities[y_data[, 1], 2]
names(y_data) <- "activity"

# Step 4

names(subject_data) <- "subject"
all_data <- cbind(x_data, y_data, subject_data)

# Step 5
averages_data <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(averages_data, "tidy_data.txt", row.name=FALSE)

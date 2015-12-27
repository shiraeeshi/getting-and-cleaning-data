analyze <- function() {
    setwd('UCI HAR Dataset')
    features <- read.table('features.txt')
    featureNames <- make.names(features[, 2])
    indices <- grepl('(\\.mean\\.\\.)|(\\.std\\.\\.)', featureNames)
    nameit <- function(istoselect) if (istoselect) "numeric" else "NULL"
    colClasses <- sapply(indices, nameit)
    xtest <- read.table("test/X_test.txt", colClasses = colClasses)
    ytrain <- read.table("test/y_test.txt", colClasses = c("numeric"))
    
    xtrain <- read.table("train/X_train.txt", colClasses = colClasses)
    ytrain <- read.table("train/y_train.txt", colClasses = c("numeric"))
    
    subject_test <- read.table("test/subject_test.txt", colClasses = c("integer"))
    subject_train <- read.table("train/subject_train.txt", colClasses = c("integer"))
    
    labelit <- function(num) {
        if (num == 1) "Walking" 
        else if (num == 2) "Walking Upstairs" 
        else if (num == 3) "Walking Downstairs" 
        else if (num == 4) "Sitting" 
        else if (num == 5) "Standing" 
        else if (num == 6) "Laying"
    }
    
    
    selectedNames <- featureNames[indices]
    
    names(xtest) <- selectedNames
    names(xtrain) <- selectedNames
    xtotal <- rbind(xtest, xtrain)
    
    ytotal <- rbind(ytest, ytrain)
    labels_total <- sapply(ytotal$V1, labelit)
    subject_total <- rbind(subject_test, subject_train)
    
    xtotal$subject <- subject_total$V1
    xtotal$activity <- labels_total
    result <- xtotal %>% group_by(subject, activity) %>% summarise_each(funs(mean))
    setwd('..')
    result
}

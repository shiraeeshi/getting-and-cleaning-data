# getting-and-cleaning-data

There is an 'analyze' function declared in the 'run_analysis.R' file. This function does following:
 - enters 'UCI HAR Dataset' folder, where all Samsung data reside.
 - reads 'features.txt' file
 - determines indices of columns with names containing 'mean' or 'std' part.
 - reads train and test data 
 - sets names to data frames
 - merges test and train data into single data frame
 - performs grouping and summarizing on data

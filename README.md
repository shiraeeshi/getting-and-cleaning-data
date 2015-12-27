# getting-and-cleaning-data

There is an 'analyze' function declared in the 'run_analysis.R' file. This function does following:
1) enters 'UCI HAR Dataset' folder, where all Samsung data reside.
2) reads 'features.txt' file
3) determines indices of columns with names containing 'mean' or 'std' part.
4) reads train and test data
5) sets names to data frames
6) merges test and train data into single data frame
7) performs grouping and summarizing on data

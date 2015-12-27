# getting-and-cleaning-data

There is an 'analyze' function declared in the 'run_analysis.R' file. This function does following:
 - enters 'UCI HAR Dataset' folder, where all Samsung data reside.
 - reads 'features.txt' file
 - determines indices of columns with names containing 'mean' or 'std' part.
 - reads train and test data 
 - sets names to data frames
 - merges test and train data into single data frame
 - performs grouping and summarizing on data

## dependencies

The code in run_analysys.R file uses functions from 'magrittr' and 'dplyr' packages. Theese libraries should be loaded in the workspace (by invoking library('magrittr') and library('dplyr')) before the 'analyze' function invoking.

'UCI HAR Dataset' folder should be in the workspace. This folder is contained in the archive that is available here:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

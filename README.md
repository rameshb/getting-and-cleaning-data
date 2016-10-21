# Getting and cleaning data
Assignment for getting and cleaning data course in coursera

## Requirements
* Ensure that R is installed
* Enusre that data.table package is installed
* Download and extract dataset at the same directory level as the script (root of project)

## Run
* Run the file run_analysis.R
* A file named tidy_dataset.csv will be created in the same folder

### Analysis Process
* Load the features and activity labels files
* Identify the features of interest (Anything that has mean or sd in the name)
* Read the test files (3) into data tables
* Apply appropriate heades to the test files (all 3)
* Merge columns of the 3 test files
* Repeat the process done on test files to training files
* Merge the test and training files (rows)
* Aggregate the merged files based on subject and activity and compute mean of all columns
* Write the aggregated file as a CSV

The output is also committed as a part of the repo.
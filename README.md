# Data Cleaning
##### Cleaning Cell Phone Motion Data

## Overview

This repo contains raw data from the a set of motion data from Samsung Cell phones [(available here)](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and a script to transform it from raw state to:


1. A cleaned, tidy raw data set.
	+ Combining test and training data.
	+ Adding useful labels to activities.
	+ Adding informative names to columns.
	+ Selecting only mean() and std() columns.

2. A summarized data set ready for analysis.
	+ Taking the above dataset and summarizing it by participant and activity

## The Original State of the Data

The data provided by UCI was split into test and training groups for their machine learning experiment. Within those respective folders were raw inertial data (not used in this analysis), and text files containing the UCI-Processed readings, the activity label, and the participant's id.

In the root folder were several text files that contained the labels of the readings as well as an index for the classification of each activity.

## Brief outline of the cleaning script

1. Read in all data.
2. Combine test and training rows into three data frames with all data.
3. Add descriptive names
	+ For xdat, read in features.txt and rename the columns accordingly.
	+ For ydat, rename its 1 column "Action.Performed"
	+ For subdat, rename its 1 column "Participant.ID"
4. Prepare xdat for combination
	+ Select only mean and std columns using grepl
5. Prepare ydat for combination
	+ Read in activity_labels.txt
	+ mutate ydat by indexing each value against activity_labels
6. Combine all columns so the single table contains one row per observation.
7. Write cleaned, raw data into "clean data.txt"
8. Group clean data by participant and activity, summarize each using mean
9. Write summarized data into "Output Summary.txt"

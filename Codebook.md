---
title: "Codebook"
author: "Mohamed Abdelnaby"
date: "10/11/2020"
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Code book for Getting and Cleaning Data course project

This document is the code description for the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.For more information See ReadMe.md


## Summary

```
The Train data set: 
  
  1- The subject data set from 1 to 30.
  2- The x_train & X_test is the device readings for acc, gyroscope, etc with state and time.
  3- The y_train & y_test is the activity from 1 to 6.
        1 WALKING
        2 WALKING_UPSTAIRS
        3 WALKING_DOWNSTAIRS
        4 SITTING
        5 STANDING
        6 LAYING
  4- The features is the sensors readings.
  5- The activities is the user status label (walking,walking_upstairs, etc...) 
  
Process and analysis:

  1- set the activities tables  header ( columns names )
  2- match and get the colums that contains  subject, activity, mean ,std
  3- Filter the combined dataset subject, activity, mean ,std
  4- Replace the activity ID with the label
  5- Replace the Header Names to formal readable names.
  6- Replace the redundancy  "BodyBody", "Body"
  7- summarize using mean set
  8- Dump the data into tidy.txt file 
  
```
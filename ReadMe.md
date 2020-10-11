---
title: "Getting and Cleaning Data Assignment"
author: "Mohamed Abdelnaby"
date: "10/11/2020"
output: html_document
---

## Introduction

One of the most exciting areas in all of data science right now is wearable computing, Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 

The data representing the activities and the status for the user through his mobile sensors and the wearable device this data collected from the Accelerometer, Gyroscope, etc from the Samsung Galaxy S smartphone. 



## Files 

This repository contains the following files:.
tidy.txt,  contains the result data set.
CodeBook.md, the code book, which describes the contents of the code to get the output.
run_analysis.R, the R script that was used to create tidy data set.

## tidy data set

WALKING: subject was walking.
WALKING_UPSTAIRS: subject was walking upstairs.
WALKING_DOWNSTAIRS: subject was walking downstairs.
SITTING: subject was sitting.
STANDING: subject was standing.
LAYING: subject was laying.
Average of measurements.


###Average body acceleration in the X, Y and Z coordinates:

timeDomainBodyAccelerometerMeanX
timeDomainBodyAccelerometerMeanY
timeDomainBodyAccelerometerMeanZ


###Standard deviation of the body acceleration in the X, Y and Z coordinates:

timeDomainBodyAccelerometerStandardDeviationX
timeDomainBodyAccelerometerStandardDeviationY
timeDomainBodyAccelerometerStandardDeviationZ



####Average gravity acceleration in the X, Y and Z coordinates:

timeDomainGravityAccelerometerMeanX
timeDomainGravityAccelerometerMeanY
timeDomainGravityAccelerometerMeanZ



### deviation of the gravity acceleration in the X, Y and Z coordinates:

timeDomainGravityAccelerometerStandardDeviationX
timeDomainGravityAccelerometerStandardDeviationY
timeDomainGravityAccelerometerStandardDeviationZ


###Average body acceleration jerk in the X, Y and Z coordinates:

timeDomainBodyAccelerometerJerkMeanX
timeDomainBodyAccelerometerJerkMeanY
timeDomainBodyAccelerometerJerkMeanZ



###Standard deviation of the body acceleration jerk in the X, Y and Z coordinates:

timeDomainBodyAccelerometerJerkStandardDeviationX
timeDomainBodyAccelerometerJerkStandardDeviationY
timeDomainBodyAccelerometerJerkStandardDeviationZ


###Average body angular velocity in the X, Y and Z coordinates:

timeDomainBodyGyroscopeMeanX
timeDomainBodyGyroscopeMeanY
timeDomainBodyGyroscopeMeanZ

###Standard deviation of the body angular velocity in the X, Y and Z coordinates:

timeDomainBodyGyroscopeStandardDeviationX
timeDomainBodyGyroscopeStandardDeviationY
timeDomainBodyGyroscopeStandardDeviationZ

###Average body angular velocity jerk in the X, Y and Z coordinates:

timeDomainBodyGyroscopeJerkMeanX
timeDomainBodyGyroscopeJerkMeanY
timeDomainBodyGyroscopeJerkMeanZ


###Standard deviation of the body angular velocity jerk in the X, Y and Z coordinates:

timeDomainBodyGyroscopeJerkStandardDeviationX
timeDomainBodyGyroscopeJerkStandardDeviationY
timeDomainBodyGyroscopeJerkStandardDeviationZ


###Average and standard deviation of the magnitude of body acceleration:

timeDomainBodyAccelerometerMagnitudeMean
timeDomainBodyAccelerometerMagnitudeStandardDeviation


###Average and standard deviation of the magnitude of gravity acceleration:

timeDomainGravityAccelerometerMagnitudeMean
timeDomainGravityAccelerometerMagnitudeStandardDeviation


###Average and standard deviation of the magnitude of body acceleration jerk:

timeDomainBodyAccelerometerJerkMagnitudeMean
timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation


###Average and standard deviation of the magnitude of body angular velocity:

timeDomainBodyGyroscopeMagnitudeMean
timeDomainBodyGyroscopeMagnitudeStandardDeviation


###Average and standard deviation of the magnitude of body angular velocity jerk:

timeDomainBodyGyroscopeJerkMagnitudeMean
timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation
frequency signals

###Average frequency body acceleration in the X, Y and Z coordenates:

freqDomainBodyAccelerometerMeanX
freqDomainBodyAccelerometerMeanY
freqDomainBodyAccelerometerMeanZ


###Standard deviation of the frequency body acceleration in the X, Y and Z coordenates:

freqDomainBodyAccelerometerStandardDeviationX
freqDomainBodyAccelerometerStandardDeviationY
freqDomainBodyAccelerometerStandardDeviationZ


###Weighted average of the frequency body acceleration in the X, Y and Z coordenates:

freqDomainBodyAccelerometerMeanFrequencyX
freqDomainBodyAccelerometerMeanFrequencyY
freqDomainBodyAccelerometerMeanFrequencyZ


###Average frequency body acceleration jerk in the X, Y and Z coordenates:

freqDomainBodyAccelerometerJerkMeanX
freqDomainBodyAccelerometerJerkMeanY
freqDomainBodyAccelerometerJerkMeanZ


###Standard deviation of the frequency body acceleration jerk in the X, Y and Z coordenates:

freqDomainBodyAccelerometerJerkStandardDeviationX
freqDomainBodyAccelerometerJerkStandardDeviationY
freqDomainBodyAccelerometerJerkStandardDeviationZ



###Weighted average of the frequency body acceleration jerk in the X, Y and Z coordenates:

freqDomainBodyAccelerometerJerkMeanFrequencyX
freqDomainBodyAccelerometerJerkMeanFrequencyY
freqDomainBodyAccelerometerJerkMeanFrequencyZ



###Average frequency body angular velocity in the X, Y and Z coordenates:

freqDomainBodyGyroscopeMeanX
freqDomainBodyGyroscopeMeanY
freqDomainBodyGyroscopeMeanZ


###Standard deviation of the frequency body angular velocity in the X, Y and Z coordenates:

freqDomainBodyGyroscopeStandardDeviationX
freqDomainBodyGyroscopeStandardDeviationY
freqDomainBodyGyroscopeStandardDeviationZ


###Weighted average of the frequency body angular velocity in the X, Y and Z coordenates:

freqDomainBodyGyroscopeMeanFrequencyX
freqDomainBodyGyroscopeMeanFrequencyY
freqDomainBodyGyroscopeMeanFrequencyZ


###Average, standard deviation, and weighted average of the frequency magnitude of body acceleration:

freqDomainBodyAccelerometerMagnitudeMean
freqDomainBodyAccelerometerMagnitudeStandardDeviation
freqDomainBodyAccelerometerMagnitudeMeanFrequency


###Average, standard deviation, and weighted average of the frequency magnitude of body acceleration jerk:

freqDomainBodyAccelerometerJerkMagnitudeMean
freqDomainBodyAccelerometerJerkMagnitudeStandardDeviation
freqDomainBodyAccelerometerJerkMagnitudeMeanFrequency


###Average, standard deviation, and weighted average of the frequency components of the frequency magnitude of body angular velocity:

freqDomainBodyGyroscopeMagnitudeMean
freqDomainBodyGyroscopeMagnitudeStandardDeviation
freqDomainBodyGyroscopeMagnitudeMeanFrequency



###Average, standard deviation, and weighted average of the frequency components of the frequency magnitude of body angular velocity jerk:

freqDomainBodyGyroscopeJerkMagnitudeMean
freqDomainBodyGyroscopeJerkMagnitudeStandardDeviation
freqDomainBodyGyroscopeJerkMagnitudeMeanFrequency


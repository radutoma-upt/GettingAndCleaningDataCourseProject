# Code Book

This code book describes all of the data fields in the `FinalTidyData.txt` file.

## Identifiers

 - `subject` - `integer` - The ID of the test subject (values from 1 to 30)
 - `activity` - `string` - The type of activity performed when the corresponding measurements were taken
  
## Measurements

These variables are all of the `mean` values for the corresponding measurement based on the subject and the activity. These are all of data type `numeric`.

 - TimeBodyAccelerometer.mean...X
 - TimeBodyAccelerometer.mean...Y
 - TimeBodyAccelerometer.mean...Z
 - TimeGravityAccelerometer.mean...X
 - TimeGravityAccelerometer.mean...Y
 - TimeGravityAccelerometer.mean...Z
 - TimeBodyAccelerometerJerk.mean...X
 - TimeBodyAccelerometerJerk.mean...Y
 - TimeBodyAccelerometerJerk.mean...Z
 - TimeBodyGyroscope.mean...X
 - TimeBodyGyroscope.mean...Y
 - TimeBodyGyroscope.mean...Z
 - TimeBodyGyroscopeJerk.mean...X
 - TimeBodyGyroscopeJerk.mean...Y
 - TimeBodyGyroscopeJerk.mean...Z
 - TimeBodyAccelerometerMagnitude.mean..
 - TimeGravityAccelerometerMagnitude.mean..
 - TimeBodyAccelerometerJerkMagnitude.mean..
 - TimeBodyGyroscopeMagnitude.mean..
 - TimeBodyGyroscopeJerkMagnitude.mean..
 - FrequencyBodyAccelerometer.mean...X
 - FrequencyBodyAccelerometer.mean...Y
 - FrequencyBodyAccelerometer.mean...Z
 - FrequencyBodyAccelerometer.meanFreq...X
 - FrequencyBodyAccelerometer.meanFreq...Y
 - FrequencyBodyAccelerometer.meanFreq...Z
 - FrequencyBodyAccelerometerJerk.mean...X
 - FrequencyBodyAccelerometerJerk.mean...Y
 - FrequencyBodyAccelerometerJerk.mean...Z
 - FrequencyBodyAccelerometerJerk.meanFreq...X
 - FrequencyBodyAccelerometerJerk.meanFreq...Y
 - FrequencyBodyAccelerometerJerk.meanFreq...Z
 - FrequencyBodyGyroscope.mean...X
 - FrequencyBodyGyroscope.mean...Y
 - FrequencyBodyGyroscope.mean...Z
 - FrequencyBodyGyroscope.meanFreq...X
 - FrequencyBodyGyroscope.meanFreq...Y
 - FrequencyBodyGyroscope.meanFreq...Z
 - FrequencyBodyAccelerometerMagnitude.mean..
 - FrequencyBodyAccelerometerMagnitude.meanFreq..
 - FrequencyBodyAccelerometerJerkMagnitude.mean..
 - FrequencyBodyAccelerometerJerkMagnitude.meanFreq..
 - FrequencyBodyGyroscopeMagnitude.mean..
 - FrequencyBodyGyroscopeMagnitude.meanFreq..
 - FrequencyBodyGyroscopeJerkMagnitude.mean..
 - FrequencyBodyGyroscopeJerkMagnitude.meanFreq..
 - Angle.tBodyAccelerometerMean.Gravity.
 - Angle.tBodyAccelerometerJerkMean..GravityMean.
 - Angle.tBodyGyroscopeMean.GravityMean.
 - Angle.tBodyGyroscopeJerkMean.GravityMean.
 - Angle.X.GravityMean.
 - Angle.Y.GravityMean.
 - Angle.Z.GravityMean.
 - TimeBodyAccelerometer.std...X
 - TimeBodyAccelerometer.std...Y
 - TimeBodyAccelerometer.std...Z
 - TimeGravityAccelerometer.std...X
 - TimeGravityAccelerometer.std...Y
 - TimeGravityAccelerometer.std...Z
 - TimeBodyAccelerometerJerk.std...X
 - TimeBodyAccelerometerJerk.std...Y
 - TimeBodyAccelerometerJerk.std...Z
 - TimeBodyGyroscope.std...X
 - TimeBodyGyroscope.std...Y
 - TimeBodyGyroscope.std...Z
 - TimeBodyGyroscopeJerk.std...X
 - TimeBodyGyroscopeJerk.std...Y
 - TimeBodyGyroscopeJerk.std...Z
 - TimeBodyAccelerometerMagnitude.std..
 - TimeGravityAccelerometerMagnitude.std..
 - TimeBodyAccelerometerJerkMagnitude.std..
 - TimeBodyGyroscopeMagnitude.std..
 - TimeBodyGyroscopeJerkMagnitude.std..
 - FrequencyBodyAccelerometer.std...X
 - FrequencyBodyAccelerometer.std...Y
 - FrequencyBodyAccelerometer.std...Z
 - FrequencyBodyAccelerometerJerk.std...X
 - FrequencyBodyAccelerometerJerk.std...Y
 - FrequencyBodyAccelerometerJerk.std...Z
 - FrequencyBodyGyroscope.std...X
 - FrequencyBodyGyroscope.std...Y
 - FrequencyBodyGyroscope.std...Z
 - FrequencyBodyAccelerometerMagnitude.std..
 - FrequencyBodyAccelerometerJerkMagnitude.std..
 - FrequencyBodyGyroscopeMagnitude.std..
 - FrequencyBodyGyroscopeJerkMagnitude.std..

## Activity Labels

 - WALKING (value 1): subject was walking during the test
 - WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
 - WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
 - SITTING (value 4): subject was sitting during the test
 - STANDING (value 5): subject was standing during the test
 - LAYING (value 6): subject was laying down during the test
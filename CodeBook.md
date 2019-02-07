# Code book for Coursera *Getting and Cleaning Data* course project

The data set that this code book pertains to is located in the `tidy_data.txt` file of this repository.

See the `README.md` file of this repository for background information on this data set.

The structure of the data set is described in the [Data](#data) section, its variables are listed in the [Variables](#variables) section, and the transformations that were carried out to obtain the data set based on the source data are presented in the [Transformations](#transformations) section.

## Data <a name="data"></a>

The `tidy_data.txt` data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the [Variables](#variables) section, and the following rows contain the values of these variables. 

## Variables <a name="variables"></a>

Each row contains, for a given subject and activity, 79 averaged signal measurements.

### Identifiers <a name="identifiers"></a>

- `subject`

	Subject identifier ranges from 1 to 30.

- `activity`

	Activity identifier, string with 6 possible values: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying

### Average of measurements <a name="average-measurements"></a>

All measurements are floating-point values, normalised and bounded within [-1,1].

Prior to normalisation, acceleration measurements (variables containing `Accelerometer`) were made in *g*'s (9.81 m.s⁻²) and gyroscope measurements (variables containing `Gyroscope`) were made in radians per second (rad.s⁻¹).

Magnitudes of three-dimensional signals (variables containing `Magnitude`) were calculated using the Euclidean norm.

The measurements are classified in two domains:

- Time-domain signals (variables prefixed by `timeDomain`), resulting from the capture of accelerometer and gyroscope raw signals.

- Frequency-domain signals (variables prefixed by `frequencyDomain`), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

#### Time-domain signals

- Average time-domain body acceleration in the X, Y and Z directions:

	- `timeDomain_Body_Accelerometer_Mean_X`
	- `timeDomain_Body_Accelerometer_Mean_Y`
	- `timeDomain_Body_Accelerometer_Mean_Z`

- Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

	- `timeDomain_Body_Accelerometer_StandardDeviation_X`
	- `timeDomain_Body_Accelerometer_StandardDeviation_Y`
	- `timeDomain_Body_Accelerometer_StandardDeviation_Z`

- Average time-domain gravity acceleration in the X, Y and Z directions:

	- `timeDomain_Gravity_Accelerometer_Mean_X`
	- `timeDomain_Gravity_Accelerometer_Mean_Y`
	- `timeDomain_Gravity_Accelerometer_Mean_Z`

- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

	- `timeDomain_Gravity_Accelerometer_StandardDeviation_X`
	- `timeDomain_Gravity_Accelerometer_StandardDeviation_Y`
	- `timeDomain_Gravity_Accelerometer_StandardDeviation_Z`

- Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `timeDomain_Body_Accelerometer_Jerk_Mean_X`
	- `timeDomain_Body_Accelerometer_Jerk_Mean_Y`
	- `timeDomain_Body_Accelerometer_Jerk_Mean_Z`

- Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `timeDomain_Body_Accelerometer_Jerk_StandardDeviation_X`
	- `timeDomain_Body_Accelerometer_Jerk_StandardDeviation_Y`
	- `timeDomain_Body_Accelerometer_Jerk_StandardDeviation_Z`

- Average time-domain body angular velocity in the X, Y and Z directions:

	- `timeDomain_Body_Gyroscope_Mean_X`
	- `timeDomain_Body_Gyroscope_Mean_Y`
	- `timeDomain_Body_Gyroscope_Mean_Z`

- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

	- `timeDomain_Body_Gyroscope_StandardDeviation_X`
	- `timeDomain_Body_Gyroscope_StandardDeviation_Y`
	- `timeDomain_Body_Gyroscope_StandardDeviation_Z`

- Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `timeDomain_Body_Gyroscope_Jerk_Mean_X`
	- `timeDomain_Body_Gyroscope_Jerk_Mean_Y`
	- `timeDomain_Body_Gyroscope_Jerk_Mean_Z`

- Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `timeDomain_Body_Gyroscope_Jerk_StandardDeviation_X`
	- `timeDomain_Body_Gyroscope_Jerk_StandardDeviation_Y`
	- `timeDomain_Body_Gyroscope_Jerk_StandardDeviation_Z`

- Average and standard deviation of the time-domain magnitude of body acceleration:

	- `timeDomain_Body_Accelerometer_Magnitude_Mean`
	- `timeDomain_Body_Accelerometer_Magnitude_StandardDeviation`

- Average and standard deviation of the time-domain magnitude of gravity acceleration:

	- `timeDomain_Gravity_Accelerometer_Magnitude_Mean`
	- `timeDomain_Gravity_Accelerometer_Magnitude_StandardDeviation`

- Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `timeDomain_Body_Accelerometer_Jerk_Magnitude_Mean`
	- `timeDomain_Body_Accelerometer_Jerk_Magnitude_StandardDeviation`

- Average and standard deviation of the time-domain magnitude of body angular velocity:

	- `timeDomain_Body_Gyroscope_Magnitude_Mean`
	- `timeDomain_Body_Gyroscope_Magnitude_StandardDeviation`

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `timeDomain_Body_Gyroscope_Jerk_Magnitude_Mean`
	- `timeDomain_Body_Gyroscope_Jerk_Magnitude_StandardDeviation`

#### Frequency-domain signals

- Average frequency-domain body acceleration in the X, Y and Z directions:

	- `frequencyDomain_Body_Accelerometer_Mean_X`
	- `frequencyDomain_Body_Accelerometer_Mean_Y`
	- `frequencyDomain_Body_Accelerometer_Mean_Z`

- Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

	- `frequencyDomain_Body_Accelerometer_StandardDeviation_X`
	- `frequencyDomain_Body_Accelerometer_StandardDeviation_Y`
	- `frequencyDomain_Body_Accelerometer_StandardDeviation_Z`

- Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

	- `frequencyDomain_Body_Accelerometer_Mean_Frequency_X`
	- `frequencyDomain_Body_Accelerometer_Mean_Frequency_Y`
	- `frequencyDomain_Body_Accelerometer_Mean_Frequency_Z`

- Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyDomain_Body_Accelerometer_Jerk_Mean_X`
	- `frequencyDomain_Body_Accelerometer_Jerk_Mean_Y`
	- `frequencyDomain_Body_Accelerometer_Jerk_Mean_Z`

- Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyDomainBodyAccelerometerJerkStandardDeviationX`
	- `frequencyDomainBodyAccelerometerJerkStandardDeviationY`
	- `frequencyDomainBodyAccelerometerJerkStandardDeviationZ`

- Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyDomain_Body_Accelerometer_Jerk_Mean_Frequency_X`
	- `frequencyDomain_Body_Accelerometer_Jerk_Mean_Frequency_Y`
	- `frequencyDomain_Body_Accelerometer_Jerk_Mean_Frequency_Z`

- Average frequency-domain body angular velocity in the X, Y and Z directions:

	- `frequencyDomain_Body_Gyroscope_Mean_X`
	- `frequencyDomain_Body_Gyroscope_Mean_Y`
	- `frequencyDomain_Body_Gyroscope_Mean_Z`

- Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `frequencyDomain_Body_Gyroscope_StandardDeviation_X`
	- `frequencyDomain_Body_Gyroscope_StandardDeviation_Y`
	- `frequencyDomain_Body_Gyroscope_StandardDeviation_Z`

- Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `frequencyDomain_Body_Gyroscope_Mean_Frequency_X`
	- `frequencyDomain_Body_Gyroscope_Mean_Frequency_Y`
	- `frequencyDomain_Body_Gyroscope_Mean_Frequency_Z`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

	- `frequencyDomain_Body_Accelerometer_Magnitude_Mean_`
	- `frequencyDomain_Body_Accelerometer_Magnitude_StandardDeviation_`
	- `frequencyDomain_Body_Accelerometer_Magnitude_Mean_Frequency_`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `frequencyDomain_Body_Accelerometer_Jerk_Magnitude_Mean_`
	- `frequencyDomain_Body_Accelerometer_Jerk_Magnitude_StandardDeviation_`
	- `frequencyDomain_Body_Accelerometer_Jerk_Magnitude_Mean_Frequency_`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

	- `frequencyDomain_Body_Gyroscope_Magnitude_Mean_`
	- `frequencyDomain_Body_Gyroscope_Magnitude_StandardDeviation_`
	- `frequencyDomain_Body_Gyroscope_Magnitude_Mean_Frequency_`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `frequencyDomain_Body_Gyroscope_Jerk_Magnitude_Mean_`
	- `frequencyDomain_Body_Gyroscope_Jerk_Magnitude_StandardDeviation_`
	- `frequencyDomain_Body_Gyroscope_Jerk_Magnitude_Mean_Frequency_`

## Transformations <a name="transformations"></a>

The zip file containing the source data is located at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The following transformations were applied to the source data:

1. The training and test sets were merged to create one data set.
1. The measurements on the mean and standard deviation (i.e. signals containing the strings `mean` and `std`) were extracted for each measurement, and the others were discarded.
1. The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (see [Identifiers](#identifiers) section).
1. The variable names were replaced with descriptive variable names (e.g. `tBodyAcc-mean()-X` was expanded to `timeDomainBodyAccelerometerMeanX`), using the following set of rules:
	- Special characters (i.e. `(`, `)`, and `-`) were removed
	- The initial `f` and `t` were expanded to `frequencyDomain` and `timeDomain` respectively.
	- `Acc`, `Gyro`, `Mag`, `Freq`, `mean`, and `std` were replaced with `Accelerometer_`, `Gyroscope_`, `Magnitude_`, `Frequency_`, `Mean_`, and `StandardDeviation_` respectively.
	- Replaced (supposedly incorrect as per source's `features_info.txt` file) `BodyBody` with `Body`.
1. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.

The collection of the source data and the transformations listed above were implemented by the `run_analysis.R` R script (see `README.md` file for usage instructions).
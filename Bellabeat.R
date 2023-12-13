#Install Required Packages
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("janitor")

#Load the installed packages
library(tidyverse)
library(ggplot2)
library(janitor)

#Importing Datasets
activity <- read.csv("/Users/neeharikamaganti/Desktop/Studies & Courses/Google Data Analytics Certificate Docs/Course 8/Fitabase Data 4.12.16-5.12.16/dailyActivity_merged.csv")
weight <- read.csv("/Users/neeharikamaganti/Desktop/Studies & Courses/Google Data Analytics Certificate Docs/Course 8/Fitabase Data 4.12.16-5.12.16/weightLogInfo_merged.csv")
sleep <- read.csv("/Users/neeharikamaganti/Desktop/Studies & Courses/Google Data Analytics Certificate Docs/Course 8/Fitabase Data 4.12.16-5.12.16/sleepDay_merged.csv")

#Getting Familiarized with Data
head(activity)
colnames(activity)
str(activity)

head(met)
colnames(met)
str(met)

head(heartrate)
colnames(heartrate)
str(heartrate)

head(weight)
colnames(weight)
str(weight)

head(sleep)
colnames(sleep)
str(sleep)

#Change the Data type of Date in all the Dataframes (as it is a char type)
activity <- activity %>% mutate(ActivityDate=mdy(ActivityDate))
weight <- weight %>% mutate(Date=mdy_hms(Date))
sleep <- sleep %>% mutate(SleepDay=mdy_hms(SleepDay))

#Check for number of missing values/ errors
sum(is.na(activity))
sum(is.na(weight))
sum(is.na(sleep))

#No missing values found in any of the data frames except in weight data frame. So, looking at the data frame a little closer
summary(weight)

#Missing values all are from same column so delete the entire column
weight$Fat <- NULL

#Find number of participants in every data frame
n_distinct(activity$Id)
n_distinct(weight$Id)
n_distinct(sleep$Id)

#As there are only 8 unique participants, get weight info for these 8 participants to see if there is any significant change.
weight %>%
  group_by(Id) %>%
  summarize(min(WeightKg), max(WeightKg))

#Observations that can be made from each data frame
activity %>%
  select(TotalSteps,
         TotalDistance,
         SedentaryMinutes,
         Calories) %>%
  summary()

activity %>%
  select(VeryActiveMinutes,
         FairlyActiveMinutes,
         LightlyActiveMinutes) %>%
  summary()

sleep %>%
  select(TotalSleepRecords, 
         TotalMinutesAsleep, 
         TotalTimeInBed) %>%
  summary()
  
weight %>%
  select(WeightKg,
         BMI) %>%
  summary()

#Merge data by a common denominator for further analysis and visualization
activity <- rename(activity, Date = ActivityDate)
sleep <- rename(sleep, Date = SleepDay)
activitySleep <- merge(sleep, activity, by = c('Id', 'Date'))

#Total Steps Vs Calories
ggplot(data=activity, aes(x=TotalSteps, y=Calories)) + geom_point() + geom_smooth() + labs(title="Total Steps Vs Calories")

#Total Minutes Asleep Vs Total Time in Bed
ggplot(data=activitySleep, aes(x=TotalMinutesAsleep, y=TotalTimeInBed)) + geom_point() + labs(title="Total Minutes Asleep Vs Total Time in Bed")

#Sleep Duration Vs Sedentary Time
ggplot(data=activitySleep, aes(x=SedentaryMinutes, y=TotalMinutesAsleep)) + geom_point() + geom_smooth() + labs(title = "Sleep Duration Vs Sedentary Time")
#There is an Negative Correlation between sleep duration Vs sedentary Time

#Distribution of Total minutes asleep
ggplot(data=activitySleep, aes(x=TotalMinutesAsleep)) + geom_histogram(fill="#187bcd")

#Total Distance Vs Calories
ggplot(data=activity, aes(x=TotalDistance, y=Calories)) + geom_point()

#Total Steps Vs Sedentary Minutes
ggplot(data=activity, aes(x=TotalSteps, y=SedentaryMinutes, color=Calories)) + geom_point() + 
  labs(title = 'Total steps Vs Sedentary Minutes', subtitle = 'Calories burned')

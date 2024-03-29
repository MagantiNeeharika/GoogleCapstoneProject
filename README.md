## Google Capstone Project
### BELLABEAT CASE STUDY
#### BACKGROUND
'Bellabeat', a high-tech manufacturer of health-focused products for women, and is a successful small company who has the potential to become a larger player in the global smart device market.
Bellabeat has 5 products that collect and keep track of user's data related to the activity, sleep, stress, menstrual cycle, and mindfulness habits.

Bellabeat's 5 products are:<br>
- **Bellabeat App :** Provides users with health related data and helps in understanding the user's habits and healthy decisions.<br>
- **Leaf :** A wellness tracker that is directly connected to the Bellabeat App.<br>
- **Time :** A wellness watch that tracks the user's data and is also connected to the bellabeat app.<br>
- **Spring :** A smart water bottle that is connected to the beallbeat app, and is helpful in keeping track of the hydration levels of the users.<br>
- **Bellabeat Membership :** A subscription-based membership program for users.<br>

**Questions that will guide the analysis are:** <br>
1. What are some trends in smart device usage?
2. How could these trends apply to Bellabeat customers?
3. How could these trends help influence Bellabeat Marketing Strategy?

#### PROBLEM/ BUSINESS TASK/ AIM
Business Task at hand is to:
- Find the trend's in the User's Data and Improve the Bellabeat's Customer's User experience.

#### DATA & DATA SOURCE
- Data I will be using is available on Kaggle, under the name _**FitBit Fitness Tracker Data**_, that is made available through _*Mobius*_, but the dataset _*haven't been cited.*_
- This data is a Third-party Data and so is _*not Original.*_
- The data that has been collected contains personal fitness data of _*30 fitnes users*_ only, and so is _*not reliable/ less reliable.*_
- This dataset includes data of physical activity, heart rate, sleep, calories and other multiple fields making the dataset a _*little comprehensive.*_
- This dataset contains 18 CSV files that are available in long format.

_**Tools Used:**_ R Programming Language, RStudio<br>
_**Packages Used:**_ tidyverse, ggplot2, janitor

As part of ‘Bellabeat’ Data Analysis I have mainly focused on Activity, Weight and Sleep Data. So, I will be using only few files from the dataset.
Refer to the **LINKS TO FILES** section for the Analyzed Dataset using R Programming.

#### LINKS TO FILES
- [Bellabeat.R](https://github.com/MagantiNeeharika/GoogleCapstoneProject/blob/main/Bellabeat.R) - Analyzed Dataset of Case Study-2 (Bellabeat) of Google Capstone Project using R.

#### OBSERVATIONS
- The total distinct participants from each data frame are varied.
            - 'activity' dataframe has 33 distinct participants data
            - 'weight' dataframe has only 8 distinct participants data
            - 'sleep' dataframe has 24 distinct participants data
- As there are only 8 distinct participants data, I have checked if there is any significant weight change from the weight log data and there are no significant changes.
- I have checked for empty/missing values while cleaning the data and have found 65 missing values out of 67 rows of data from the 'Fat' column of the 'weight' dataframe and so have deleted the entire column as there is no space for any analysis.
- After taking a clearer look at the structure of the dataframes, the 'Date' columns data type has been set to 'char' datatype in all the dataframes, so I have formatted it to the relevant datatype.
- Observations from Summaries of activity, sleep and weight dataframes are as follows:
  - Average Sedentary Minutes is about 16.5 Hours (991.2 Minutes)
  - Average steps per day is 7638
  - Most of the participants are lightly Active
  - On an average, participants spend about 7.64 hours in bed
  - On an average, participants are asleep for about 6.99 hours  

#### ANALYSIS
I have done the Analysis focusing on 6 relations:
- Total Steps Vs. Calories
- Total Minutes Asleep Vs Total Time in Bed
- Sleep duration Vs Sedentary Time
- Distribution of Total Minutes Asleep
- Total Distance Vs Calories
- Total Steps Vs Sedentary Minutes

#### INSIGHTS
- The more steps the user's take, the more calories are burnt.
- The more the user spends the time in bed, the more time they are asleep.
- The less active the user is, the less time they are asleep.
- The more sedentary minutes, the less active and the less steps taken by the user.

#### RECOMMENDATIONS
A few recommendations and suggestions for the 'Bellabeat' team, based on the analysis are:
- As there is not much data collected, I would recommend collecting more data to see more trends in the smart device usage.
- Creating & Sending an alert, when the user is sedentary for longer periods of time can help in increase the chances of reaching their daily step goal of 10,000(a daily step count recommended by CDC).
- Bellabeat can create and send an alert to sleep at a suggested time in order for the user to get a proper 7-8 hours of sleep daily.
- Bellabeat can also create a few suggestions regarding the food/ calorie-intake for the users based on their profile info. This way they can collect more data from the users, regarding weight as well as help users who are trying to loose or gain weight.

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
- Summari

#### ANALYSIS
I have done the Analysis focusing on 6 relations:
- Total Steps Vs. Calories
- Total Minutes Asleep Vs Total Time in Bed
- Sleep duration Vs Sedentary Time
- Distribution of Total Minutes Asleep
- Total Distance Vs Calories
- Total Steps Vs Sedentary Minutes


#### INSIGHTS

#### RECOMMENDATIONS

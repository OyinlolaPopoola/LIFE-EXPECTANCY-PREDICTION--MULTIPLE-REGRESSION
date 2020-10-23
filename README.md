# LIFE-EXPECTANCY-PREDICTION--MULTIPLE-REGRESSION
The objective of this analysis is to estimate a multiple regression model to predict life expectancy in women using total fertility rate of women and mortality rate of women. 

Data Description
The dataset used for this analysis was gotten from United Nations data (http://data.un.org) by combining the data on Total Fertility Rate, Adult Mortality Rate and Life Expectancy at Birth. The Total Fertility Rate (per woman) dataset had 366 rows and 3 columns, the Adult Mortality Rate dataset had 1764 rows and 4 columns, and the Life Expectancy at Birth dataset had 1746 rows and 4 columns.

Data Cleaning and Transformation 
The data had to be combined to construct a suitable regression file. The 3 datasets had the year 2012 in common, therefore all 2012 data was sorted out and stored in an Excel workbook. The 2012 combined dataset was further sorted to extract female records and the combination of the data from different datasets lead to data-item being missing at random. The total number of missing values was less than 5%, therefore listwise deletion was carried out using the na.omit() function in R.(IBM,2010) The final CSV file had 3 columns containing Total Fertility Rate, Adult Mortality Rate and Life Expectancy at Birth for females in 2012 in 195 countries therefore, there were 195 rows.

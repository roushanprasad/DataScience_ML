#R Data Frames Exercises¶
#For this exercise we will test your knowledge of data frames! 
#Just follow the exercise instructions that are in bold below!

#Ex 1: Recreate the following dataframe by creating vectors and using the data.frame function:
#       	Age	  Weight	Sex
# Sam	  	22	  150	    M
# Frank		25	  165	    M
# Amy	  	26	  120	    F

#Ex 2: Check if mtcars is a dataframe using is.data.frame()

#Ex 3: Use as.data.frame() to convert a matrix into a dataframe:
#     V1	V2	V3	V4	V5
# 1	  1	  6	  11	16	21
# 2	  2	  7	  12	17	22
# 3	  3	  8	  13	18	23
# 4	  4	  9	  14	19	24
# 5	  5	  10	15	20	25

#Ex 4: Set the built-in data frame mtcars as a variable df. 
#We'll use this df variable for the rest of the exercises.

#Ex 5: Display the first 6 rows of df

#Ex 6: What is the average mpg value for all the cars?

#Ex 7: Select the rows where all cars have 6 cylinders (cyl column)

#Ex 8: Select the columns am,gear, and carb.

#Ex 9: Create a new column called performance, which is calculated by hp/wt.

#Ex 10: Your performance column will have several decimal place precision. 
# Figure out how to use round() (check help(round)) to reduce this accuracy to 
# only 2 decimal places.
# head(df)

#Ex 11: What is the average mpg for cars that have more than 100 hp AND a wt value of 
#more than 2.5.
16.8636363636364

#Ex 12: What is the mpg of the Hornet Sportabout?
18.7
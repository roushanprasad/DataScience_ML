#R Data Frames Exercises - Solutions
#For this exercise we will test your knowledge of data frames! 
#Just follow the exercise instructions that are in bold below!

#Ex 1: Recreate the following dataframe by creating vectors and using the data.frame 
#function:
# Name      Age	Weight	Sex
# Sam	  	22	150	    M
# Frank		25	165	    M
# Amy	  	26	120	    F

Name <- c("Sam","Frank","Amy")
Age <- c(22,25,26)
Weight <- c(150,165,120)
Sex <- c("M", "M", "F")
df <- data.frame (row.names = Name, Age, Weight, Sex)
df


#Ex 2: Check if mtcars is a dataframe using is.data.frame()
is.data.frame(mtcars)

#Ex 3: Use as.data.frame() to convert a matrix into a dataframe:
#   V1	V2	V3	V4	V5
# 1	1	6	11	16	21
# 2	2	7	12	17	22
# 3	3	8	13	18	23
# 4	4	9	14	19	24
# 5	5	10	15	20	25
mat <- matrix(1:25,nrow = 5)
as.data.frame(mat)

#Ex 4: Set the built-in data frame mtcars as a variable df. 
#We'll use this df variable for the rest of the exercises.
df <- mtcars

#Ex 5: Display the first 6 rows of df
#head(df)

#Ex 6: What is the average mpg value for all the cars?
#mean(mtcars$mpg)
20.090625

#Ex 7: Select the rows where all cars have 6 cylinders (cyl column)
df[df$cyl==6,]
subset(df, subset = cyl==6)

#Ex 8: Select the columns am,gear, and carb.
df[,c('am','gear','carb')]

#Ex 9: Create a new column called performance, which is calculated by hp/wt.
df$performance <- df$hp/df$wt
head(df)

#Ex 10: Your performance column will have several decimal place precision. 
#Figure out how to use round() (check help(round)) to reduce this accuracy to 
#only 2 decimal places.
df$performance <- round(df$performance,2)
head(df)

#Ex 10: What is the average mpg for cars that have more than 100 hp AND a wt 
#value of more than 2.5.
mean(subset(df,hp>100 & wt > 2.5)$mpg)
16.8636363636364

#Lots of ways to do this
mean(df[df$hp>100 & df$wt > 2.5,]$mpg)
16.8636363636364

#Ex 11: What is the mpg of the Hornet Sportabout?
df['Hornet Sportabout',]$mpg
18.7
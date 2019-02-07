#R Data Frames Exercise 2

#Exercise 1
#Create the following data frame (named df), afterwards invert 'Sex' for all individuals.
#Note: Define 'Sex' column as a factor
#Sex <- as.factor(c("F", "F", "M", "M", "F", "M", "F"))
#		Age	Height	Weight	Sex
#Alex	25	177		57		F
#Lilly	31	163		69		F
#Mark	23	190		83		M 
#Oliver	52	179		75		M 
#Martha	76	163		70		F 
#Lucas	49	183		83		M 
#Carolin 26	164		53		F 
#Hint: Use 'levels()' to invert values in 'Sex' column.


#Exercise 2
#Create this data frame (named dfa) (make sure you import the variable 'Working' as character and not factor).
#			Working
#Alex		Yes
#Lilly		No
#Mark		No
#Oliver		Yes
#Martha		Yes
#Lucas		No
#Carolin 	Yes
#a) Add this data frame column-wise to the previous one (df).
#b) How many rows and columns does the new data frame have?
#c) What class of data is in each column?

#Exercise 3
#Check what class of data is the (built-in data set) state.center and convert it to data frame.

#Exercise 4
#Create a simple data frame from 3 vectors. Order the entire data frame by the first column.
#age <- c(45:41, 30:33)
#class <- letters[1:9]
#grade <- round(rnorm(n = 9, mean = 45,sd = 2 ))

#Exercise 5
#For this exercise, we’ll use the (built-in) dataset VADeaths.
#a) Make sure the object is a data frame, if not change it to a data frame.
#b) Create a new variable/column, named Total, which is the sum of each row. You can use 'rowSums()'
#c) Change the order of the columns so total is the first variable.

#Exercise 6
#For this exercise we’ll use the (built-in) dataset state.x77.
#a) Make sure the object is a data frame, if not change it to a data frame.
#b) Find out how many states have an income of less than 4300.
#c) Find out which is the state with the highest income.
#============================ SOLUTIONS ============================
#Solution 1: 
Name <- c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline")
Age <- c(25, 31, 23, 52, 76, 49, 26)
Height <- c(177, 163, 190, 179, 163, 183, 164)
Weight <- c(57, 69, 83, 75, 70, 83, 53)
Sex <- as.factor(c("F", "F", "M", "M", "F", "M", "F"))
df <- data.frame (row.names = Name, Age, Height, Weight, Sex)
levels(df$Sex) <- c("M", "F")
df

#Solution 2: 
Name <- c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline")
Working <- c("Yes", "No", "No", "Yes", "Yes", "No", "Yes")
dfa <- data.frame(row.names = Name, Working)

#a: 
dfa <- cbind(df,dfa)
#b:
dim(dfa)
nrow(df)
ncol(dfa)
#c:
sapply(dfa, class)
str(dfa)

#Solution 3:
class(state.center)
df2 <- data.frame(state.center)
#or
df2 <- as.data.frame(state.center)

#Solution 4:
age <- c(45:41, 30:33)
class <- letters[1:9]
grade <- round(rnorm(9,45,2))
df <- data.frame(Age=v, Class=b, Grade=n)
df[order(df$Age),]

#Solution 5:
#a: 
class(VADeaths)
is.data.frame(VADeaths)
death <- data.frame(VADeaths) #or death <- as.data.frame(VADeaths)
is.data.frame(death)
#b:
df$Total <- rowSums(df[1:4])
d
#c:
df <- df[,c(5,1:4)]
df

#Solution 6:
#a:
class(state.x77)
df <- as.data.frame(state.x77)
head(df)
is.data.frame(df)
#b:
nrow(df[df$Income <4300,])
#c:
max(df$Income)
df[df$Income==max(df$Income),]
rownames(df[df$Income==max(df$Income),])
#Alternate Sol : row.names(df)[(which(max(df$Income) == df$Income))]
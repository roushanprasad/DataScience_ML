================================ Exercise =================================
#Exercise 1:
#Select the first three columns of the iris dataset using their column names. 
#HINT: Use select().

#Exercise 2:
#Select all the columns of the iris dataset except “Petal Width”. 
#HINT: Use “-“ (minus sign).

#Exercise 3:
#Select all columns of the iris dataset that start with the character string “P”.
#Hint: starts_with

#Exercise 4:
#Filter the rows of the iris dataset for Sepal.Length >= 4.6 and Petal.Width >= 0.5.

#Exercise 5:
#Pipe the iris data frame to the function that will select two columns (Sepal.Width and Sepal.Length). 
#HINT: Use pipe operator.

#Exercise 6:
#Arrange rows by a particular column in descending order, such as the Sepal.Width. 


#Exercise 7:
#Select first three columns from iris, arrange the rows by Sepal.Length, then arrange the rows by Sepal.Width.

#Exercise 8:
#Create a new column called proportion, which is the ratio of Sepal.Length to Sepal.Width. 
#HINT: Use mutate().

#Exercise 9:
#Compute the average number of Sepal.Length, apply the mean() function to the column Sepal.Length, and call the summary value “avg_slength”. 
#HINT: Use summarise().

#Exercise 10:
#Split the iris data frame by the 'Species', then ask for the same summary statistics as below:
#mean of Sepal.Length,
#min of Sepal.Length,
#max of Sepal.Length,
#total = n() //n function gives the total number of observation in each category. If not understood, leave out this stat and derive the rest.
			
#HINT: Use group_by().
=============================== Solutions =================================
#Solution 1:
library(dplyr)
first3 <- select(iris,Sepal.Length,Sepal.Width,Petal.Length)
head(first3)
#or
iris%>%select(1:3)%>%head(3)

#Solution 2:
library(dplyr)
head(select(iris, -Petal.Width))
#or
iris%>%select(-Petal.Width)%>%head()

#Solution 3:
library(dplyr)
head(select(iris, starts_with("P")))
#or
iris%>%select(starts_with('P'))%>%head()

#Solution 4:
library(dplyr)
filter(iris, Sepal.Length >= 4.6, Petal.Width>=0.5)
#or
iris%>%filter(Sepal.Length >=4.6, Petal.Width >= 0.5)%>%head()

#Solution 5:
library(dplyr)
iris %>% select(Sepal.Length, Sepal.Width) %>% head
#or
iris %>% select(Sepal.Width, Sepal.Length)%>%head()

#Solution 6:
library(dplyr)
iris %>% arrange(Sepal.Width) %>% head
#or
iris %>% arrange(desc(Sepal.Width))%>%head()

#Solution 7:
library(dplyr)
iris %>%
  select(Species, Sepal.Length, Sepal.Width) %>%
  arrange(Sepal.Length, Sepal.Width) %>%
  head
  
#Solution 8:
library(dplyr)
iris %>%
mutate(proportion = Sepal.Length / Sepal.Width) %>%
head

#Solution 9:
library(dplyr)
iris %>%
  summarize(avg_slength = mean(Sepal.Length))

#Solution 10:
library(dplyr)
iris %>%
  group_by(Sepal.Length) %>%
  summarise(avg_slength = mean(Sepal.Length),
            min_slength = min(Sepal.Length),
            max_slength = max(Sepal.Length),
            total = n())
  
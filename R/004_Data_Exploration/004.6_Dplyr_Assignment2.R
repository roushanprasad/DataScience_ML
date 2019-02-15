================================ Exercise =================================
#DataSet Description: Explain in class

#Exercise 1:
#Load the dplyr package. Install and load the 'AER' package and run the command data("Fertility") which loads the dataset Fertility to your workspace. 
#Take a glimpse() at the data.

#Exercise 2:
#Select rows 35 to 50 and print to console its age and work entry.

#Exercise 3:
#Select the last row in the dataset and print to console.

#Exercise 4:
#Count how many (count of) women proceeded to have a third child.

#Exercise 5:
#There are four possible gender combinations for the first two children. Which is the most common?
#Calculate count of all 4 combination and discuss in the class for the most common combination.
#Hint: group_by

#Exercise 6:
#By racial composition what is the proportion of woman working four weeks or less than 4?
#Hint : 
#1) ratial composition is 'group_by(afam, hispanic, other)'
#2) porportion simple means 'mean'

#Exercise 7:
#filter out a subset of woman between the age 22 and 24 and calculate the proportion who had a boy as their firstborn
#Hint: between function or (>= ,<=)

#Exercise 8:
#Add a new column, 'age squared',which is square of age  to the dataset.

#Exercise 9: Attempt
#Out of all the racial composition in the dataset which had the lowest proportion of boys for their firstborn. With the same command display the number of observation in each category as well.

#Exercise 10:
#Calculate the proportion of women who have a third child by gender combination of the first two children?
=============================== Solutions =================================
#Solution 1:
# First install package. Ignore if done already
install.packages("dplyr")
#Use dplyr package
library(dplyr)      
# Install Package. Ignore if done already
install.packages("AER")
library(AER)        
#Load the dataset
data("Fertility")
glimpse(Fertility)

#Solution 2:
Fertility %>%
  select(age, work) %>%
  slice(35:50)
  
#Solution 3:
Fertility %>%
  slice(n())
  
#Solution 4:
Fertility %>%
  filter(morekids == "yes") %>%
  count()

#Solution 5:
Fertility %>%
  group_by(gender1, gender2) %>%
  count()
  
#Solution 6:
Fertility %>%
  group_by(afam, hispanic, other) %>%
  summarise(mean(work <= 4))
  
#Solution 7:
Fertility %>%
  filter(between(age, 22, 24)) %>%
  summarise(mean(gender1 == "male"))
#or
df %>% filter(age>= 22, age<= 24) %>% summarise(mean(gender1=='male'))
  mean(gender1 == "male")
  
  
#Solution 8:
Fertility <- Fertility %>% mutate(age_sq = age^2)
#or
df %>% mutate(age_squared = age ^ 2) %>%head()

#Solution 9:
Fertility %>%
  group_by(afam, hispanic, other) %>%
  summarise(prop_boys_fb = mean(gender1 == "male"), n = n()) %>%
  arrange(prop_boys_fb)

#Solution 10:
Fertility %>%
  group_by(gender1, gender2) %>%
  summarise(mean(morekids == "yes"))
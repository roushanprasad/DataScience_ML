================================ Exercise =================================
#Use dplyr library
library(dplyr)
#We will use the 'mtcars' dataframe for this exercise!
head(mtcars)

#Problem 1: Return rows of cars that have an mpg value greater than 20 and 6 cylinders.
#Problem 2: Reorder the Data Frame by cyl first, then by descending wt.
#Problem 3: Select the columns mpg and hp
#Problem 4: Select the distinct values of the gear column.
#Problem 5: Create a new column called "Performance" which is calculated by hp divided by wt.
#Problem 6: Find the mean mpg value using dplyr.
#Problem 7: Use pipe operators to get the mean hp value for cars with 6 cylinders.








=============================== Solutions =================================
#Solution 1:
filter(mtcars,mpg>20,cyl==6)

#Solution 2:
arrange(mtcars,cyl,desc(wt))

#Solution 3:
select(mtcars,mpg,hp)

#Solution 4:
distinct(select(mtcars,gear))

#Solution 5:
head(mutate(mtcars,Performance=hp/wt))

#Solution 6:
summarise(mtcars,avg_mpg=mean(mpg))

#Solution 7:
mtcars %>% filter(cyl==6) %>% summarise(avg_hp = mean(hp))
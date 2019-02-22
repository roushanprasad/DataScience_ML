#======================= Money Ball =========================
#You don't need to know much about Baseball to complete this exercise. If you're totally unfamiliar with Baseball, check out this Explanatory video: 
# https://www.youtube.com/watch?v=0bKkGeROiPA

#==========Background===================
#The 2002 Oakland A's
#The Oakland Athletics' 2002 season was the team's 35th in Oakland, California. It was also the 102nd season in franchise history. The Athletics finished first in the American League West with a record of 103-59.

#The Athletics' 2002 campaign ranks among the most famous in franchise history. Following the 2001 season, Oakland saw the departure of three key players (the lost boys). Billy Beane, the team's general manager, responded with a series of under-the-radar free agent signings. The new-look Athletics, despite a comparative lack of star power, surprised the baseball world by besting the 2001 team's regular season record. The team is most famous, however, for winning 20 consecutive games between August 13 and September 4, 2002.[1] The Athletics' season was the subject of Michael Lewis' 2003 book Moneyball: The Art of Winning an Unfair Game (as Lewis was given the opportunity to follow the team around throughout that season)

#This project is based off the book written by Michael Lewis (later turned into a movie).

#Moneyball Book
#The central premise of book Moneyball is that the collective wisdom of baseball insiders (including players, managers, coaches, scouts, and the front office) over the past century is subjective and often flawed. Statistics such as stolen bases, runs batted in, and batting average, typically used to gauge players, are relics of a 19th-century view of the game and the statistics available at that time. The book argues that the Oakland A's' front office took advantage of more analytical gauges of player performance to field a team that could better compete against richer competitors in Major League Baseball (MLB).

#Rigorous statistical analysis had demonstrated that on-base percentage and slugging percentage are better indicators of offensive success, and the A's became convinced that these qualities were cheaper to obtain on the open market than more historically valued qualities such as speed and contact. These observations often flew in the face of conventional baseball wisdom and the beliefs of many baseball scouts and executives.

#By re-evaluating the strategies that produce wins on the field, the 2002 Athletics, with approximately US 44 million dollars in salary, were competitive with larger market teams such as the New York Yankees, who spent over US$125 million in payroll that same season.



#Because of the team's smaller revenues, Oakland is forced to find players undervalued by the market, and their system for finding value in undervalued players has proven itself thus far. This approach brought the A's to the playoffs in 2002 and 2003.

#In this project we'll work with some data and with the goal of trying to find replacement players for the ones lost at the start of the off-season - During the 2001–02 offseason, the team lost three key free agents to larger market teams: 2000 AL MVP Jason Giambi to the New York Yankees, outfielder Johnny Damon to the Boston Red Sox, and closer Jason Isringhausen to the St. Louis Cardinals.

#The main goal of this project is for you to feel comfortable working with R on real data to try and derive actionable insights!


#================== Lets Get Started ==========================
#Follow the steps outlined in bold below using your new R skills and help the Oakland A's recruit under-valued players!


#Step 1: 
#Use R to open the Batting.csv file and assign it to a dataframe called batting using read.csv

#Step 2: 
#Use str() to check the structure. Pay close attention to how columns that start with a number get an 'X' in front of them! You'll need to know this to call those columns!

#Step 3: 
#Make sure you understand how to call the columns by using the $ symbol.
#Call the head() of the first five rows of AB (At Bats) column
#Call the head of the doubles (X2B) column

#Quick Note: If you used fread() to use data.table, then you won't need to worry about these X in front of numbers, instead you would use something like:

# batting[,'2B',with=FALSE]
#There's a few more ways of doing detailed: https://stackoverflow.com/questions/15637132/how-to-reference-column-names-that-start-with-a-number-in-data-table

#Step 4: 
#Feature Engineering: 
#We need to add three more statistics that were used in Moneyball! These are:
#1) Batting Average (https://en.wikipedia.org/wiki/Batting_average)
#2) On Base Percentage (https://en.wikipedia.org/wiki/On-base_percentage)
#3) Slugging Percentage (https://en.wikipedia.org/wiki/Slugging_percentage)

#Click on the links provided and search the wikipedia page for the formula for creating the new statistic! For example, for Batting Average, you'll need to scroll down until you see:

#AVG=H/AB
 
#Which means that the Batting Average is equal to H (Hits) divided by AB (At Base). So we'll do the following to create a new column called BA and add it to our data frame:

#After doing this operation, check the last 5 entries of the BA column of your data frame and it should look like this:
#tail(batting$BA,5)
#0.123076923076923 0.274647887323944 0.147058823529412 0.274509803921569 0.213872832369942

#Step 5: 
#Now do the same for some new columns! On Base Percentage (OBP) and Slugging Percentage (SLG). Hint: For SLG, you need 1B (Singles), this isn't in your data frame. However you can calculate it by subtracting doubles,triples, and home runs from total hits (H): 1B = H-2B-3B-HR

#Create an OBP Column
#Create an SLG Column

#Check the structure of your data frame using str()

#Step 6: 
#Merging Salary Data with Batting Data
#We know we don't just want the best players, we want the most undervalued players, meaning we will also need to know current salary information! We have salary information in the csv file 'Salaries.csv'.

#Complete the following steps to merge the salary data with the player stats!

#Load the Salaries.csv file into a dataframe called sal using read.csv
#Use summary to get a summary of the batting data frame and notice the minimum year in the yearID column. Our batting data goes back to 1871! Our salary data starts at 1985, meaning we need to remove the batting data that occured before 1985.

#Now use summary again to make sure the subset reassignment worked, your yearID min should be 1985

#Now it is time to merge the batting data with the salary data! Since we have players playing multiple years, we'll have repetitions of playerIDs for multiple years, meaning we want to merge on both players and years.

#Use the merge() function to merge the batting and sal data frames by c('playerID','yearID'). Call the new data frame combo

#Use subset() to reassign batting to only contain data from 1985 and onwards

#Use summary to check the data

#Step 7: 
#Analyzing the Lost Players
#As previously mentioned, the Oakland A's lost 3 key players during the off-season. We'll want to get their stats to see what we have to replace. The players lost were: first baseman 2000 AL MVP Jason Giambi (giambja01) to the New York Yankees, outfielder Johnny Damon (damonjo01) to the Boston Red Sox and infielder Rainer Gustavo "Ray" Olmedo ('saenzol01').

#Use the subset() function to get a data frame called lost_players from the combo data frame consisting of those 3 players. Hint: Try to figure out how to use %in% to avoid a bunch of or statements!

#Since all these players were lost in after 2001 in the offseason, let's only concern ourselves with the data from 2001.

#Use subset again to only grab the rows where the yearID was 2001.

#Reduce the lost_players data frame to the following columns: playerID,H,X2B,X3B,HR,OBP,SLG,BA,AB

#Step 8: 
#Replacement Players
#Now we have all the information we need! Here is your final task - Find Replacement Players for the key three players we lost! However, you have three constraints:

#The total combined salary of the three players can not exceed 15 million dollars.
#Their combined number of At Bats (AB) needs to be equal to or greater than the lost players.
#Their mean OBP had to equal to or greater than the mean OBP of the lost players

#Use the combo dataframe you previously created as the source of information! Remember to just use the 2001 subset of that dataframe. There's lost of different ways you can do this, so be creative! It should be relatively simple to find 3 players that satisfy the requirements, note that there are many correct combinations available!

#Helpful Info on Sorting data frames: http://www.cookbook-r.com/Manipulating_data/Sorting/
#(Or just use the dplr package with arrange())

#There are a lot of correct answers for this part! This is where you can really have fun and explore the data with ggplot, figure out which are good data points to split your data on to find replacement players. This ending is left intentionally more open-ended so you can get a feel for exploring real data! Check out the solutions for an example of one way to solve this part.

#Congratulations! you are done
#===============2. t-test ======================
#The basic idea behind a t-test is to use statistic to evaluate two contrary hypotheses:
#H0: NULL hypothesis: The average is the same as the sample used
#H1: Alternate hypothesis: The average is different from the sample used
#The t-test is commonly used with small sample sizes. 
#To perform a t-test, you need to assume normality of the data.

#-------------- 2.1 One Sample - t-test -----------
#Suppose you are a company producing cookies. Each cookie is supposed to contain 10 grams of sugar. The cookies are produced by a machine that adds the sugar in a bowl before mixing everything. You believe the machine does not add 10 grams of sugar for each cookie. If your assumption is true, the machine needs to be fixed. You stored the level of sugar of thirty cookies.

#Note: You can create a randomized vector with the function rnorm().

#How to do it with R:
#You can create a distribution with 30 observations with a mean of 9.99 (sample) and a standard deviation of 0.04 (sample).
set.seed(123)
sugar_cookie <- rnorm(30, mean = 9.99, sd = 0.04)
sugar_cookie

#Define the hypotheses:
#H0: The average level of sugar is equal to 10
#H1: The average level of sugar is different than 10
#By default, alpha = 0.05
t.test(sugar_cookie, mu = 10)
#You can change confidence interval explicitly
#t.test(sugar_cookie, mu = 10, conf.level = 0.99)

#Explain Output:
#df = degree of freedom (n-1 = 30-1=29)
#p-value = 0.1079, which is greater than alpha (0.05), which means we cannot reject Null Hypothesis
#Basically, there is not enough evidance to say that the sugar added to the cookies is not 10 grams.
#95 percent confidence interval: 9.973463 10.002769 - 
#as alpha by default was 0.05, hence Confidence interval was 95%. So you can be confident that 95% of the time, the amount of sugar added by the machine is between 9.973463 grams to 10.002769 grams

#-------------- 2.2 two Sample - t-test -----------
#Of year 2015 Engineering students, each student in a random sample of 6 students was asked about their stipend after they completed graduation.
#Of year 2019 Engineering students, each student in a random sample of 6 students was asked about their stipend after they completed graduation.
#We wanted to see whether the mean salary offered after graduation has changed over the past 4 years.

batch2015 <- c(567, 759, 1029, 400, 998, 936)
batch2019 <- c(820, 960, 700, 545, 769, 1001)

#Formulate Hypothesis:
#H0: NULL Hypothesis - Stipend are not different
#H1: Alternate Hypothesis - Stipend are different
#alpha = 0.05 by default

#By default it runs Welch Two Sample Test, which is independent 
#t.test(batch2015, batch2019)
#To run the test with Student's T-distribution, use the parameter var.equal=TRUE
t.test(batch2015, batch2019, var.equal = TRUE)


#Explaining Output:
#p-value = 0.8901, which is greater than 0.05, which means we fail to reject the null hypothesis. This implies that there is no significant difference between the mean stipend offered to students in 2015 and 2019 batch.
#mean of x = 781.5000 //Sample Mean
#mean of y = 799.1667 //Sample Mean

#-------------------- 2.3 Paired t-test ------------------------
#The paired t-test, or dependant sample t-test, is used when the mean of the treated group is computed twice. 
#The basic application of the paired t-test is:
#A/B testing: Compare two variants
#Case control studies: Before/after treatment

#Example: 
#A beverage company is interested in knowing the performance of a discount program on the sales. The company decided to follow the daily sales of one of its shops where the program is being promoted. At the end of the program, the company wants to know if there is a statistical difference between the average sales of the shop before and after the program.

#First Vector: The company tracked the sales everyday before the program started.
#Second Vector: The program is promoted for one week and the sales are recorded every day.

#You will perform the t-test to judge the effectiveness of the program. 
#This is called a paired t-test because the values of both vectors come from the same distribution (i.e., the same shop).

#Formulate Hypothesis:
#H0: No difference in mean
#H3: The two means are different
#alpha = 0.05, by default

#Note: Remember, one assumption in the t-test is an unknown but equal variance. 
#In reality, the data barely have equal mean, and it leads to incorrect results for the t-test.
#One solution to relax the equal variance assumption is to use the Welch's test. 
#R assumes the two variances are not equal by default. 
#In your dataset, both vectors have the same variance, you can set var.equal= TRUE

#How to do this in R: 
set.seed(123)
# sales before the program
sales_before <- rnorm(7, mean = 50000, sd = 50)
# sales after the program.This has higher mean
sales_after <- rnorm(7, mean = 50075, sd = 50)
# draw the distribution
t.test(sales_before, sales_after, paired = TRUE)
#while doing paired=True, it does not matter if we pass var.equal = TRUE or var.equal = False
#Result will be same

#Explain Output:
#p-value = 0.04011, which is less than alpha=0.05, which means we can reject the null hypotheses
#That means the averages of two groups are significantly different. The program did improve the sales.

#============================= 3. Chi-squared test ========================
#Check if two variables are significant or independent of each other
table(mtcars$carb, mtcars$cyl)
#Output Explained: 

#		Cylinders
# Carb |4	6 	8
#------|---------------
# 1	   |5 	2 	0
# 2	   |6 	0 	4
# 3	   |0 	0 	3
# 4	   |0 	4 	6
# 6	   |0 	1 	0
# 8	   |0 	0 	1

#Formulate Hypothesis: 
#H0: Null Hypothesis - Carb has no significant relationship with cyl
#H1: Alternate Hypothesis - Card has significant relationship with cyl
#alpha = 0.05 by default

#Since there are more levels. So it’s too hard to make out if they relate to each other. Let’s use the chi-squared test instead.
chisq.test(mtcars$carb, mtcars$cyl)

#Regarding the warning: 
#It gave the warning because many of the expected values will be very small and therefore the approximations of p may not be right.
#In R you can use chisq.test(a, simulate.p.value = TRUE) to use simulate p values

#TO check the expected values, you can do
chisq.test(mtcars$carb, mtcars$cyl)$expected

#Output Explained:
#p-value = 0.006632, which is less that alpha = 0.05, hence we reject the null hypothesis. 
#Hence, we conclude that Carb and cyl have a significant relationship.

#========================== 4. Chi-squared ==================================
#F-test is used to assess whether the variances of two populations (A and B) are equal.

#F-test is very sensitive to departure from the normal assumption. You need to check whether the data is normally distributed before using the F-test.
#Shapiro-Wilk test can be used to test whether the normal assumption holds.
#If there is doubt about normality, the better choice is to use Levene’s test or Fligner-Killeen test,


#Here, we’ll use the built-in R data set named 'ToothGrowth'
my_data <- ToothGrowth

#Formulate Hypothesis: 
#H0: Null Hypothesis - No significant difference between two variance
#H1: Alternate Hypothesis - Significant difference between variance
#alpha = 0.05 (default)

var.test(len ~ supp, data = my_data)

#Output Explained:
#p-value = 0.2331
#The p-value of F-test is p = 0.2331433 which is greater than the significance level 0.05. In conclusion, there is no significant difference between the two variances.



#======================== Two Way Anova / Two Factor Anova - Without Replication ====================
#Lets create a dataset of say a lab test carried out by four different scientists using, say, three
#different methods

#So the data may look something like this
#				Scientist1	Scientist2	Scientist3	Scientist3
#	Method A	16.03		16.05		16.02		16.12
#	Method B	16.13		16.13		15.94		15.97
#	Method C	16.09		16.15		16.12		16.1

#Basically what we will be asking here is, are there any significant
#differences in the methods results performed by scientists
#This is out null hypothesis H0

#Create a vector for titration observations:
Titr <- c(16.03,16.05,16.02,16.12,16.13,16.13,15.94,15.97,16.09,16.15,16.12,16.1)
Meth <- c('A','A','A','A','B','B','B','B','C','C','C','C')

#Convert the method into factor
#Its not a big deal, but it is better to set it up as a factor
Meth <- factor(Meth, levels=c('A','B','C'))
class(Meth)

#Create the scientists vector: 
Sci <- c('1','2','3','4','1','2','3','4','1','2','3','4')
#Turn this into a factor as well
Sci <- factor(Sci, levels=c('1','2','3','4'))

#Now we are ready to carry out our anova procedure
#In 2 way anova without interaction there is a plus '+' sign in the model
#While in way with interaction there is a multiplication '*' sign, youc an verify that below.
model2way <- aov(Titr ~ Meth + Sci)
#This is read as: model2way aov titration explaine by method and Scientist
summary(model2way)
#Intrepret Output: 
#            Df  Sum Sq  Mean Sq F value Pr(>F)
#Meth         2 0.01202 0.006008   1.279  0.345
#Sci          3 0.01109 0.003697   0.787  0.543
#Residuals    6 0.02818 0.004697

#Df: there are 3 methods, so degree of freedom is 2, for Scientist Df is 3 as leveles are 4
#F value: This is F-statistic
#For method: F-statistic = 1.279
#For scientist: F-statistic = 0.787
#pr(>F) : this is p-value
#If p-value < 0.05, then null hypothesis (H0 = no significant main effects for methods) can be rejected
#If p-value > 0.05, then null hypothesis holds, The methods are not significant.

#If the p-values are significant, then you'll see the asterix beside the p-values
 
 
#======================== Two Way Anova / Two Factor Anova - With Replication/Interaction ====================
my_data <- read.table('twanova.txt', header = T)
View(my_data)
attach(my_data)

#Check if factors have been identified correctly,
str(my_data)
#If factors have not been identified correctly, then you can change it using below code
#my_data$predator_density <- as.factor(my_data$predator_density)
#my_data$timing <- as.factor(my_data$timing)

#Interaction plot:
#So there is probably no interaction effect, hence we can proceed with the anova here
plot <- ggline(my_data, x = "timing", y = "activity", color = "predator_density",
               add = c("mean_se", "dotplot"),
               palette = c("#00AFBB", "#E7B800"))
plot

#Interaction = the effect of one factor on the dependent variable depends on the level of another factor
#Type does not matter in a balanced design#

#Installing external libraries
#install.packages("car")
library(car)

#Modelling Anova
model1 <- lm(activity ~ predator_density * timing, data = my_data)
Anova(model1,type="III")
#output:
#Anova Table (Type III tests)
#Response: activity
#                        Sum Sq Df F value    Pr(>F)    
#(Intercept)              73438  1 80.7842 1.843e-08 ***
#predator_density          2417  1  2.6586  0.118640    
#timing                   10104  1 11.1142  0.003309 ** 
#predator_density:timing   9389  1 10.3283  0.004357 ** 
#Residuals                18181 20                      
#---
#Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

#Interpreting output: 
#predator_density:timing: This is the interaction effect
#And we see two stars on the p-value for this interaction, which means that it is 
#highly significant.
#Hence the effects of first factor (predator_density) is highly dependent on the other factor (timing)

#So, if there  is an interaction then it does not make sense to look at the p-values of the factors (main effects)
 #i.e. Intercept, predator_density & timing are not meaningful anymore
 

#=== Check Assumptions of 2 way anova ==========
#Assumption 1: Normal distribution of the model residuals
plot(model1,2)

#So this does not look that bad, but it is not that good either.
#so we can run some normality tests on that
aov_residuals <- residuals(object = model1)
shapiro.test(aov_residuals)
#If p-value is high (greater than 0.05), then it is normally distributed


#Assumption 2: Homogeneity of variance of the groups
#Basically the variance is equal between the groups
plot(model1,1)
#you can test the equality of variance usince leveneTest
leveneTest(activity ~ predator_density * timing, data = my_data)
#if p-value > 0.05, variance are equal

#Post-hoc test: In case of a significant interaction effect, we investigate all seperate group combinations
#install.packages("lsmeans")
#install.packages("multcompView")
library("lsmeans")
library("multcompView")

posthoc <- lsmeans(model1,pairwise ~ predator_density*timing, adjust="tukey")
#tukey adjustment because we have multiple comparisions, we have 4 groups, this is important
posthoc

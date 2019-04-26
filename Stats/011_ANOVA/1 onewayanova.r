#======================== One Way Anova / Single Factor Anova ====================
#Data of replites (lizards)
#We measured the length of each species of lizards from snout to tail
#We want to check if the length of species are different

dataoneway <- read.table("onewayanova.txt",h=T)
View(dataoneway)
attach(dataoneway)
#The attach() function in R can be used to make objects within dataframes accessible in R with fewer keystrokes. 
#As an example: if you wish to call a mean fucntion on a column withing a dataframe, you can use mean(<column name>)
#after you attach the dataframe

#Lets see what all columns we have in our dataset
names(dataoneway)

#Assumption 1: All samples are independent, and collected in >2 independent categorical groups
#set as categorical factors
dataoneway$Group <- as.factor(dataoneway$Group)
#Label each categorical factor
dataoneway$Group = factor(dataoneway$Group,labels = c("Wall lizard", "Viviparous lizard", "Snake-eyed lizard"))
#Check the class of 'Group' variable
class(dataoneway$Group)

#Assumption 2: Dependent variable is continuous

#Assumption 3: Normal distributions of each group, no major outliers

Group1 <- subset(dataoneway, Group == "Wall lizard")
Group2 <- subset(dataoneway, Group == "Viviparous lizard")
Group3 <- subset(dataoneway, Group == "Snake-eyed lizard")

#You check if there are any major outliers or not and the data is noramally distributed or not
#Coz if this assumption 3 does not holds true, you use some other test and not this one
qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

#Assumption 4: Homogeneneity of variances
#Homogeneneity (basically variance of the groups) can be tested using barlett test
bartlett.test(Length ~ Group, data = dataoneway)
#output: Bartlett's K-squared = 0.43292, df = 2, p-value = 0.8054
#If the p value of this test is high (higher than 0.05), then we fail to reject the null hypothesis
#i.e. we can say that the variances of all the groups are equal.



#########################################################################

#One Way ANOVA - Test if the means of the k populations are equal
#We look at the lenght of each individual vs the Group (species)
model1 = lm(Length ~ Group, data = dataoneway)
anova(model1)
#Interpret Output: If the p-value is less than 0.05, then we reject the null hypothesis
#i.e. there is a difference between the lenght between three species
#However we do not know yet which species are longer or smaller.. we do not know

#So to check which species are different from one another, we use the below Post-hoc test
#Post-hoc test TukeyHSD - Test which of the groups have different means
TukeyHSD(aov(model1))
#Interpret Output: 
#This test will give the difference of lenght with respect to each species
#At the last column, check the p-value (p adj). 
#If p-value is less than 0.05, their lengths are different
#If p-value is larger than 0.05, their lenghts are the same
 
#########################################################################


#Data visualisation

#install.packages("ggplot2")
library("ggplot2")

ggplot(dataoneway, aes(x = Group, y = Length)) +
  geom_boxplot(fill = "grey80", colour = "black") +
  scale_x_discrete() + xlab("Treatment Group") +
  ylab("Length (cm)")








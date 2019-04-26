#======================== Non-Parametric test - Mann-Whitney test====================
#Also known as : Wilcoxon Rank-Sum test
LungCapData = read.table('LungCapData.txt', header = T, sep = "\t")
View(LungCapData)
attach(LungCapData)
names(LungCapData)

class(LungCap)
class(Smoke)
levels(Smoke)

boxplot(LungCap ~ Smoke)
#Ho: Median Lung Capacity of smokers = Lung Capacity of non-sokers
#two-sided test

wilcox.test(LungCap ~ Smoke, mu=0, alt='two.sided', conf.int=T, conf.level=0.95, paired=F, exact=T, correct=T)
#This gives you some warning, it it because we asked for exact p-values, put exact=F and error will be gone

wilcox.test(LungCap ~ Smoke, mu=0, alt='two.sided', conf.int=T, conf.level=0.95, paired=F, exact=F, correct=T)

#If p-value greate than or equal to 0.05 then null hypothesis holds
#Hence no difference between lung capacity of smokers and non-smokers
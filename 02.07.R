# read the csv file
multivariate <- read.csv("/Users/lunlinyang/Desktop/2022 spring/MGMT6600/multivariate.csv")
attach(multivariate)
names(multivariate)
multivariate

# create some scatterplot
plot(Income, Immigrant, main = "scatterplot")
plot(Immigrant, Homeowners)

# fitting the liner regression mdoel using "lm" function
help(lm)
mm <- lm(Homeowners ~ Immigrant)
mm
plot(Immigrant, Homeowners)
abline(mm)
abline(mm,col =2, lwd= 3)

summary(mm)
attributes(mm)
mm$coefficients

# lab assignment
library(ggplot2)
library(gcookbook)
ggplot(pg_mean, aes(x=grop, y=weight)) + geom_bar(stat = "identity")
BOD

# Time is numeric (continuous)
str(BOD)
ggplot(BOD, aes(x=Time, y=demand)) + geom_bar(stat = "identity")

ggplot(BOD, aes(x=factor(Time), y=demand)) + geom_bar(stat = "identity")
ggplot(pg_mean, aes(x=group, y=weight)) +geom_bar(stat = "identity", fill="lightblue", colour = "red")
ggplot(BOD, aes(x=factor(Time), y=demand)) +geom_bar(stat = "identity", fill="orange", colour = "red")


cabbage_exp
ggplot(cabbage_exp, aes(x=Date, fill=Cultivar)) + geom_bar(position = "dodge")
ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) +geom_bar(stat="identity")
# Making Bar Graph of Counts
ggplot(diamonds, aes(x=cut)) +geom_bar() # this is equvalent to using geom_bar(stat="bin)

data("diamonds")
diamonds
ggplot(diamonds,aes(x=carat)) + geom_bar()
geom_bar()

ggplot(diamonds, aes(x=carat)) + geom_histogram()
ups <- subset(uspopchange, rank(Change)>40)
ups
ggplot(ups, aes(x=Abb, y= Change, fill=Region)) + geom_bar(stat = "identity")
ggplot(ups, aes(x=Abb, y=Change, fill=Region)) +geom_bin2d()
ggplot(ups, aes(x=Abb, y=Change, fill=Region)) + geom_col()
ggplot(ups, aes(x=reorder(Abb,Change), y=Change, fill=Region)) + geom_bar(stat = "identity", colour= "red") +
scale_fill_manual(values=c("#669933", "#FFCC66")) + xlab("US-States")
ggplot(ups, aes(x=reorder(Abb,Change), y=Change, fill=Region)) + geom_bar(stat = "identity", color = "purple") +
  scale_fill_manual(values=c("#224455","#DDCC33"))



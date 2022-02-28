library(ISLR)
library(MASS)
library(boot)
set.seed(1)

# read file
??cv.glm

# set the trainning dataset
train = sample(392,196)

# build linear model
lm.fit <- lm(mpg~horsepower, data = Auto, subset = train)

attach(Auto)
mean((mpg-predict(lm.fit,Auto))[-train]^2)

# for Quadratic regression
lm.fit2 <- lm(mpg~poly(horsepower,2), data = Auto, subset = train) 

mean((mpg-predict(lm.fit2,Auto))[-train]^2) 
# for cubic regression
lm.fit3 <- lm(mpg~poly(horsepower,3), data = Auto, subset = train) 

mean((mpg-predict(lm.fit3,Auto))[-train]^2)

# using different set
set.seed(2)
train = sample(392,196)

# repeat the process

lm.fit <- lm(mpg~horsepower, data = Auto, subset = train)

attach(Auto)
mean((mpg-predict(lm.fit,Auto))[-train]^2)

# for Quadratic regression
lm.fit2 <- lm(mpg~poly(horsepower,2), data = Auto, subset = train) 

mean((mpg-predict(lm.fit2,Auto))[-train]^2) 
# for cubic regression
lm.fit3 <- lm(mpg~poly(horsepower,3), data = Auto, subset = train) 

mean((mpg-predict(lm.fit3,Auto))[-train]^2)

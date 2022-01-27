data_2010EPI <- read.csv("/Users/lunlinyang/Desktop/2022 spring/MGMT6600/2010EPI_data.csv")
names(data_2010EPI) <- as.matrix(data_2010EPI[1, ])
data_2010EPI <- data_2010EPI[-1, ]
data_2010EPI[] <- lapply(data_2010EPI, function(x)
type.convert(as.character(x)))
data_2010EPI
View(data_2010EPI)

summary(data_2010EPI)

EPI
summary(EPI)
tf <- is.na(EPI)
E <- EPI[!tf]
summary(E)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.)) # or try bw=“SJ”
rug(EPI)
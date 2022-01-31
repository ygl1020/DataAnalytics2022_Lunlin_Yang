ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut))
ggplot(data = diamonds) +  geom_bar(mapping = aes(x = carat))
library(magrittr)
library(dplyr)
diamonds %>% count(cut_width(carat, 0.5))

smaller <- diamonds %>% filter(carat < 3)
ggplot(data = smaller, mapping = aes(x = carat)) + geom_histogram(binwidth = 0.1)
ggplot(data = smaller, mapping = aes(x =carat, color = cut)) + geom_freqpoly(binwidth = 0.1)
ggplot(data = smaller, mapping = aes(x = carat)) + geom_histogram(binwidth = 0.01)

ggplot(data = faithful, mapping = aes(x =eruptions)) + geom_histogram(binwidth =0.25)
ggplot(diamonds) + geom_histogram(mapping = aes(x = y), binwidth = 0.5)

unusual <- diamonds %>% filter(y < 3 | y > 20) %>% arrange(y)
unusual
ggplot(unusual) + geom_histogram(mapping = aes(x = y), binwidth = 0.5)

diamonds2 <- diamonds %>% filter(between(y, 3, 20))
diamonds2 <- diamonds %>% mutate(y = ifelse(y < 3 | y > 20, NA, y))
ggplot(diamonds2) + geom_histogram(mapping = aes(x = y), binwidth = 0.5)
ggplot(data = diamonds2, mapping = aes(x = x, y = y)) + geom_point(na.rm = TRUE)

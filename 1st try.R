values <- rnorm (1000, mean = 10)
value_mean <-mean(values)
round(value_mean, digits = 2)
library(magrittr)
rnorm(1000, mean = 10)%>%mean()%>% round(digits=2)

#creat a function
fun_mean <- function(x){sum(x)/length(x)}
## find the mean 
fun_mean(x=swiss$Examination)

#descriptive statistics: central tendency 
#histogram
hist(swiss$Examination)
#styling
hist(swiss$Examination, main = 'Swiss Canton Draftee Examination Scores (1888)',
     xlab='% receiving highest mark on army exam')

#finding means
mean(swiss$Examination)
#If you have missing values
mean(swiss$Examination, na.rm = TRUE)


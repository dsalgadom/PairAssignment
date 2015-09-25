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

#loops
#You can ‘loop’ through the data set to find the mean for each column
for(i in 1:length(names(swiss))){swiss[, i] %>% 
    mean() %>% round(digits=1)%>% paste(names(swiss)[i], ., '\n')%>% cat()}

#Median
median(swiss$Examination)

# Use summary to find the MODE

#Simple bar chart
devtools::source_url('http://bit.ly/OTWEGS')
plot(MortalityGDP$region, xlab='Region')

#Variation
#Range
range(swiss$Examination)
#Quartiles
summary(swiss$Examination)
#Interquartile Range IQR=Q3-Q1
IQR(swiss$Examination)
#Boxplot
boxplot(swiss$Examination, main = '% of Draftees with Hieghest Mark')
#Variance
var(swiss$Examination)
#Standart DEviation
sd(swiss$Examination)
#Standart Error
sd_error <- function (x) {sd(x)/sqrt(length(x))}
sd_error(swiss$Examination)

plot(log(swiss$Education), swiss$Examination)
cor.test(log(swiss$Education), swiss$Examination)

data()
data(UCBAdmissions)
summary(UCBAdmissions)
?summaary
?UCBAdmissions
detach(swiss)
rm(swiss)

names(UCBAdmissions)
data(UCBAdmissions)
head(UCBAdmissions)

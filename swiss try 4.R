data(swiss)
?swiss
names(swiss)
summary(swiss)

#I will try some mathematical functions
log(swiss$Examination)
Examinationlog <- log(swiss$Examination)
mean(Examinationlog)
mean(Examinationlog, na.rm=T)
is.na(Examinationlog)
is.na(swiss$Fertility)

# trying out
# now it worked

library(dplyr)
mean (1:10)

number <- 10
words <- "Hello World"
numeric_vector <- c(1, 2, 3)
character_vector <- c('Albania', 'Botswana', 'Cambodia')
fruits <- c(1, 1, 2)
fruit_names <- c('apples', 'mangos')
fruits_factor <- factor(fruits, labels = fruit_names)
summary(fruits_factor)
combined <- cbind(numeric_vector, character_vector)
> combined
# in matrices Vectors need to have objects from the same length and same width 
combined_df <- data.frame(numeric_vector, character_vector, stringsAsFactors = FALSE)
combined_df
# Combine numeric_vector and character_vector into a data frame
# Create a list with three objects of different lengths
test_list <- list(countries = character_vector, not_there = c(NA, NA), more_numbers = 1:10)
test_list
# Summarise combined_df
summary(combined_df, digits = 2)
#Funtions are always follow by two parentesis
#arguments are separated by commas
combined_df$character_vector
##The $ is known as the component selector. It selects a component of an object.
save.image("~/HSoG/Introduction to Collaborative Social Science Data Analysis/class 1/1st Assignment.RData")
# Select the second row and first column of combined_df
combined_df[2, 1]
# Select the first two rows
combined_df[c(1, 2), ]
# Select the character_vector column
combined_df[, 'character_vector']
combined_df$character_vector[3] <- 'China'
combined_df$character_vector
combined_df$new_var <- 1:3
combined_df
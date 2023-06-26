#1
library(tidyverse) # Load the tidyverse package

#2
# Create a dataset of people from different backgrounds
people <- data.frame(Name = c("Hank", "Sally", "Maria", "Travis"), 
                     Race = c("White", "White", "Hispanic", "Black"),
                     Gender = c("Male", "Female", "Female", "Male"),
                     Age = c(45, 30, 25, 32))

#3
# Create a function to calculate the mean age of the population
mean_age <- function(data) {
  mean(data$Age)
}

#4
# Calculate the mean age 
mean_age_all <- mean_age(people)

#5
# Calculate the mean age for each race
mean_age_race <- people %>%
  group_by(Race) %>%
  summarise(Mean_Age = mean_age(.))

#6
# Calculate the mean age for each gender
mean_age_gender <- people %>%
  group_by(Gender) %>%
  summarise(Mean_Age = mean_age(.))

#7
# Create a barplot to compare the mean age by race
ggplot(mean_age_race, aes(x = Race, y = Mean_Age)) +
  geom_col()

#8
# Create a barplot to compare the mean age by gender
ggplot(mean_age_gender, aes(x = Gender, y = Mean_Age)) +
  geom_col()

#9
# Find the most common gender in the population 
gender_counts <- people %>%
  group_by(Gender) %>%
  summarise(Count = n())

#10
# Find the most common race in the population
race_counts <- people %>%
  group_by(Race) %>%
  summarise(Count = n())

#11
# Calculate the total number of people in the population
total_people <- nrow(people)

#12
# Create a function to calculate the percentage of people with a given characteristic
calc_percentage <- function(counts, total) {
  counts$Percentage <- counts$Count / total * 100
  counts
}

#13
# Calculate the percentage of people of each gender in the population
gender_percentages <- calc_percentage(gender_counts, total_people)

#14
# Create a function to calculate the standard deviation
calc_sd <- function(data) {
  sd(data$Age)
}

#15
# Calculate the standard deviation of the ages
sd_ages <- calc_sd(people)

#16
# Create a line graph to compare the ages of individuals
ggplot(people, aes(x = Name, y = Age)) +
  geom_line()

#17
# Calculate the standard deviation by gender
sd_gender <- people %>%
  group_by(Gender) %>%
  summarise(SD_Age = calc_sd(.))

#18
# Calculate the standard deviation by race
sd_race <- people %>%
  group_by(Race) %>%
  summarise(SD_Age = calc_sd(.))

#19
# Create a boxplot to compare the standard deviation of ages by gender
ggplot(sd_gender, aes(x = Gender, y = SD_Age)) +
  geom_boxplot()

#20
# Create a boxplot to compare the standard deviation of ages by race
ggplot(sd_race, aes(x = Race, y = SD_Age)) +
  geom_boxplot()

#21
# Create a function to calculate the median age 
median_age <- function(data) {
  median(data$Age)
}

#22
# Calculate the median age of the entire population
median_age_all <- median_age(people)

#23
# Calculate the median age for each race
median_age_race <- people %>%
  group_by(Race) %>%
  summarise(Median_Age = median_age(.))

#24
# Calculate the median age for each gender
median_age_gender <- people %>%
  group_by(Gender) %>%
  summarise(Median_Age = median_age(.))

#25
# Create a barplot to compare the median age by race
ggplot(median_age_race, aes(x = Race, y = Median_Age)) +
  geom_col()

#26
# Create a barplot to compare the median age by gender
ggplot(median_age_gender, aes(x = Gender, y = Median_Age)) +
  geom_col()

#27
# Create a function to calculate how many people are within one standard deviation of the mean
num_within_sd <- function(data, mean, sd) {
  data %>%
    filter(Age >= mean - sd & Age <= mean + sd) %>%
    nrow()
}

#28
# Calculate the number of people within one standard deviation of the mean age
num_within_sd_all <- num_within_sd(people, mean_age_all, sd_ages)

#29
# Calculate the number of people within one standard deviation of the mean age by race
num_within_sd_race <- people %>%
  group_by(Race) %>%
  summarise(Within_SD = num_within_sd(., mean_age(.), sd_ages))

#30
# Calculate the number of people within one standard deviation of the mean age by gender
num_within_sd_gender <- people %>%
  group_by(Gender) %>%
  summarise(Within_SD = num_within_sd(., mean_age(.), sd_ages))

#31
# Create a barplot to compare the number of people within one standard deviation of the mean by race
ggplot(num_within_sd_race, aes(x = Race, y = Within_SD)) +
  geom_col()

#32
# Create a barplot to compare the number of people within one standard deviation of the mean by gender
ggplot(num_within_sd_gender, aes(x = Gender, y = Within_SD)) +
  geom_col()

#33
# Create a function to calculate the range of ages
calc_range <- function(data) {
  range(data$Age)
}

#34
# Calculate the range of ages for the entire population
range_ages_all <- calc_range(people)

#35
# Calculate the range of ages for each race
range_ages_race <- people %>%
  group_by(Race) %>%
  summarise(Range_Ages = calc_range(.))

#36
# Calculate the range of ages for each gender
range_ages_gender <- people %>%
  group_by(Gender) %>%
  summarise(Range_Ages = calc_range(.))

#37
# Create a Barplot to compare the range of ages by race
ggplot(range_ages_race, aes(x = Race, y = Range_Ages)) +
  geom_col()

#38
# Create a Barplot to compare the range of ages by gender
ggplot(range_ages_gender, aes(x = Gender, y = Range_Ages)) +
  geom_col()

#39
# Create a function to calculate the IQR of ages
iqr_age <- function(data) {
  IQR(data$Age)
}

#40
# Calculate the IQR of ages for the entire population
iqr_ages_all <- iqr_age(people)

#41
# Calculate the IQR of ages for each race
iqr_ages_race <- people %>%
  group_by(Race) %>%
  summarise(IQR_Ages = iqr_age(.))

#42
# Calculate the IQR of ages for each gender
iqr_ages_gender <- people %>%
  group_by(Gender) %>%
  summarise(IQR_Ages = iqr_age(.))

#43
# Create a Barplot to compare the IQR of ages by race
ggplot(iqr_ages_race, aes(x = Race, y = IQR_Ages)) +
  geom_col() 

#44
# Create a Barplot to compare the IQR of ages by gender
ggplot(iqr_ages_gender, aes(x = Gender, y = IQR_Ages)) +
  geom_col()

#45
# Create a function to calculate the number of people within the IQR of the median age
num_within_iqr <- function(data, median, iqr) {
  data %>%
    filter(Age >= median - iqr & Age <= median + iqr) %>%
    nrow()
}

#46
# Calculate the number of people within the IQR of the median age for the entire population
num_within_iqr_all <- num_within_iqr(people, median_age_all, iqr_ages_all)

#47
# Calculate the number of people within the IQR of the median age by race
num_within_iqr_race <- people %>%
  group_by(Race) %>%
  summarise(Within_IQR = num_within_iqr(., median_age(.), iqr_age(.)))

#48
# Calculate the number of people within the IQR of the median age by gender
num_within_iqr_gender <- people %>%
  group_by(Gender) %>%
  summarise(Within_IQR = num_within_iqr(., median_age(.), iqr_age(.)))

#49
# Create a Barplot to compare the number of people within the IQR of the median age by race
ggplot(num_within_iqr_race, aes(x = Race, y = Within_IQR)) +
  geom_col()

#50
# Create a Barplot to compare the number of people within the IQR of the median age by gender
ggplot(num_within_iqr_gender, aes(x = Gender, y = Within_IQR)) +
  geom_col()

#51
# Create a function to calculate the number of people outside the IQR of the median age
num_outside_iqr <- function(data, median, iqr) {
  data %>%
    filter(Age < median - iqr | Age > median + iqr) %>%
    nrow()
}

#52
# Calculate the number of people outside the IQR of the median age for the entire population
num_outside_iqr_all <- num_outside_iqr(people, median_age_all, iqr_ages_all)

#53
# Calculate the number of people outside the IQR of the median age by race
num_outside_iqr_race <- people %>%
  group_by(Race) %>%
  summarise(Outside_IQR = num_outside_iqr(., median_age(.), iqr_age(.)))

#54
# Calculate the number of people outside the IQR of the median age by gender
num_outside_iqr_gender <- people %>%
  group_by(Gender) %>%
  summarise(Outside_IQR = num_outside_iqr(., median_age(.), iqr_age(.)))

#55
# Create a Barplot to compare the number of people outside the IQR of the median age by race
ggplot(num_outside_iqr_race, aes(x = Race, y = Outside_IQR)) +
  geom_col()

#56
# Create a Barplot to compare the number of people outside the IQR of the median age by gender
ggplot(num_outside_iqr_gender, aes(x = Gender, y = Outside_IQR)) +
  geom_col()

#57
# Calculate the number of people in each age group
age_groups <- people %>%
  group_by(Age) %>%
  summarise(Count = n())

#58
# Create a function to calculate the percentage of people in each age group
calc_age_percentage <- function(counts, total) {
  counts$Percentage <- counts$Count / total * 100
  counts
}

#59
# Calculate the percentage of people in each age group
age_group_percentages <- calc_age_percentage(age_groups, total_people)

#60
# Create a Barplot to compare the percentage of people in each age group
ggplot(age_group_percentages, aes(x = Age, y = Percentage)) +
  geom_col()

#61
# Create a function to determine the interquartile range of the ages
calc_iqr <- function(data) {
  IQR(data$Age)
}

#62
# Calculate the interquartile range of the ages
iqr_ages <- calc_iqr(people)

#63
# Create a function to calculate the number of people within the interquartile range of the median
num_within_iqr_median <- function(data, median, iqr) {
  data %>%
    filter(Age >= median - iqr & Age <= median + iqr) %>%
    nrow()
}

#64
# Calculate the number of people within the interquartile range of the median age
num_within_iqr_median_all <- num_within_iqr_median(people, median_age_all, iqr_ages)

#65
# Calculate the number of people within the interquartile range of the median age by race
num_within_iqr_median_race <- people %>%
  group_by(Race) %>%
  summarise(Within_IQR_Median = num_within_iqr_median(., median_age(.), iqr_ages))

#66
# Calculate the number of people within the interquartile range of the median age by gender
num_within_iqr_median_gender <- people %>%
  group_by(Gender) %>%
  summarise(Within_IQR_Median = num_within_iqr_median(., median_age(.), iqr_ages))

#67
# Create a Barplot to compare the number of people within the interquartile range
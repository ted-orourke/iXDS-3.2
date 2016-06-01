library(readr)
download.file("https://raw.githubusercontent.com/ICI3D/RTutorials/master/OswegoTutorial.csv", "diet.csv")
diet <- read_csv("diet.csv")
diet$age <- strtoi(diet$age)

?filter
male <- filter(diet, diet$sex == 1)
male$sex <- "Male"
female <- filter(diet, diet$sex == 1)
female$sex <- "Female"
diet <- rbind(male, female)

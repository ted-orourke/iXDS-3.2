library(readr)
download.file("https://raw.githubusercontent.com/ICI3D/RTutorials/master/OswegoTutorial.csv", "diet.csv")
diet <- read_csv("diet.csv")
diet$age <- strtoi(diet$age)

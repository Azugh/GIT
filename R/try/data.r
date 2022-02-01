rm(list = ls())

data <- read_csv("trydata.csv")

data$death_dummy <- as.numeric(data$death != 0)

sum(data$death_dummy) / nrow(data)

dead <- subset(data, data$death_dummy == 1)
alive <- subset(data, data$death_dummy == 0)
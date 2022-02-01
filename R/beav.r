rm(list = ls())

library(ggplot2)

beav <- beaver1

beav$id <- 1:nrow(beav)

ggplot(data = beav, aes(x = id, y = temp)) + geom_line(color = "red", size = 1) + geom_point()


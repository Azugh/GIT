rm(list = ls())

strength <- c("крепкий", "так себе", "средний")
sweet <- c(1, 2, 0)

strength_ord <-
  factor(strength,
         levels =  c("так себе", "средний", "крепкий"),
         ordered = TRUE)

strength_ord

strength != "крепкий" & sweet > 1
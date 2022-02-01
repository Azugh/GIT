rm(list = ls())

factorial <- function(n) {

    if(n <= 2) return(n)
  
    return(factorial(n - 1) + factorial(n - 2))
}

factorial(5)

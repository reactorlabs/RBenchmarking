library(car)

function_to_run <- function() {
    x <- structure(list(r = 0.688344958611428, dw = 0.616863555118573, p = 0, alternative = "two.sided"), class = "durbinWatsonTest")
    car:::print.durbinWatsonTest(x = x)
}





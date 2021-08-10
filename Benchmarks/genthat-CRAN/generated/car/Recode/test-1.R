library(car)

function_to_run <- function() {
    x <- c(1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L)
    car:::Recode(x, "1:2='A'; 3='B'")
}





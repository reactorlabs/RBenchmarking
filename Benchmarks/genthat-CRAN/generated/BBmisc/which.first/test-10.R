library(BBmisc)

function_to_run <- function() {
    new.sums <- c(11L, 12L, 12L, 12L, 12L)
    capacity <- 11
    BBmisc:::which.first(x = new.sums <= capacity, use.names = FALSE)
}





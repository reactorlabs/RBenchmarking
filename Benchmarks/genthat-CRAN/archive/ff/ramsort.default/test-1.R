library(ff)

function_to_run <- function() {
    x <- c(1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L, 5L, 6L, 6L, 7L, 8L, 8L, 9L, 11L, 11L, 12L, 13L, 13L, 13L, 
        15L, 15L, 16L, 16L, 16L, 18L, 18L, 20L, 20L, 22L, 22L, 23L, 23L, 23L, 24L, 24L, 24L, 24L, 25L, 26L, 26L, NA, NA, 
        NA)
    ff:::ramsort.default(x = x)
}





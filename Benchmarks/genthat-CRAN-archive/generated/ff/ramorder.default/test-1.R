library(ff)

function_to_run <- function() {
    x <- c(37L, 1L, 25L, 10L, 36L, 18L, 24L, 7L, 4L, 38L, 5L, 14L, 20L, 26L, 35L, 15L, 3L, 9L, 32L, 30L, 13L, 21L, 2L, 8L, 
        34L, 40L, 39L, 31L, 17L, 11L, 6L, 12L, 22L, 23L, 28L, 27L, 29L, 33L, 19L, 16L)
    o <- c(2L, 23L, 17L, 9L, 11L, 31L, 8L, 24L, 18L, 4L, 30L, 32L, 21L, 12L, 16L, 40L, 29L, 6L, 39L, 13L, 22L, 33L, 34L, 
        7L, 3L, 14L, 36L, 35L, 37L, 20L, 28L, 19L, 38L, 25L, 15L, 5L, 1L, 10L, 27L, 26L)
    na.last <- TRUE
    i <- 1L
    has.na <- TRUE
    decreasing <- FALSE
    ff:::ramorder.default(x = x, i = o, has.na = has.na[i], na.last = na.last[i], decreasing = decreasing[i], stable = TRUE, 
        optimize = "time")
}





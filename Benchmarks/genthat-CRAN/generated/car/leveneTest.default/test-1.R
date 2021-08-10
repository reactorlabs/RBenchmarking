library(car)

function_to_run <- function() {
    y <- c(8L, 4L, 8L, 7L, 10L, 6L, 12L, 4L, 13L, 12L, 4L, 13L, 7L, 9L, 9L, 24L, 6L, 7L, 23L, 13L, 8L, 12L, 19L, 12L, 21L, 
        9L, 23L, 7L, 17L, 14L, 11L, 16L, 15L, 20L, 8L, 12L, 14L, 14L, 17L, 7L, 17L, 13L, 16L, 10L, 15L)
    group <- structure(c(5L, 4L, 4L, 5L, 5L, 5L, 6L, 6L, 5L, 5L, 6L, 4L, 5L, 6L, 4L, 4L, 5L, 4L, 4L, 4L, 5L, 5L, 1L, 3L, 
        2L, 1L, 2L, 1L, 3L, 3L, 1L, 3L, 2L, 3L, 3L, 2L, 1L, 3L, 3L, 3L, 3L, 1L, 2L, 1L, 3L), .Label = c("high.high", "low.high", 
        "medium.high", "high.low", "low.low", "medium.low"), class = "factor")
    car:::leveneTest.default(y = y, group = group)
}





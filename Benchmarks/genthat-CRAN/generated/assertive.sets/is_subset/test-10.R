library(assertive.sets)

function_to_run <- function() {
    y <- 5:1
    x <- 1:5
    .yname <- "5:1"
    .xname <- "1:5"
    assertive.sets:::is_subset(x = x, y = y, strictly = FALSE, .xname = .xname, .yname = .yname)
}





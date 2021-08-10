library(fields)

function_to_run <- function() {
    smallplot <- NULL
    legend.width <- 1.2
    legend.shrink <- 0.9
    legend.mar <- 5.1
    horizontal <- FALSE
    bigplot <- NULL
    add <- FALSE
    fields:::imageplot.setup(add = add, legend.shrink = legend.shrink, legend.width = legend.width, horizontal = horizontal, 
        legend.mar = legend.mar, bigplot = bigplot, smallplot = smallplot)
}





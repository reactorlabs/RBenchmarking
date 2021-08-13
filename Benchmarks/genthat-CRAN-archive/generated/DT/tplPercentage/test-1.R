library(DT)

function_to_run <- function() {
    rownames <- FALSE
    names <- c("A", "B", "C", "D", "E")
    i <- 3
    DT:::tplPercentage(cols = i, digits = 2, interval = 3, mark = ",", dec.mark = ".", names, rownames)
}





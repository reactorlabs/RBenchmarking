library(DT)

function_to_run <- function() {
    rownames <- FALSE
    names <- c("A", "B", "C", "D", "E")
    i <- 4
    DT:::tplRound(cols = i, digits = 3, interval = 3, mark = ",", dec.mark = ".", names, rownames)
}





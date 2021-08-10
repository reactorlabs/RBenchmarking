library(DT)

function_to_run <- function() {
    rownames <- TRUE
    names <- c(" ", "temperature", "pressure")
    i <- 2
    DT:::tplSignif(cols = i, digits = 2, interval = 3, mark = ",", dec.mark = ".", names, rownames)
}





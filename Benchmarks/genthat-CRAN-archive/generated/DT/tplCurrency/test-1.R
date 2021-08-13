library(DT)

function_to_run <- function() {
    rownames <- FALSE
    names <- c("A", "B", "C", "D", "E")
    i <- c(0, 2)
    DT:::tplCurrency(cols = i, currency = "$", interval = 3, mark = ",", digits = 2, dec.mark = ".", before = TRUE, names, 
        rownames)
}







genthat_extracted_call <- function() {
    rownames <- TRUE
    names <- c(" ", "temperature", "pressure")
    i <- 2
    DT:::tplSignif(cols = i, digits = 2, interval = 3, mark = ",", dec.mark = ".", names, rownames)
}





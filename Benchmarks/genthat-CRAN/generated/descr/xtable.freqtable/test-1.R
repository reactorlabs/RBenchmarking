library(descr)

function_to_run <- function() {
    f <- structure(c(110, 112.4, 9, 10.8, 242.2, 45.4170107349298, 46.4079273327828, 3.7159372419488, 4.45912469033856, 100, 
        49.4604316546763, 50.5395683453237, NA, NA, 100), .Dim = c(5L, 3L), .Dimnames = list(c("No", "Yes", "No answer", 
        "NA's", "Total"), c("Frequency", "Percent", "Valid Percent")), xlab = "Do you agree?", class = c("freqtable", "matrix"), 
        xdata.c = structure(c(110, 112.4), names = c("No", "Yes")), xdata.p = structure(c(49.4604316546763, 50.5395683453237), 
            names = c("No", "Yes")))
    descr:::xtable.freqtable(x = f)
}





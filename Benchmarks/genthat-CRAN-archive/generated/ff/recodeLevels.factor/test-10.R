

genthat_extracted_call <- function() {
    lev <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", 
        "w", "x", "y", "z")
    i <- 4L
    dat <- structure(list(log = c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE), int = 10:1, dbl = c(10.1, 
        9.1, 8.1, 7.1, 6.1, 5.1, 4.1, 3.1, 2.1, 1.1), fac = structure(10:1, .Label = c("a", "b", "c", "d", "e", "f", "g", 
        "h", "i", "j"), class = "factor"), ord = structure(10:1, .Label = c("A", "B", "C", "D", "E", "F", "G", "H", "I", 
        "J"), class = "factor"), dct = structure(c(1628483601, 1628483600, 1628483599, 1628483598, 1628483597, 1628483596, 
        1628483595, 1628483594, 1628483593, 1628483592), class = c("POSIXct", "POSIXt"), tzone = ""), dat = structure(c(-21906, 
        -21907, -21908, -21909, -21910, -21911, -21912, -21913, -21914, -21915), class = "Date")), class = "data.frame", 
        row.names = c(NA, -10L))
    ff:::recodeLevels.factor(x = dat[[i]], lev = lev)
}





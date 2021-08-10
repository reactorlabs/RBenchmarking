library(dfCompare)

function_to_run <- function() {
    dfOld <- structure(list(a = c(2, 3, 5), b = structure(1:3, .Label = c("aa", "bb", "cc"), class = "factor"), c = c(TRUE, 
        FALSE, TRUE)), class = "data.frame", row.names = c(NA, -3L))
    dfNew <- structure(list(a = c(3, 4, 5), b = structure(c(1L, 3L, 2L), .Label = c("aaa", "cc", "dd"), class = "factor"), 
        c = c(TRUE, FALSE, TRUE)), class = "data.frame", row.names = c(NA, -3L))
    dfCompare:::dfCompare(dfOld = dfOld, dfNew = dfNew, key = "a")
}





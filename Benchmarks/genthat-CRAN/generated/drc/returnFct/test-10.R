library(drc)

function_to_run <- function() {
    pchisq <- stats::pchisq
    gofTest <- c(35.2355300914723, 28)
    drc:::returnFct(dfModel = c(NA, NA), loglik = c(NA, NA), dfDiff = c(NA, gofTest[2]), testStat = c(NA, gofTest[1]), pVal = c(NA, 
        1 - pchisq(gofTest[1], gofTest[2])), headName = "Goodness-of-fit test\n", colNames = c("", "", "Df", "Chisq value", 
        "p value"), rowNames = c("", "DRC model"))
}





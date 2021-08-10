library(classInt)

function_to_run <- function() {
    intervalClosure <- "left"
    i <- 6L
    dataPrecision <- NULL
    brks <- c(0, 16.2645844395701, 32.5291688791403, 48.7937533187104, 65.0583377582805, 81.3229221978506, 97.5875066374207, 
        113.852091076991, 130.116675516561, 146.381259956131)
    classInt:::roundEndpoint(x = brks[i + 1], intervalClosure = intervalClosure, dataPrecision = dataPrecision)
}





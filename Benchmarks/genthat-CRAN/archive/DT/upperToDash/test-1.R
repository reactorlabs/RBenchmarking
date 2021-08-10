library(DT)

function_to_run <- function() {
    styles <- structure(c("isNaN(parseFloat(value)) ? '' : value <= 3.4 ? \"red\" : \"white\"", "isNaN(parseFloat(value)) ? '' : value <= 3.4 ? \"yellow\" : \"gray\""), 
        names = c("color", "backgroundColor"))
    DT:::upperToDash(x = names(styles))
}





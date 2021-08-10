library(chron)

function_to_run <- function() {
    x <- structure(c(8092, 8092, 8048, 8093, 8066), origin = structure(c(1, 1, 1970), names = c("month", "day", "year")), 
        class = c("dates", "times"))
    chron:::xtfrm.dates(x = x)
}





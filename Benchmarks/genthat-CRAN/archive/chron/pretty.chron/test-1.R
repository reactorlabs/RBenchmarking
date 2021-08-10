library(chron)

function_to_run <- function() {
    x <- structure(c(0.55, 10.45), format = structure(c("m/d/y", "h:m:s"), names = c("dates", "times")), origin = structure(c(1, 
        1, 1970), names = c("month", "day", "year")), class = c("chron", "dates", "times"))
    n <- 5
    chron:::pretty.chron(x = x, n)
}





library(chron)

function_to_run <- function() {
    x <- structure(c(8092.96064814815, 8092.9374537037, 8048.04409722222, 8093.76461805556, 8066.70585648148), format = structure(c("m/d/y", 
        "h:m:s"), names = c("dates", "times")), origin = structure(c(1, 1, 1970), names = c("month", "day", "year")), class = c("chron", 
        "dates", "times"))
    chron:::print.chron(x = x)
}





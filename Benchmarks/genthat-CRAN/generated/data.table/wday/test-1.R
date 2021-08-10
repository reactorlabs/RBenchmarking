library(data.table)

function_to_run <- function() {
    idate <- structure(c(11323L, 11323L, 11323L, 11324L, 11324L, 11323L, 11323L, 11324L, 11324L, 11324L), class = c("IDate", 
        "Date"))
    data.table:::wday(x = idate)
}





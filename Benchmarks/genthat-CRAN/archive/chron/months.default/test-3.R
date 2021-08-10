library(chron)

function_to_run <- function() {
    Dt <- structure(18846, class = "Date")
    as.chron <- chron::as.chron
    chron:::months.default(x = as.chron(Dt))
}





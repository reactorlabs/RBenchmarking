

genthat_extracted_call <- function() {
    Dt <- structure(18846, class = "Date")
    as.chron <- chron::as.chron
    chron:::months.default(x = as.chron(Dt))
}





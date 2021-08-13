

genthat_extracted_call <- function() {
    splitgroups <- list(tab = structure(c(61L, 54L, 22L, 13L), .Dim = 4L, .Dimnames = list(c("5", "6", "4", "7")), class = "table"))
    MAXSIZE <- 125
    ffbase:::grouprunningcumsum(x = as.integer(splitgroups$tab), max = MAXSIZE)
}





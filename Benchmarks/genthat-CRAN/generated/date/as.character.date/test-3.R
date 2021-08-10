library(date)

function_to_run <- function() {
    object <- structure(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), class = "date")
    date:::as.character.date(x = range(object), maxsum = 7L, digits = 12L)
}





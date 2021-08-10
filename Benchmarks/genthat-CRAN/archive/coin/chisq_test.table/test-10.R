library(coin)

function_to_run <- function() {
    cochran <- structure(c(11, 27, 42, 53, 11, 7, 15, 16, 13, 1), .Dim = c(5L, 2L), .Dimnames = list(Change = c("Marked", 
        "Moderate", "Slight", "Stationary", "Worse"), Infiltration = c("0-7", "8-15")), class = "table")
    coin:::chisq_test.table(object = cochran)
}





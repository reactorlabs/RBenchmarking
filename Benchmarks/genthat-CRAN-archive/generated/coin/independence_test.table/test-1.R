library(coin)

function_to_run <- function() {
    js <- structure(c(1L, 2L, 0L, 0L, 3L, 3L, 1L, 2L, 11L, 17L, 8L, 4L, 2L, 3L, 5L, 2L, 1L, 0L, 0L, 0L, 1L, 3L, 0L, 1L, 2L, 
        5L, 7L, 9L, 1L, 1L, 3L, 6L), .Dim = c(4L, 4L, 2L), .Dimnames = list(Income = c("<5000", "5000-15000", "15000-25000", 
        ">25000"), Job.Satisfaction = c("VeryDiss", "LitSat", "ModSat", "VerySat"), Gender = c("Female", "Male")), class = "table")
    asymptotic <- coin::asymptotic
    coin:::independence_test.table(object = js, teststat = "quadratic", distribution = asymptotic())
}





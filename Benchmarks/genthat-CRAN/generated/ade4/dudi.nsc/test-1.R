library(ade4)

function_to_run <- function() {
    housetasks <- structure(list(Wife = c(156, 124, 77, 82, 53, 32, 33, 12, 10, 13, 8, 0, 0), Alternating = c(14, 20, 11, 
        36, 11, 24, 23, 46, 51, 13, 1, 3, 1), Husband = c(2, 5, 7, 15, 1, 4, 9, 23, 75, 21, 53, 160, 6), Jointly = c(4, 4, 
        13, 7, 57, 53, 55, 15, 3, 66, 77, 2, 153)), class = "data.frame", row.names = c("Laundry", "Main_meal", "Dinner", 
        "Breakfeast", "Tidying", "Dishes", "Shopping", "Official", "Driving", "Finances", "Insurance", "Repairs", "Holidays"))
    ade4:::dudi.nsc(df = housetasks, scannf = FALSE)
}





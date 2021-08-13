library(ca)

function_to_run <- function() {
    haireye <- structure(c(68, 119, 26, 7, 20, 84, 17, 94, 15, 54, 14, 10, 5, 29, 14, 16), .Dim = c(4L, 4L), .Dimnames = list(Hair = c("Black", 
        "Brown", "Red", "Blond"), Eye = c("Brown", "Blue", "Hazel", "Green")), class = "table")
    ca:::ca.table(obj = haireye)
}





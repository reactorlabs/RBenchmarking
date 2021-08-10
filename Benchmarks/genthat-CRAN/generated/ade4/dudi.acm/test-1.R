library(ade4)

function_to_run <- function() {
    ours <- structure(list(altit = structure(c(2L, 1L, 3L, 3L, 3L, 3L, 2L, 1L, 2L, 2L, 1L, 2L, 2L, 1L, 2L, 3L, 3L, 3L, 2L, 
        2L, 2L, 1L, 2L, 1L, 2L, 2L, 2L, 3L, 2L, 1L, 3L, 3L, 3L, 3L, 1L, 2L, 3L, 2L), .Label = c("1", "2", "3"), class = "factor"), 
        deniv = structure(c(3L, 2L, 3L, 3L, 3L, 3L, 2L, 1L, 3L, 2L, 1L, 2L, 3L, 3L, 2L, 3L, 1L, 2L, 1L, 1L, 1L, 1L, 2L, 1L, 
            3L, 2L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 1L, 2L, 2L, 1L, 3L), .Label = c("1", "2", "3"), class = "factor"), cloiso = structure(c(3L, 
            1L, 3L, 3L, 1L, 3L, 3L, 2L, 1L, 3L, 1L, 3L, 3L, 2L, 1L, 3L, 3L, 3L, 1L, 1L, 1L, 1L, 2L, 3L, 2L, 1L, 3L, 1L, 1L, 
            3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L), .Label = c("1", "2", "3"), class = "factor"), domain = structure(c(2L, 2L, 
            2L, 1L, 2L, 1L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 2L, 3L, 3L, 3L, 3L, 3L, 2L, 2L, 2L, 2L, 3L, 3L, 1L, 1L, 3L, 2L, 3L, 
            3L, 3L, 3L, 1L, 3L, 3L, 3L, 3L), .Label = c("1", "2", "3"), class = "factor"), boise = structure(c(2L, 1L, 2L, 
            3L, 2L, 3L, 2L, 1L, 3L, 3L, 1L, 3L, 3L, 1L, 2L, 3L, 3L, 3L, 3L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 1L, 3L, 2L, 1L, 2L, 
            2L, 2L, 3L, 1L, 2L, 3L, 2L), .Label = c("1", "2", "3"), class = "factor"), hetra = structure(c(3L, 1L, 2L, 3L, 
            3L, 3L, 1L, 1L, 2L, 3L, 1L, 3L, 3L, 1L, 2L, 3L, 3L, 3L, 3L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 3L, 1L, 1L, 3L, 1L, 
            1L, 3L, 1L, 1L, 1L, 1L), .Label = c("1", "2", "3"), class = "factor"), favor = structure(c(3L, 2L, 3L, 3L, 2L, 
            3L, 2L, 3L, 3L, 2L, 2L, 3L, 3L, 1L, 2L, 3L, 3L, 2L, 3L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 2L, 2L, 2L, 1L, 
            1L, 1L, 1L, 1L, 2L), .Label = c("1", "2", "3"), class = "factor"), inexp = structure(c(2L, 2L, 3L, 2L, 3L, 3L, 
            3L, 2L, 3L, 3L, 2L, 2L, 2L, 3L, 2L, 3L, 1L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
            1L, 1L, 1L, 2L), .Label = c("1", "2", "3"), class = "factor"), citat = structure(c(1L, 2L, 2L, 3L, 1L, 3L, 1L, 
            2L, 4L, 1L, 1L, 3L, 3L, 2L, 1L, 4L, 4L, 4L, 4L, 2L, 1L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
            1L, 1L, 1L), .Label = c("1", "2", "3", "4"), class = "factor"), depart = structure(c(5L, 5L, 5L, 5L, 7L, 7L, 
            7L, 7L, 7L, 7L, 7L, 6L, 6L, 6L, 6L, 6L, 3L, 3L, 3L, 3L, 3L, 4L, 4L, 4L, 4L, 4L, 4L, 4L, 4L, 1L, 1L, 1L, 1L, 1L, 
            2L, 2L, 2L, 2L), .Label = c("AHP", "AM", "D", "HP", "HS", "I", "S"), class = "factor")), row.names = c("1", "2", 
        "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", 
        "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"), class = "data.frame")
    ade4:::dudi.acm(df = ours, scannf = FALSE)
}





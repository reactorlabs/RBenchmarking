library(DT)

function_to_run <- function() {
    i <- TRUE
    data <- structure(list(` ` = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", 
        "17", "18", "19"), temperature = c(0, 20, 40, 60, 80, 100, 120, 140, 160, 180, 200, 220, 240, 260, 280, 300, 320, 
        340, 360), pressure = c(2e-04, 0.0012, 0.006, 0.03, 0.09, 0.27, 0.75, 1.85, 4.2, 8.8, 17.3, 32.1, 57, 96, 157, 247, 
        376, 558, 806)), class = "data.frame", row.names = c(NA, -19L))
    colnames <- c(" ", "temperature", "pressure")
    DT:::convertIdx(i = i, names = colnames, n = ncol(data))
}





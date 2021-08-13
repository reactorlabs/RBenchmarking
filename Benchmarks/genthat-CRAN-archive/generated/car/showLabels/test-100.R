

genthat_extracted_call <- function() {
    y <- c(62L, 72L, 75L, 55L, 64L, 21L, 64L, 80L, 67L, 72L, 42L, 76L, 76L, 41L, 48L, 76L, 53L, 60L, 42L, 78L, 29L, 48L, 
        55L, 29L, 21L, 47L, 81L, 36L, 22L, 44L, 15L, 7L, 42L, 9L, 21L, 21L, 16L, 16L, 9L, 14L, 12L, 17L, 7L, 34L, 8L)
    x <- c(82L, 83L, 90L, 76L, 90L, 87L, 93L, 90L, 52L, 88L, 57L, 89L, 97L, 59L, 73L, 38L, 76L, 81L, 45L, 92L, 39L, 34L, 
        41L, 16L, 33L, 53L, 67L, 57L, 26L, 29L, 10L, 15L, 19L, 10L, 13L, 24L, 20L, 7L, 3L, 16L, 6L, 11L, 8L, 41L, 10L)
    subs <- c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, 
        FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 
        FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE)
    labs <- c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", 
        "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", 
        "40", "41", "42", "43", "44", "45")
    id.n <- 0
    id.method <- "mahal"
    id.location <- NULL
    id.cex <- NULL
    i <- 3L
    col <- c("blue", "magenta", "cyan", "orange", "gray", "green3", "red")
    car:::showLabels(x = x[subs], y = y[subs], labels = labs[subs], method = id.method, n = id.n, cex = id.cex, col = col[i], 
        location = id.location, all = list(labels = labs, subs = subs))
}





library(FactoMineR)

function_to_run <- function() {
    children <- structure(list(unqualified = c(51L, 53L, 71L, 1L, 7L, 7L, 21L, 12L, 10L, 4L, 8L, 25L, 18L, 35L, 2L, 2L, 1L, 
        3L), cep = c(64L, 90L, 111L, 7L, 11L, 13L, 37L, 35L, 7L, 7L, 22L, 45L, 27L, 61L, 4L, 8L, 5L, 3L), bepc = c(32L, 78L, 
        50L, 5L, 4L, 12L, 14L, 19L, 7L, 7L, 7L, 38L, 20L, 29L, 3L, 2L, 4L, 1L), high_school_diploma = c(29L, 75L, 40L, 5L, 
        3L, 11L, 26L, 6L, 3L, 6L, 10L, 38L, 19L, 14L, 1L, 5L, 6L, 3L), university = c(17L, 22L, 11L, 4L, 2L, 11L, 9L, 7L, 
        1L, 2L, 5L, 13L, 9L, 12L, 4L, 2L, 3L, 4L), thirty = c(59L, 115L, 79L, 9L, 2L, 18L, 14L, 21L, 8L, 7L, 10L, 48L, 13L, 
        30L, NA, NA, NA, NA), fifty = c(66L, 117L, 88L, 8L, 17L, 19L, 34L, 30L, 12L, 6L, 27L, 59L, 29L, 63L, NA, NA, NA, 
        NA), more_fifty = c(70L, 86L, 177L, 5L, 18L, 17L, 61L, 28L, 8L, 13L, 17L, 52L, 53L, 58L, NA, NA, NA, NA)), class = "data.frame", 
        row.names = c("money", "future", "unemployment", "circumstances", "hard", "economic", "egoism", "employment", "finances", 
            "war", "housing", "fear", "health", "work", "comfort", "disagreement", "world", "to_live"))
    FactoMineR:::descfreq(donnee = children[1:14, 1:5])
}





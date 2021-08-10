library(DRaWR)

function_to_run <- function() {
    newedges <- structure(list(src = structure(c(3L, 7L, 5L, 6L, 1L, 9L, 2L, 2L, 1L, 4L, 13L, 13L, 13L, 2L, 4L, 7L, 14L, 
        14L, 14L, 1L, 5L, 9L), .Label = c("G1", "G10", "G2", "G3", "G4", "G5", "G6", "G7", "G8", "G9", "P1", "P2", "P3", 
        "P4", "P5"), class = "factor"), target = structure(c(1L, 1L, 2L, 2L, 3L, 4L, 5L, 6L, 7L, 9L, 2L, 4L, 7L, 13L, 13L, 
        13L, 1L, 5L, 9L, 14L, 14L, 14L), .Label = c("G1", "G10", "G2", "G3", "G4", "G5", "G6", "G7", "G8", "G9", "P1", "P2", 
        "P3", "P4", "P5"), class = "factor"), weight = c(0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.166666666666667, 
        0.166666666666667, 0.166666666666667, 0.166666666666667, 0.166666666666667, 0.166666666666667, 0.166666666666667, 
        0.166666666666667, 0.166666666666667, 0.166666666666667, 0.166666666666667, 0.166666666666667), type = structure(c(3L, 
        3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("T1", "T2", "T3"), 
        class = "factor")), row.names = c(33L, 34L, 35L, 36L, 37L, 38L, 39L, 40L, 41L, 42L, 3L, 5L, 8L, 18L, 19L, 20L, 21L, 
        23L, 26L, 27L, 28L, 29L), class = "data.frame")
    DRaWR:::threeCol2MaxMat(a = as.character(newedges[, "src"]), b = as.character(newedges[, "target"]), v = as.numeric(newedges[, 
        "weight"]))
}





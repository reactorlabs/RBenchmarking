library(circlize)

function_to_run <- function() {
    mat <- structure(c(4L, 7L, 9L, 14L, 1L, 10L, 13L, 6L, 3L, 17L, 8L, 16L, 5L, 12L, 11L, 2L, 15L, 18L), .Dim = c(3L, 6L), 
        .Dimnames = list(c("S1", "S2", "S3"), c("E1", "E2", "E3", "E4", "E5", "E6")))
    circlize:::chordDiagram(x = mat)
}





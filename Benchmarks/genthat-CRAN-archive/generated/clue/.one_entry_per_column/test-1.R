

genthat_extracted_call <- function() {
    ids <- c(2L, 3L, 1L, 1L, 1L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 3L, 1L, 2L, 1L, 3L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 3L, 
        2L, 1L, 1L)
    dissimilarities <- structure(c(950, 950, 8, 18, 8, 8, 950, 886, 286, 24, 8, 950, 8, 950, 0, 950, 8, 950, 950, 658, 8, 
        14, 8, 618, 24, 24, 658, 950, 8, 8, 0, 0, 954, 940, 954, 954, 0, 322, 910, 942, 954, 0, 954, 0, 950, 0, 954, 0, 0, 
        610, 954, 944, 954, 650, 942, 942, 610, 0, 954, 954, 0, 0, 954, 940, 954, 954, 0, 322, 910, 942, 954, 0, 954, 0, 
        950, 0, 954, 0, 0, 610, 954, 944, 954, 650, 942, 942, 610, 0, 954, 954), description = "minimal Euclidean membership distance", 
        class = c("cl_cross_dissimilarity", "cl_cross_proximity"), .Dim = c(30L, 3L), .Dimnames = list(NULL, NULL))
    clue:::.one_entry_per_column(x = dissimilarities, j = ids)
}





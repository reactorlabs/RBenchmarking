library(clue)

function_to_run <- function() {
    m <- 2
    dissimilarities <- structure(c(954, 954, 0, 26, 0, 0, 954, 886, 282, 32, 0, 954, 0, 954, 8, 954, 0, 954, 954, 666, 0, 
        22, 0, 626, 32, 32, 666, 954, 0, 0, 954, 954, 0, 26, 0, 0, 954, 886, 282, 32, 0, 954, 0, 954, 8, 954, 0, 954, 954, 
        666, 0, 22, 0, 626, 32, 32, 666, 954, 0, 0, 942, 942, 32, 14, 32, 32, 942, 890, 308, 0, 32, 942, 32, 942, 24, 942, 
        32, 942, 942, 646, 32, 14, 32, 606, 0, 0, 646, 942, 32, 32), description = "minimal Euclidean membership distance", 
        class = c("cl_cross_dissimilarity", "cl_cross_proximity"), .Dim = c(30L, 3L), .Dimnames = list(NULL, NULL))
    clue:::.memberships_from_cross_dissimilarities(d = dissimilarities, power = m)
}





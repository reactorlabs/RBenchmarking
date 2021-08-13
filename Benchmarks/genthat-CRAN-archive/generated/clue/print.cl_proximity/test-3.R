library(clue)

function_to_run <- function() {
    x <- structure(c(3.13513987247778, 2.09108123706374, 1.50179364760942), Size = 3L, Labels = c("MF1", "MF2", "JMF"), description = "Euclidean comembership distance", 
        class = c("cl_dissimilarity", "cl_proximity", "dist"))
    clue:::print.cl_proximity(x = x)
}





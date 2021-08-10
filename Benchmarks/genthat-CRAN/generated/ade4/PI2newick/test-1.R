library(ade4)

function_to_run <- function() {
    x <- structure(list(V1 = c(2.0266, 0.5832, 0.246, 1.2963, 0.246, 0.1565), V2 = c(-99, -99, 10.1, -99, 20.2, 28.2), V3 = c(-99, 
        14.1, 11.2, -99, 21.3, 27.5), V4 = c(1, 2, -1, 4, -1, -1), V5 = c(3, -1, -1, 5, -1, -1), V6 = c(0, 0, 0, 0, 0, 0)), 
        class = "data.frame", row.names = c(NA, -6L))
    ade4:::PI2newick(x = x)
}





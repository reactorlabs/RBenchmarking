

genthat_extracted_call <- function() {
    x <- 16
    multiple <- FALSE
    loops <- FALSE
    hyper <- FALSE
    directed <- FALSE
    bipartite <- FALSE
    ergm:::as.network.numeric(x = x, directed = directed, hyper = hyper, loops = loops, multiple = multiple, bipartite = bipartite, 
        density = 0.1)
}





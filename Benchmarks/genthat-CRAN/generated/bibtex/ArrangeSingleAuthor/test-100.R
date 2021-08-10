library(bibtex)

function_to_run <- function() {
    X <- c("Green, P. J.", "Silverman, B. W.")
    i <- 2L
    bibtex:::ArrangeSingleAuthor(y = X[[i]])
}





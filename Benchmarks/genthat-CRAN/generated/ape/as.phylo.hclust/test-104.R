library(ape)

function_to_run <- function() {
    Y <- structure(c(0.1, 0.12, 0.2, 0.12, 0.14, 0.18), Size = 4L, Labels = c("B", "C", "D", "A"), Diag = FALSE, Upper = FALSE, 
        class = "dist")
    hclust <- stats::hclust
    ape:::as.phylo.hclust(x = hclust(Y, "single"))
}





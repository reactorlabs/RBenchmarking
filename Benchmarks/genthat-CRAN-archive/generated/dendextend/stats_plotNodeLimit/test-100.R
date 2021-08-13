

genthat_extracted_call <- function() {
    x2 <- 11
    x1 <- 10
    subtree <- structure(8L, members = 1L, height = 0, label = "8", leaf = TRUE, class = "dendrogram")
    center <- FALSE
    dendextend:::stats_plotNodeLimit(x1 = x1, x2 = x2, subtree = subtree, center = center)
}





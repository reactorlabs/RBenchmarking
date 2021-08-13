

genthat_extracted_call <- function() {
    xl <- c(-0.05, 0.05, 0.15, 0.25, 0.35, 0.45, 0.55, 0.65, 0.75, 0.85, 0.95)
    n_colors <- 11L
    dendextend:::rescale(x = xl, to = c(1 - 0.5, n_colors - 0.5))
}





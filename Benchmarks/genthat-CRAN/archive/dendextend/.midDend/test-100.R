library(dendextend)

function_to_run <- function() {
    r <- structure(list(structure(list(structure(7L, label = "Duster 360", members = 1L, height = 0, leaf = TRUE, edgePar = list(col = "#CC476B", 
        lwd = 1)), structure(24L, label = "Camaro Z28", members = 1L, height = 0, leaf = TRUE, edgePar = list(col = "#CC476B", 
        lwd = 1))), members = 2L, midpoint = 0.5, height = 10.0761202851097, edgePar = list(col = "#CC476B", lwd = 1.21621621621622)), 
        structure(29L, members = 1L, height = 0, label = "Ford Pantera L", leaf = TRUE, edgePar = list(col = "#CC476B", lwd = 1))), 
        members = 3L, midpoint = 0.75, height = 21.2655989805131, edgePar = list(col = "#CC476B", lwd = 1.45045045045045), 
        class = "dendrogram")
    j <- 2L
    dendextend:::.midDend(x = r[[j]])
}





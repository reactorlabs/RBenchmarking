library(dendextend)

function_to_run <- function() {
    tmp_values <- c("Inf", "Inf", "Inf", "Inf", "Inf", "Inf", "Inf", "Inf", "#0082CE", "#0082CE", "#0082CE")
    dend <- structure(list(structure(list(structure(5L, label = 5L, members = 1L, height = 0, leaf = TRUE, edgePar = list(col = "#CC476B")), 
        structure(6L, label = 6L, members = 1L, height = 0, leaf = TRUE, edgePar = list(col = "#CC476B"))), members = 2L, 
        midpoint = 0.5, height = 1, edgePar = list(col = "#CC476B")), structure(list(structure(list(structure(1L, label = 1L, 
        members = 1L, height = 0, leaf = TRUE, edgePar = list(col = "#228B00")), structure(2L, label = 2L, members = 1L, 
        height = 0, leaf = TRUE, edgePar = list(col = "#228B00"))), members = 2L, midpoint = 0.5, height = 1, edgePar = list(col = "#228B00")), 
        structure(list(structure(3L, label = 3L, members = 1L, height = 0, leaf = TRUE), structure(4L, label = 4L, members = 1L, 
            height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1)), members = 4L, midpoint = 1.5, height = 3)), 
        members = 6L, midpoint = 2, height = 5, class = "dendrogram")
    attr <- "col"
    dendextend:::assign_values_to_branches_edgePar(dend = dend, value = tmp_values, edgePar = attr)
}





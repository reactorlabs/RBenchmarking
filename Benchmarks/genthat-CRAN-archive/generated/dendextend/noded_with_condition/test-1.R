library(dendextend)

function_to_run <- function() {
    has_x_labels <- genthat::with_env(function(sub_dend, the_labels) all(labels(sub_dend) %in% the_labels), env = list2env(list(), 
        parent = baseenv()))
    tmp_labels <- 3:4
    dend <- structure(list(structure(list(structure(5L, label = 5L, members = 1L, height = 0, leaf = TRUE), structure(6L, 
        label = 6L, members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1), structure(list(structure(list(structure(1L, 
        label = 1L, members = 1L, height = 0, leaf = TRUE), structure(2L, label = 2L, members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 1), structure(list(structure(3L, label = 3L, members = 1L, height = 0, leaf = TRUE), 
        structure(4L, label = 4L, members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 1)), members = 4L, 
        midpoint = 1.5, height = 3)), members = 6L, midpoint = 2, height = 5, class = "dendrogram")
    dendextend:::noded_with_condition(dend = dend, condition = has_x_labels, the_labels = tmp_labels)
}





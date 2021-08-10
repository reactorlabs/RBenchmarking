library(dendextend)

function_to_run <- function() {
    dend2 <- structure(list(structure(list(structure(7L, members = 1L, height = 0, label = "123", leaf = TRUE), structure(list(structure(4L, 
        label = "111", members = 1L, height = 0, leaf = TRUE), structure(8L, label = "145", members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 0.812403840463596)), members = 3L, midpoint = 0.75, height = 2.03960780543711, 
        edgePar = list(lty = 3)), structure(list(structure(list(structure(9L, members = 1L, height = 0, label = "25", leaf = TRUE), 
        structure(list(structure(1L, label = "29", members = 1L, height = 0, leaf = TRUE), structure(3L, label = "17", members = 1L, 
            height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, height = 0.58309518948453)), members = 3L, midpoint = 0.75, 
        height = 1.00498756211209), structure(list(structure(5L, members = 1L, height = 0, label = "80", leaf = TRUE), structure(list(structure(2L, 
        members = 1L, height = 0, label = "85", leaf = TRUE), structure(list(structure(6L, label = "88", members = 1L, height = 0, 
        leaf = TRUE), structure(10L, label = "74", members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, 
        height = 0.62449979983984)), members = 3L, midpoint = 0.75, height = 1.16189500386222)), members = 4L, midpoint = 0.875, 
        height = 1.29614813968157, edgePar = list(lty = 3))), members = 7L, midpoint = 2.3125, height = 3.72827037646145, 
        edgePar = list(lty = 3))), members = 10L, midpoint = 3.03125, height = 6.18223260642949, class = "dendrogram")
    dend <- structure(list(structure(list(structure(9L, members = 1L, height = 0, label = "25", leaf = TRUE), structure(list(structure(1L, 
        label = "29", members = 1L, height = 0, leaf = TRUE), structure(3L, label = "17", members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 0.58309518948453)), members = 3L, midpoint = 0.75, height = 0.640312423743285), 
        structure(list(structure(7L, members = 1L, height = 0, label = "123", leaf = TRUE), structure(list(structure(5L, 
            members = 1L, height = 0, label = "80", leaf = TRUE), structure(list(structure(list(structure(2L, members = 1L, 
            height = 0, label = "85", leaf = TRUE), structure(list(structure(6L, label = "88", members = 1L, height = 0, 
            leaf = TRUE), structure(10L, label = "74", members = 1L, height = 0, leaf = TRUE)), members = 2L, midpoint = 0.5, 
            height = 0.62449979983984)), members = 3L, midpoint = 0.75, height = 0.812403840463595), structure(list(structure(4L, 
            label = "111", members = 1L, height = 0, leaf = TRUE), structure(8L, label = "145", members = 1L, height = 0, 
            leaf = TRUE)), members = 2L, midpoint = 0.5, height = 0.812403840463596)), members = 5L, midpoint = 2.125, height = 1.05830052442584)), 
            members = 6L, midpoint = 1.5625, height = 1.16189500386223)), members = 7L, midpoint = 1.28125, height = 1.58113883008419)), 
        members = 10L, midpoint = 2.515625, height = 2.15638586528478, class = "dendrogram")
    dendextend:::distinct_edges(dend = dend, dend2 = dend2)
}





library(dendextend)

function_to_run <- function() {
    the_attrib <- "edgePar"
    dend <- structure(list(structure(list(structure(7L, members = 1L, height = 0, label = "123", leaf = TRUE), structure(list(structure(4L, 
        label = "111", members = 1L, height = 0, leaf = TRUE), structure(8L, label = "145", members = 1L, height = 0, leaf = TRUE)), 
        members = 2L, midpoint = 0.5, height = 0.812403840463596)), members = 3L, midpoint = 0.75, height = 2.03960780543711), 
        structure(list(structure(list(structure(9L, members = 1L, height = 0, label = "25", leaf = TRUE), structure(list(structure(1L, 
            label = "29", members = 1L, height = 0, leaf = TRUE), structure(3L, label = "17", members = 1L, height = 0, leaf = TRUE)), 
            members = 2L, midpoint = 0.5, height = 0.58309518948453)), members = 3L, midpoint = 0.75, height = 1.00498756211209), 
            structure(list(structure(5L, members = 1L, height = 0, label = "80", leaf = TRUE), structure(list(structure(2L, 
                members = 1L, height = 0, label = "85", leaf = TRUE), structure(list(structure(6L, label = "88", members = 1L, 
                height = 0, leaf = TRUE), structure(10L, label = "74", members = 1L, height = 0, leaf = TRUE)), members = 2L, 
                midpoint = 0.5, height = 0.62449979983984)), members = 3L, midpoint = 0.75, height = 1.16189500386222)), 
                members = 4L, midpoint = 0.875, height = 1.29614813968157)), members = 7L, midpoint = 2.3125, height = 3.72827037646145)), 
        members = 10L, midpoint = 3.03125, height = 6.18223260642949, class = "dendrogram")
    component <- "lty"
    dendextend:::has_component_in_attribute(dend = dend, component = component, the_attrib = the_attrib)
}







genthat_extracted_call <- function() {
    rel <- NULL
    nodes <- 1:5
    DiagrammeR:::create_edge_df(from = nodes, to = c(nodes[2:length(nodes)], nodes[1]), rel = rel)
}





library(DiagrammeR)

function_to_run <- function() {
    to <- 1
    node <- 5
    from <- 1
    create_edge_df <- DiagrammeR::create_edge_df
    DiagrammeR:::combine_edfs(create_edge_df(from = rep(node, length(to)), to = to), create_edge_df(from = from, to = rep(node, 
        length(from))))
}





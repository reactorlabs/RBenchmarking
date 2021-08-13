

genthat_extracted_call <- function() {
    paths <- list(c(1, 2), c(1, 3))
    i <- 1L
    graph <- structure(list(graph_info = structure(list(graph_id = "wkAYJjR5", graph_name = "graph_wkAYJjR5", graph_time = structure(1628396827.92827, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = c(1, 2, 3, 4, 5, 6, 7, 8), type = c(NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_), label = c(NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_)), row.names = c(NA, 
        -8L), class = "data.frame"), edges_df = structure(list(id = 1:8, from = c(1L, 1L, 3L, 3L, 4L, 2L, 7L, 4L), to = c(2L, 
        3L, 4L, 5L, 6L, 7L, 5L, 8L), rel = c(NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_)), row.names = c(NA, -8L), class = "data.frame"), global_attrs = structure(list(attr = c("layout", 
        "outputorder", "bgcolor", "fontname", "fontsize", "shape", "fixedsize", "width", "style", "fillcolor", "color", "fontcolor", 
        "fontname", "fontsize", "len", "color", "arrowsize"), value = c("neato", "edgesfirst", "white", "Helvetica", "10", 
        "circle", "true", "0.5", "filled", "aliceblue", "gray70", "gray50", "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", 
        "graph", "graph", "node", "node", "node", "node", "node", "node", "node", "node", "node", "edge", "edge", "edge", 
        "edge", "edge")), row.names = c(NA, -17L), class = "data.frame"), directed = TRUE, last_node = 8, last_edge = 8L, 
        node_selection = structure(list(node = integer(0)), row.names = integer(0), class = "data.frame"), edge_selection = structure(list(edge = integer(0), 
            from = integer(0), to = integer(0)), row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = integer(0), 
            action_name = character(0), expression = character(0)), row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = 1:10, 
            function_used = c("create_graph", "add_n_nodes", "add_edge", "add_edge", "add_edge", "add_edge", "add_edge", 
                "add_edge", "add_edge", "add_edge"), time_modified = structure(c(1628396827.92827, 1628396828.08526, 1628396828.10737, 
                1628396828.18907, 1628396828.19883, 1628396828.20843, 1628396828.22072, 1628396828.23013, 1628396828.23966, 
                1628396828.24912), class = c("POSIXct", "POSIXt")), duration = c(0.15125846862793, 0.0166676044464111, 0.0180273056030273, 
                0.00448441505432129, 0.00430679321289062, 0.00424051284790039, 0.00415921211242676, 0.00427818298339844, 
                0.00423860549926758, 0.00423264503479004), nodes = c(0L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L, 8L), edges = c(0L, 
                0L, 1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L), d_n = c(0L, 8L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), d_e = c(0L, 0L, 1L, 
                1L, 1L, 1L, 1L, 1L, 1L, 1L)), row.names = c(NA, -10L), class = "data.frame")), class = "dgr_graph")
    DiagrammeR:::get_successors(graph = graph, node = paths[[i]][length(paths[[i]])])
}





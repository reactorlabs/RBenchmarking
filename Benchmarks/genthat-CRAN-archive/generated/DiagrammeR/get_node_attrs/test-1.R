

genthat_extracted_call <- function() {
    node <- 1
    graph <- structure(list(graph_info = structure(list(graph_id = "wkAYJjR5", graph_name = "graph_wkAYJjR5", graph_time = structure(1628396354.243, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = 1:3, type = c("a", "b", "c"), label = c("d", "g", "r")), 
        row.names = c(NA, -3L), class = "data.frame"), edges_df = structure(list(id = 1:2, from = 1:2, to = 2:3, rel = c(NA_character_, 
        NA_character_)), row.names = c(NA, -2L), class = "data.frame"), global_attrs = structure(list(attr = c("layout", 
        "outputorder", "bgcolor", "fontname", "fontsize", "shape", "fixedsize", "width", "style", "fillcolor", "color", "fontcolor", 
        "fontname", "fontsize", "len", "color", "arrowsize"), value = c("neato", "edgesfirst", "white", "Helvetica", "10", 
        "circle", "true", "0.5", "filled", "aliceblue", "gray70", "gray50", "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", 
        "graph", "graph", "node", "node", "node", "node", "node", "node", "node", "node", "node", "edge", "edge", "edge", 
        "edge", "edge")), row.names = c(NA, -17L), class = "data.frame"), directed = TRUE, last_node = 3, last_edge = 2, 
        node_selection = structure(list(node = integer(0)), row.names = integer(0), class = "data.frame"), edge_selection = structure(list(edge = integer(0), 
            from = integer(0), to = integer(0)), row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = integer(0), 
            action_name = character(0), expression = character(0)), row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = c(1L, 
            2L, 2L), function_used = c("create_graph", "add_path", ""), time_modified = structure(c(1628396354.243, 1628396354.39191, 
            1628396354.39191), class = c("POSIXct", "POSIXt")), duration = c(0.14328408241272, 0.106203556060791, 0.106203556060791), 
            nodes = c(0L, 3L, 3L), edges = c(0L, 2L, 2L), d_n = c(0L, 3L, 3L), d_e = c(0L, 2L, 2L)), row.names = c(NA, -3L), 
            class = "data.frame")), class = "dgr_graph")
    DiagrammeR:::get_node_attrs(graph = graph, node_attr = type, nodes = node)
}





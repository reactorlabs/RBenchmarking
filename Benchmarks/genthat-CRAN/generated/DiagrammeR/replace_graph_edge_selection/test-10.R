library(DiagrammeR)

function_to_run <- function() {
    valid_edges <- structure(list(id = c(1L, 3L, 4L), from = c(1L, 2L, 2L), to = c(2L, 4L, 5L), rel = c(NA, "B", "C"), values = c(6, 
        4.72, 6.02)), row.names = c(NA, -3L), class = "data.frame")
    graph <- structure(list(graph_info = structure(list(graph_id = "jNUsya78", graph_name = "graph_jNUsya78", graph_time = structure(1628397130.76014, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = c(1, 2, 3, 4, 5), type = c("a", "a", "b", "b", "b"), label = c("asd", 
        "iekd", "idj", "edl", "ohd")), row.names = c(NA, -5L), class = "data.frame"), edges_df = structure(list(id = 1:5, 
        from = c(1L, 1L, 2L, 2L, 3L), to = c(2L, 3L, 4L, 5L, 5L), rel = c(NA, "A", "B", "C", "D"), values = c(6, 6.11, 4.72, 
            6.02, 5.05)), row.names = c(NA, -5L), class = "data.frame"), global_attrs = structure(list(attr = c("layout", 
        "outputorder", "bgcolor", "fontname", "fontsize", "shape", "fixedsize", "width", "style", "fillcolor", "color", "fontcolor", 
        "fontname", "fontsize", "len", "color", "arrowsize"), value = c("neato", "edgesfirst", "white", "Helvetica", "10", 
        "circle", "true", "0.5", "filled", "aliceblue", "gray70", "gray50", "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", 
        "graph", "graph", "node", "node", "node", "node", "node", "node", "node", "node", "node", "edge", "edge", "edge", 
        "edge", "edge")), row.names = c(NA, -17L), class = "data.frame"), directed = TRUE, last_node = 5, last_edge = 5, 
        node_selection = structure(list(node = 2L), row.names = c(NA, -1L), class = "data.frame"), edge_selection = structure(list(edge = integer(0), 
            from = integer(0), to = integer(0)), row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = integer(0), 
            action_name = character(0), expression = character(0)), row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = c(1L, 
            2L, 3L, 4L, 4L, 6L, 7L), function_used = c("create_graph", "add_n_nodes", "add_n_nodes", "add_edges_w_string", 
            "", "join_edge_attrs", "select_nodes_by_id"), time_modified = structure(c(1628397130.76014, 1628397130.91663, 
            1628397130.97183, 1628397131.02515, 1628397131.02515, 1628397131.10077, 1628397131.57005), class = c("POSIXct", 
            "POSIXt")), duration = c(0.150767803192139, 0.016596794128418, 0.0447688102722168, 0.0662453174591064, 0.0662453174591064, 
            0.0366654396057129, 0.0130319595336914), nodes = c(0L, 2L, 5L, 5L, 5L, 5L, 5L), edges = c(0L, 0L, 0L, 5L, 5L, 
            5L, 5L), d_n = c(0L, 2L, 3L, 0L, 0L, 0L, 0L), d_e = c(0L, 0L, 0L, 5L, 5L, 0L, 0L)), row.names = c(NA, -7L), class = "data.frame")), 
        class = "dgr_graph")
    DiagrammeR:::replace_graph_edge_selection(graph = graph, edge_id = valid_edges$id, from_node = valid_edges$from, to_node = valid_edges$to)
}





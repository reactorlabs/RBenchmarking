library(DiagrammeR)

function_to_run <- function() {
    starting_nodes <- 5L
    . <- structure(list(graph_info = structure(list(graph_id = "jNUsya78", graph_name = "graph_jNUsya78", graph_time = structure(1628397124.68481, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = c(1, 2, 3, 4, 5), type = c("a", "a", "b", "b", "b"), label = c("asd", 
        "iekd", "idj", "edl", "ohd"), values = c(8.58, 7.22, 5.95, 6.71, 7.48)), row.names = c(NA, -5L), class = "data.frame"), 
        edges_df = structure(list(id = 1:5, from = c(1L, 1L, 2L, 2L, 3L), to = c(2L, 3L, 4L, 5L, 5L), rel = c(NA, "A", "B", 
            "C", "D"), values = c(6, 6.11, 4.72, 6.02, 5.05)), row.names = c(NA, -5L), class = "data.frame"), global_attrs = structure(list(attr = c("layout", 
            "outputorder", "bgcolor", "fontname", "fontsize", "shape", "fixedsize", "width", "style", "fillcolor", "color", 
            "fontcolor", "fontname", "fontsize", "len", "color", "arrowsize"), value = c("neato", "edgesfirst", "white", 
            "Helvetica", "10", "circle", "true", "0.5", "filled", "aliceblue", "gray70", "gray50", "Helvetica", "8", "1.5", 
            "gray80", "0.5"), attr_type = c("graph", "graph", "graph", "node", "node", "node", "node", "node", "node", "node", 
            "node", "node", "edge", "edge", "edge", "edge", "edge")), row.names = c(NA, -17L), class = "data.frame"), directed = TRUE, 
        last_node = 5, last_edge = 5, node_selection = structure(list(node = 5L), row.names = c(NA, -1L), class = "data.frame"), 
        edge_selection = structure(list(edge = integer(0), from = integer(0), to = integer(0)), row.names = integer(0), class = "data.frame"), 
        cache = list(), graph_actions = structure(list(action_index = integer(0), action_name = character(0), expression = character(0)), 
            row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = c(1L, 2L, 3L, 4L, 4L, 
            6L, 7L, 8L), function_used = c("create_graph", "add_n_nodes", "add_n_nodes", "add_edges_w_string", "", "join_edge_attrs", 
            "join_node_attrs", "select_nodes_by_id"), time_modified = structure(c(1628397124.68481, 1628397124.84162, 1628397124.89686, 
            1628397124.95029, 1628397124.95029, 1628397125.0229, 1628397125.06814, 1628397125.4107), class = c("POSIXct", 
            "POSIXt")), duration = c(0.151071310043335, 0.0165960788726807, 0.0447592735290527, 0.0660319328308105, 0.0660319328308105, 
            0.0397810935974121, 0.0101373195648193, 0.0141546726226807), nodes = c(0L, 2L, 5L, 5L, 5L, 5L, 5L, 5L), edges = c(0L, 
            0L, 0L, 5L, 5L, 5L, 5L, 5L), d_n = c(0L, 2L, 3L, 0L, 0L, 0L, 0L, 0L), d_e = c(0L, 0L, 0L, 5L, 5L, 0L, 0L, 0L)), 
            row.names = c(NA, -8L), class = "data.frame")), class = "dgr_graph")
    DiagrammeR:::get_nbrs(graph = ., nodes = starting_nodes)
}





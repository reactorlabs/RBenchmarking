library(DiagrammeR)

function_to_run <- function() {
    . <- structure(list(graph_info = structure(list(graph_id = "jNUsya78", graph_name = "graph_jNUsya78", graph_time = structure(1628397174.26766, 
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
        last_node = 5, last_edge = 5, node_selection = structure(list(node = integer(0)), row.names = integer(0), class = "data.frame"), 
        edge_selection = structure(list(edge = 2L, from = 1L, to = 3L), row.names = c(NA, -1L), class = "data.frame"), cache = list(), 
        graph_actions = structure(list(action_index = integer(0), action_name = character(0), expression = character(0)), 
            row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = c(1L, 2L, 3L, 4L, 4L, 
            6L, 7L, 8L), function_used = c("create_graph", "add_n_nodes", "add_n_nodes", "add_edges_w_string", "", "join_edge_attrs", 
            "join_node_attrs", "select_edges"), time_modified = structure(c(1628397174.26766, 1628397174.42763, 1628397174.47864, 
            1628397174.53265, 1628397174.53265, 1628397174.6086, 1628397174.65108, 1628397175.01151), class = c("POSIXct", 
            "POSIXt")), duration = c(0.154354572296143, 0.0168149471282959, 0.0483577251434326, 0.0693991184234619, 0.0693991184234619, 
            0.0370047092437744, 0.0147011280059814, 0.0243809223175049), nodes = c(0L, 2L, 5L, 5L, 5L, 5L, 5L, 5L), edges = c(0L, 
            0L, 0L, 5L, 5L, 5L, 5L, 5L), d_n = c(0L, 2L, 3L, 0L, 0L, 0L, 0L, 0L), d_e = c(0L, 0L, 0L, 5L, 5L, 0L, 0L, 0L)), 
            row.names = c(NA, -8L), class = "data.frame")), class = "dgr_graph")
    DiagrammeR:::trav_out_node(graph = ., conditions = values < 7)
}





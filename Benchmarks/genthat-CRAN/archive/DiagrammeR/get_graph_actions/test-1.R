library(DiagrammeR)

function_to_run <- function() {
    . <- structure(list(graph_info = structure(list(graph_id = "wkAYJjR5", graph_name = "graph_wkAYJjR5", graph_time = structure(1628396331.43834, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = 1:10, type = c(NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_), label = c("1", 
        "2", "3", "4", "5", "6", "7", "8", "9", "10")), row.names = c(NA, -10L), class = "data.frame"), edges_df = structure(list(id = 1:22, 
        from = c(1L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L, 4L, 4L, 5L, 6L, 6L, 7L, 7L, 7L, 8L, 9L, 9L), to = c(6L, 1L, 
            3L, 4L, 8L, 9L, 1L, 2L, 10L, 4L, 6L, 2L, 9L, 1L, 3L, 7L, 1L, 2L, 6L, 2L, 5L, 7L), rel = c(NA_character_, NA_character_, 
            NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
            NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
            NA_character_, NA_character_, NA_character_, NA_character_)), row.names = c(NA, -22L), class = "data.frame"), 
        global_attrs = structure(list(attr = c("layout", "outputorder", "bgcolor", "fontname", "fontsize", "shape", "fixedsize", 
            "width", "style", "fillcolor", "color", "fontcolor", "fontname", "fontsize", "len", "color", "arrowsize"), value = c("neato", 
            "edgesfirst", "white", "Helvetica", "10", "circle", "true", "0.5", "filled", "aliceblue", "gray70", "gray50", 
            "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", "graph", "graph", "node", "node", "node", "node", 
            "node", "node", "node", "node", "node", "edge", "edge", "edge", "edge", "edge")), row.names = c(NA, -17L), class = "data.frame"), 
        directed = TRUE, last_node = 10, last_edge = 22, node_selection = structure(list(node = integer(0)), row.names = integer(0), 
            class = "data.frame"), edge_selection = structure(list(edge = integer(0), from = integer(0), to = integer(0)), 
            row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = 1, 
            action_name = "get_btwns", expression = "set_node_attr_w_fcn(graph = graph, node_attr_fcn = 'get_betweenness', column_name = 'btwns')"), 
            row.names = c(NA, -1L), class = "data.frame"), graph_log = structure(list(version_id = c(1L, 2L, 3L, 3L), function_used = c("create_graph", 
            "add_gnm_graph", "add_graph_action", ""), time_modified = structure(c(1628396331.43834, 1628396331.58961, 1628396332.47364, 
            1628396332.47364), class = c("POSIXct", "POSIXt")), duration = c(0.145691394805908, 0.878184080123901, 0.013746976852417, 
            0.013746976852417), nodes = c(0L, 10L, 10L, 10L), edges = c(0L, 22L, 22L, 22L), d_n = c(0L, 10L, 0L, 0L), d_e = c(0L, 
            22L, 0L, 0L)), row.names = c(NA, -4L), class = "data.frame")), class = "dgr_graph")
    DiagrammeR:::get_graph_actions(graph = .)
}





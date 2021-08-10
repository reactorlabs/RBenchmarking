library(DiagrammeR)

function_to_run <- function() {
    valid_nodes <- structure(list(id = 4L, type = NA_character_, label = "4", value = 4L), row.names = c(NA, -1L), class = c("tbl_df", 
        "tbl", "data.frame"))
    graph <- structure(list(graph_info = structure(list(graph_id = "wkAYJjR5", graph_name = "graph_wkAYJjR5", graph_time = structure(1628397155.42115, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = 1:10, type = c(NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_), label = c("1", 
        "2", "3", "4", "5", "6", "7", "8", "9", "10"), value = 1:10), row.names = c(NA, -10L), class = "data.frame"), edges_df = structure(list(id = 1:9, 
        from = 1:9, to = 2:10, rel = c(NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
            NA_character_, NA_character_, NA_character_)), row.names = c(NA, -9L), class = "data.frame"), global_attrs = structure(list(attr = c("layout", 
        "outputorder", "bgcolor", "fontname", "fontsize", "shape", "fixedsize", "width", "style", "fillcolor", "color", "fontcolor", 
        "fontname", "fontsize", "len", "color", "arrowsize"), value = c("neato", "edgesfirst", "white", "Helvetica", "10", 
        "circle", "true", "0.5", "filled", "aliceblue", "gray70", "gray50", "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", 
        "graph", "graph", "node", "node", "node", "node", "node", "node", "node", "node", "node", "edge", "edge", "edge", 
        "edge", "edge")), row.names = c(NA, -17L), class = "data.frame"), directed = TRUE, last_node = 10, last_edge = 9, 
        node_selection = structure(list(node = 5L), row.names = c(NA, -1L), class = "data.frame"), edge_selection = structure(list(edge = integer(0), 
            from = integer(0), to = integer(0)), row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = integer(0), 
            action_name = character(0), expression = character(0)), row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = 1:3, 
            function_used = c("create_graph", "add_path", "select_nodes_by_id"), time_modified = structure(c(1628397155.42115, 
                1628397155.57671, 1628397155.6991), class = c("POSIXct", "POSIXt")), duration = c(0.149850845336914, 0.116275310516357, 
                0.0229368209838867), nodes = c(0L, 10L, 10L), edges = c(0L, 9L, 9L), d_n = c(0L, 10L, 0L), d_e = c(0L, 9L, 
                0L)), row.names = c(NA, 3L), class = "data.frame")), class = "dgr_graph")
    DiagrammeR:::replace_graph_node_selection(graph = graph, replacement = valid_nodes$id)
}





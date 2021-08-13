

genthat_extracted_call <- function() {
    graph <- structure(list(graph_info = structure(list(graph_id = "wkAYJjR5", graph_name = "graph_wkAYJjR5", graph_time = structure(1628396587.68582, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = 1:20, type = c(NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_), label = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", 
        "17", "18", "19", "20"), value = c(5.8, 3.8, 4.5, 5, 4.5, 6.2, 4.3, 5.2, 4.4, 5.1, 3.9, 3.8, 4.8, 5.2, 6.3, 3.7, 
        5.9, 5.2, 6, 6.3)), row.names = c(NA, -20L), class = "data.frame"), edges_df = structure(list(id = 1:35, from = c(1L, 
        2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 4L, 5L, 5L, 6L, 7L, 7L, 7L, 8L, 8L, 9L, 11L, 11L, 11L, 12L, 12L, 12L, 14L, 
        14L, 15L, 16L, 17L, 18L, 19L, 20L), to = c(16L, 9L, 13L, 16L, 7L, 8L, 9L, 11L, 12L, 14L, 19L, 12L, 8L, 11L, 18L, 
        8L, 15L, 16L, 4L, 12L, 12L, 1L, 5L, 19L, 3L, 10L, 13L, 12L, 17L, 7L, 12L, 15L, 14L, 14L, 15L), rel = c(NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_)), row.names = c(NA, -35L), class = "data.frame"), global_attrs = structure(list(attr = c("layout", 
        "outputorder", "bgcolor", "fontname", "fontsize", "shape", "fixedsize", "width", "style", "fillcolor", "color", "fontcolor", 
        "fontname", "fontsize", "len", "color", "arrowsize"), value = c("neato", "edgesfirst", "white", "Helvetica", "10", 
        "circle", "true", "0.5", "filled", "aliceblue", "gray70", "gray50", "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", 
        "graph", "graph", "node", "node", "node", "node", "node", "node", "node", "node", "node", "edge", "edge", "edge", 
        "edge", "edge")), row.names = c(NA, -17L), class = "data.frame"), directed = TRUE, last_node = 20, last_edge = 35, 
        node_selection = structure(list(node = integer(0)), row.names = integer(0), class = "data.frame"), edge_selection = structure(list(edge = integer(0), 
            from = integer(0), to = integer(0)), row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = integer(0), 
            action_name = character(0), expression = character(0)), row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = c(1L, 
            2L, 3L, 3L), function_used = c("create_graph", "add_gnm_graph", "set_node_attrs", ""), time_modified = structure(c(1628396587.68582, 
            1628396587.83745, 1628396588.73044, 1628396588.73044), class = c("POSIXct", "POSIXt")), duration = c(0.146028518676758, 
            0.887346267700195, 0.0228629112243652, 0.0228629112243652), nodes = c(0L, 20L, 20L, 20L), edges = c(0L, 35L, 
            35L, 35L), d_n = c(0L, 20L, 0L, 0L), d_e = c(0L, 35L, 0L, 0L)), row.names = c(NA, -4L), class = "data.frame")), 
        class = "dgr_graph")
    DiagrammeR:::get_degree_out(graph = graph)
}





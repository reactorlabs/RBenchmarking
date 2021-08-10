library(DiagrammeR)

function_to_run <- function() {
    . <- structure(list(graph_info = structure(list(graph_id = "wkAYJjR5", graph_name = "graph_wkAYJjR5", graph_time = structure(1628396539.48604, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = 1:20, type = c(NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_), label = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", 
        "17", "18", "19", "20")), row.names = c(NA, -20L), class = "data.frame"), edges_df = structure(list(id = c(1, 2, 
        3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18), from = c(1L, 1L, 2L, 2L, 3L, 3L, 8L, 8L, 8L, 9L, 9L, 9L, 
        10L, 10L, 10L, 11L, 11L, 11L), to = c(2L, 3L, 4L, 5L, 6L, 7L, 9L, 10L, 11L, 12L, 13L, 14L, 15L, 16L, 17L, 18L, 19L, 
        20L), rel = c(NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_)), row.names = c(NA, -18L), class = "data.frame"), global_attrs = structure(list(attr = c("layout", 
        "outputorder", "bgcolor", "fontname", "fontsize", "shape", "fixedsize", "width", "style", "fillcolor", "color", "fontcolor", 
        "fontname", "fontsize", "len", "color", "arrowsize"), value = c("neato", "edgesfirst", "white", "Helvetica", "10", 
        "circle", "true", "0.5", "filled", "aliceblue", "gray70", "gray50", "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", 
        "graph", "graph", "node", "node", "node", "node", "node", "node", "node", "node", "node", "edge", "edge", "edge", 
        "edge", "edge")), row.names = c(NA, -17L), class = "data.frame"), directed = TRUE, last_node = 20, last_edge = 18, 
        node_selection = structure(list(node = integer(0)), row.names = integer(0), class = "data.frame"), edge_selection = structure(list(edge = integer(0), 
            from = integer(0), to = integer(0)), row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = integer(0), 
            action_name = character(0), expression = character(0)), row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = 1:3, 
            function_used = c("create_graph", "add_balanced_tree", "add_balanced_tree"), time_modified = structure(c(1628396539.48604, 
                1628396539.63668, 1628396539.80218), class = c("POSIXct", "POSIXt")), duration = c(0.14510440826416, 0.111732959747314, 
                0.194374322891235), nodes = c(0L, 7L, 20L), edges = c(0L, 6L, 18L), d_n = c(0L, 7L, 13L), d_e = c(0L, 6L, 
                12L)), row.names = c(NA, -3L), class = "data.frame")), class = "dgr_graph")
    DiagrammeR:::do_dfs(graph = ., node = 1, direction = "in")
}





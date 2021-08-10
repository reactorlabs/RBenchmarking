library(DiagrammeR)

function_to_run <- function() {
    graph <- structure(list(graph_info = structure(list(graph_id = "nC5gpXdq", graph_name = "graph_nC5gpXdq", graph_time = structure(1628396987.50651, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = 1:15, type = c(NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_), label = c("1", "2", "3", "4", "5", "6", "7", "8", "9", 
        "10", "11", "12", "13", "14", "15"), display = c(NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_), fillcolor = c("#F0F8FF", "#F0F8FF", "#F0F8FF", "#F0F8FF", "#F0F8FF", "#F0F8FF", "#F0F8FF", 
        "#F0F8FF", "#F0F8FF", "#F0F8FF", "#F0F8FF", "#F0F8FF", "#F0F8FF", "#F0F8FF", "#F0F8FF"), fontcolor = c("#000000", 
        "#000000", "#000000", "#000000", "#000000", "#000000", "#000000", "#000000", "#000000", "#000000", "#000000", "#000000", 
        "#000000", "#000000", "#000000"), x = c(3.5, 1.5, 5.5, 0.5, 2.5, 4.5, 6.5, 0, 1, 2, 3, 4, 5, 6, 7), y = c(4, 3, 3, 
        2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1)), row.names = c(NA, -15L), class = "data.frame"), edges_df = structure(list(id = 1:14, 
        from = c(1L, 1L, 2L, 2L, 3L, 3L, 4L, 4L, 5L, 5L, 6L, 6L, 7L, 7L), to = 2:15, rel = c(NA_character_, NA_character_, 
            NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
            NA_character_, NA_character_, NA_character_, NA_character_)), row.names = c(NA, -14L), class = "data.frame"), 
        global_attrs = structure(list(attr = c("layout", "outputorder", "bgcolor", "fontname", "fontsize", "shape", "fixedsize", 
            "width", "style", "fillcolor", "color", "fontcolor", "fontname", "fontsize", "len", "color", "arrowsize"), value = c("neato", 
            "edgesfirst", "white", "Helvetica", "10", "circle", "true", "0.5", "filled", "aliceblue", "gray70", "gray50", 
            "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", "graph", "graph", "node", "node", "node", "node", 
            "node", "node", "node", "node", "node", "edge", "edge", "edge", "edge", "edge")), class = "data.frame", row.names = c(NA, 
            -17L)), directed = TRUE, last_node = 15, last_edge = 14, node_selection = structure(list(node = integer(0)), 
            row.names = integer(0), class = "data.frame"), edge_selection = structure(list(edge = integer(0), from = integer(0), 
            to = integer(0)), row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = integer(0), 
            action_name = character(0), expression = character(0)), row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = 1:4, 
            function_used = c("create_graph", "add_balanced_tree", "set_node_attr_to_display", "add_global_graph_attrs"), 
            time_modified = structure(c(1628396987.50651, 1628396987.51913, 1628396987.5535, 1628396987.61078), class = c("POSIXct", 
                "POSIXt")), duration = c(0.00758028030395508, 0.0287771224975586, 0.017399787902832, 0.00976371765136719), 
            nodes = c(0L, 15L, 15L, 15L), edges = c(0L, 14L, 14L, 14L), d_n = c(0L, 15L, 0L, 0L), d_e = c(0L, 14L, 0L, 0L)), 
            row.names = c(NA, -4L), class = "data.frame")), class = "dgr_graph")
    DiagrammeR:::generate_dot(graph = graph)
}





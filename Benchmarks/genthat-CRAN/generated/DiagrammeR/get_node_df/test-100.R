library(DiagrammeR)

function_to_run <- function() {
    y <- structure(list(graph_info = structure(list(graph_id = "TZxuCoYa", graph_name = "graph_TZxuCoYa", graph_time = structure(1628396761.61322, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = 1:7, type = c(NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_), label = c("1", "2", "3", "4", "5", "6", "7")), row.names = c(NA, 
        -7L), class = "data.frame"), edges_df = structure(list(id = 1:6, from = c(1L, 1L, 2L, 2L, 3L, 3L), to = 2:7, rel = c("b", 
        "b", "b", "b", "b", "b")), row.names = c(NA, -6L), class = "data.frame"), global_attrs = structure(list(attr = c("layout", 
        "outputorder", "bgcolor", "fontname", "fontsize", "shape", "fixedsize", "width", "style", "fillcolor", "color", "fontcolor", 
        "fontname", "fontsize", "len", "color", "arrowsize"), value = c("neato", "edgesfirst", "white", "Helvetica", "10", 
        "circle", "true", "0.5", "filled", "aliceblue", "gray70", "gray50", "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", 
        "graph", "graph", "node", "node", "node", "node", "node", "node", "node", "node", "node", "edge", "edge", "edge", 
        "edge", "edge")), row.names = c(NA, -17L), class = "data.frame"), directed = TRUE, last_node = 7L, last_edge = 6L, 
        node_selection = structure(list(node = integer(0)), row.names = integer(0), class = "data.frame"), edge_selection = structure(list(edge = integer(0), 
            from = integer(0), to = integer(0)), row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = integer(0), 
            action_name = character(0), expression = character(0)), row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = c(1L, 
            1L), function_used = c("create_graph", ""), time_modified = structure(c(1628396761.61322, 1628396761.61322), 
            class = c("POSIXct", "POSIXt")), duration = c(0.00753140449523926, 0.00753140449523926), nodes = c(7L, 7L), edges = c(6L, 
            6L), d_n = c(7L, 7L), d_e = c(6L, 6L)), row.names = c(NA, -2L), class = "data.frame")), class = "dgr_graph")
    DiagrammeR:::get_node_df(graph = y)
}





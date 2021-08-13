library(DiagrammeR)

function_to_run <- function() {
    new_node <- structure(list(id = 2, type = NA_character_, label = NA_character_), row.names = c(NA, -1L), class = "data.frame")
    graph <- structure(list(graph_info = structure(list(graph_id = "wkAYJjR5", graph_name = "graph_wkAYJjR5", graph_time = structure(1628396364.72873, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = 1L, type = NA_character_, label = NA_character_), row.names = c(NA, 
        -1L), class = "data.frame"), edges_df = structure(list(id = integer(0), from = integer(0), to = integer(0), rel = character(0)), 
        row.names = integer(0), class = "data.frame"), global_attrs = structure(list(attr = c("layout", "outputorder", "bgcolor", 
        "fontname", "fontsize", "shape", "fixedsize", "width", "style", "fillcolor", "color", "fontcolor", "fontname", "fontsize", 
        "len", "color", "arrowsize"), value = c("neato", "edgesfirst", "white", "Helvetica", "10", "circle", "true", "0.5", 
        "filled", "aliceblue", "gray70", "gray50", "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", "graph", 
        "graph", "node", "node", "node", "node", "node", "node", "node", "node", "node", "edge", "edge", "edge", "edge", 
        "edge")), row.names = c(NA, -17L), class = "data.frame"), directed = TRUE, last_node = 1, last_edge = 0, node_selection = structure(list(node = integer(0)), 
        row.names = integer(0), class = "data.frame"), edge_selection = structure(list(edge = integer(0), from = integer(0), 
        to = integer(0)), row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = integer(0), 
        action_name = character(0), expression = character(0)), row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = 1:2, 
        function_used = c("create_graph", "add_node"), time_modified = structure(c(1628396364.72873, 1628396364.87494), class = c("POSIXct", 
            "POSIXt")), duration = c(0.140653133392334, 0.0179283618927002), nodes = 0:1, edges = c(0L, 0L), d_n = 0:1, d_e = c(0L, 
            0L)), row.names = c(NA, -2L), class = "data.frame")), class = "dgr_graph")
    DiagrammeR:::combine_ndfs(graph$nodes_df, new_node)
}





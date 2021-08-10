library(DiagrammeR)

function_to_run <- function() {
    to <- "four"
    graph <- structure(list(graph_info = structure(list(graph_id = "wkAYJjR5", graph_name = "graph_wkAYJjR5", graph_time = structure(1628396294.37451, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = 1:4, type = c(NA_character_, NA_character_, NA_character_, 
        NA_character_), label = c("one", "two", "three", "four")), row.names = c(NA, -4L), class = "data.frame"), edges_df = structure(list(id = 1:2, 
        from = c(1L, 3L), to = c(2L, 2L), rel = c("A", "A")), row.names = c(NA, -2L), class = "data.frame"), global_attrs = structure(list(attr = c("layout", 
        "outputorder", "bgcolor", "fontname", "fontsize", "shape", "fixedsize", "width", "style", "fillcolor", "color", "fontcolor", 
        "fontname", "fontsize", "len", "color", "arrowsize"), value = c("neato", "edgesfirst", "white", "Helvetica", "10", 
        "circle", "true", "0.5", "filled", "aliceblue", "gray70", "gray50", "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", 
        "graph", "graph", "node", "node", "node", "node", "node", "node", "node", "node", "node", "edge", "edge", "edge", 
        "edge", "edge")), row.names = c(NA, -17L), class = "data.frame"), directed = TRUE, last_node = 4, last_edge = 2L, 
        node_selection = structure(list(node = integer(0)), row.names = integer(0), class = "data.frame"), edge_selection = structure(list(edge = integer(0), 
            from = integer(0), to = integer(0)), row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = integer(0), 
            action_name = character(0), expression = character(0)), row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = 1:7, 
            function_used = c("create_graph", "add_node", "add_node", "add_node", "add_node", "add_edge", "add_edge"), time_modified = structure(c(1628396294.37451, 
                1628396294.52567, 1628396294.68502, 1628396294.74899, 1628396294.76049, 1628396294.77431, 1628396294.87618), 
                class = c("POSIXct", "POSIXt")), duration = c(0.14559006690979, 0.0178787708282471, 0.0587558746337891, 0.00636816024780273, 
                0.0086216926574707, 0.00559806823730469, 0.00446319580078125), nodes = c(0L, 1L, 2L, 3L, 4L, 4L, 4L), edges = c(0L, 
                0L, 0L, 0L, 0L, 1L, 2L), d_n = c(0L, 1L, 1L, 1L, 1L, 0L, 0L), d_e = c(0L, 0L, 0L, 0L, 0L, 1L, 1L)), row.names = c(NA, 
            -7L), class = "data.frame")), class = "dgr_graph")
    from <- "three"
    DiagrammeR:::translate_to_node_id(graph = graph, from = from, to = to)
}





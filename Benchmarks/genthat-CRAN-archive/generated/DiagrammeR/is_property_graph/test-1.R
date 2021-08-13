library(DiagrammeR)

function_to_run <- function() {
    simple_property_graph <- structure(list(graph_info = structure(list(graph_id = "wkAYJjR5", graph_name = "graph_wkAYJjR5", 
        graph_time = structure(1628396915.80564, class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, 
        display_msgs = FALSE), class = "data.frame", row.names = c(NA, -1L)), nodes_df = structure(list(id = 1:2, type = c("a", 
        "b"), label = c("first", "second")), row.names = c(NA, -2L), class = "data.frame"), edges_df = structure(list(id = 1L, 
        from = 1L, to = 2L, rel = "rel_1"), row.names = c(NA, -1L), class = "data.frame"), global_attrs = structure(list(attr = c("layout", 
        "outputorder", "bgcolor", "fontname", "fontsize", "shape", "fixedsize", "width", "style", "fillcolor", "color", "fontcolor", 
        "fontname", "fontsize", "len", "color", "arrowsize"), value = c("neato", "edgesfirst", "white", "Helvetica", "10", 
        "circle", "true", "0.5", "filled", "aliceblue", "gray70", "gray50", "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", 
        "graph", "graph", "node", "node", "node", "node", "node", "node", "node", "node", "node", "edge", "edge", "edge", 
        "edge", "edge")), row.names = c(NA, -17L), class = "data.frame"), directed = TRUE, last_node = 2, last_edge = 1L, 
        node_selection = structure(list(node = integer(0)), row.names = integer(0), class = "data.frame"), edge_selection = structure(list(edge = integer(0), 
            from = integer(0), to = integer(0)), row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = integer(0), 
            action_name = character(0), expression = character(0)), row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = 1:4, 
            function_used = c("create_graph", "add_node", "add_node", "add_edge"), time_modified = structure(c(1628396915.80564, 
                1628396915.96301, 1628396916.12428, 1628396916.18979), class = c("POSIXct", "POSIXt")), duration = c(0.151606559753418, 
                0.0182962417602539, 0.0601181983947754, 0.0436303615570068), nodes = c(0L, 1L, 2L, 2L), edges = c(0L, 0L, 
                0L, 1L), d_n = c(0L, 1L, 1L, 0L), d_e = c(0L, 0L, 0L, 1L)), row.names = c(NA, -4L), class = "data.frame")), 
        class = "dgr_graph")
    DiagrammeR:::is_property_graph(graph = simple_property_graph)
}





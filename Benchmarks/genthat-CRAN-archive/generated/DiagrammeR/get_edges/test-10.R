library(DiagrammeR)

function_to_run <- function() {
    . <- structure(list(graph_info = structure(list(graph_id = "wkAYJjR5", graph_name = "graph_wkAYJjR5", graph_time = structure(1628396718.19858, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = 1:4, type = c("letter", "letter", "letter", "letter"), label = c("one", 
        "two", "three", "four"), color = c("red", "green", "grey", "blue"), value = c(3.5, 2.6, 9.4, 2.7)), row.names = c(NA, 
        -4L), class = "data.frame"), edges_df = structure(list(id = 1:3, from = 1:3, to = c(4L, 3L, 1L), rel = c("leading_to", 
        "leading_to", "leading_to"), color = c("pink", "blue", "blue"), value = c(3.9, 2.5, 7.3)), row.names = c(NA, -3L), 
        class = "data.frame"), global_attrs = structure(list(attr = c("layout", "outputorder", "bgcolor", "fontname", "fontsize", 
        "shape", "fixedsize", "width", "style", "fillcolor", "color", "fontcolor", "fontname", "fontsize", "len", "color", 
        "arrowsize"), value = c("neato", "edgesfirst", "white", "Helvetica", "10", "circle", "true", "0.5", "filled", "aliceblue", 
        "gray70", "gray50", "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", "graph", "graph", "node", "node", 
        "node", "node", "node", "node", "node", "node", "node", "edge", "edge", "edge", "edge", "edge")), row.names = c(NA, 
        -17L), class = "data.frame"), directed = TRUE, last_node = 4L, last_edge = 3L, node_selection = structure(list(node = integer(0)), 
        row.names = integer(0), class = "data.frame"), edge_selection = structure(list(edge = integer(0), from = integer(0), 
        to = integer(0)), row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = integer(0), 
        action_name = character(0), expression = character(0)), row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = 1L, 
        function_used = "create_graph", time_modified = structure(1628396718.19858, class = c("POSIXct", "POSIXt")), duration = 0.0184648036956787, 
        nodes = 4L, edges = 3L, d_n = 4L, d_e = 3L), row.names = c(NA, -1L), class = "data.frame")), class = "dgr_graph")
    DiagrammeR:::get_edges(graph = ., conditions = color == "pink", return_type = "vector")
}





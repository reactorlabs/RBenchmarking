library(DiagrammeR)

function_to_run <- function() {
    graph <- structure(list(graph_info = structure(list(graph_id = "TZxuCoYa", graph_name = "graph_TZxuCoYa", graph_time = structure(1628397156.28067, 
        class = c("POSIXct", "POSIXt")), graph_tz = "Etc/UTC", write_backups = FALSE, display_msgs = FALSE), class = "data.frame", 
        row.names = c(NA, -1L)), nodes_df = structure(list(id = 1:12, type = c(NA_character_, NA_character_, NA_character_, 
        NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, 
        NA_character_), label = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"), value = 1:12), row.names = c(NA, 
        -12L), class = "data.frame"), edges_df = structure(list(id = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), from = 1:12, 
        to = c(2L, 3L, 4L, 5L, 6L, 1L, 8L, 9L, 10L, 11L, 12L, 7L), rel = c(NA_character_, NA_character_, NA_character_, NA_character_, 
            NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_, NA_character_), 
        value = c(NA, NA, NA, NA, NA, NA, 8L, 9L, 10L, 11L, 12L, 7L)), row.names = c(NA, -12L), class = "data.frame"), global_attrs = structure(list(attr = c("layout", 
        "outputorder", "bgcolor", "fontname", "fontsize", "shape", "fixedsize", "width", "style", "fillcolor", "color", "fontcolor", 
        "fontname", "fontsize", "len", "color", "arrowsize"), value = c("neato", "edgesfirst", "white", "Helvetica", "10", 
        "circle", "true", "0.5", "filled", "aliceblue", "gray70", "gray50", "Helvetica", "8", "1.5", "gray80", "0.5"), attr_type = c("graph", 
        "graph", "graph", "node", "node", "node", "node", "node", "node", "node", "node", "node", "edge", "edge", "edge", 
        "edge", "edge")), row.names = c(NA, -17L), class = "data.frame"), directed = TRUE, last_node = 12, last_edge = 12, 
        node_selection = structure(list(node = c(5L, 11L)), row.names = c(NA, -2L), class = "data.frame"), edge_selection = structure(list(edge = integer(0), 
            from = integer(0), to = integer(0)), row.names = integer(0), class = "data.frame"), cache = list(), graph_actions = structure(list(action_index = integer(0), 
            action_name = character(0), expression = character(0)), row.names = integer(0), class = "data.frame"), graph_log = structure(list(version_id = 1:4, 
            function_used = c("create_graph", "add_cycle", "add_cycle", "select_nodes_by_id"), time_modified = structure(c(1628397156.28067, 
                1628397156.29321, 1628397156.4372, 1628397156.55692), class = c("POSIXct", "POSIXt")), duration = c(0.00744390487670898, 
                0.0887947082519531, 0.113779783248901, 0.0133607387542725), nodes = c(0L, 6L, 12L, 12L), edges = c(0L, 6L, 
                12L, 12L), d_n = c(0L, 6L, 6L, 0L), d_e = c(0L, 6L, 6L, 0L)), row.names = c(NA, 4L), class = "data.frame")), 
        class = "dgr_graph")
    DiagrammeR:::get_selection(graph = graph)
}





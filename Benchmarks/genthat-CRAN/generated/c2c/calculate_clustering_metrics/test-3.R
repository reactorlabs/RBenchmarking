library(c2c)

function_to_run <- function() {
    conf_mat <- structure(c(2.79119667387567, 2.73400252172723, 2.68708774400875, 2.13719859998673, 3.43770962324925, 3.57142539811321, 
        3.16630354081281, 3.4667786010541, 3.05496776127256, 2.89545848709531, 0, 0, 0, 0, 0), .Dim = c(5L, 3L))
    c2c:::calculate_clustering_metrics(conf_mat = conf_mat)
}





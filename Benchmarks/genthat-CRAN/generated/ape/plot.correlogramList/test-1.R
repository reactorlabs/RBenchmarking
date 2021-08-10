library(ape)

function_to_run <- function() {
    cos <- structure(list(SW = structure(list(obs = c(0.432479537380044, 0.572366225673716, -0.119934300032293, -0.00440238295903696), 
        p.values = c(8.80603962272186e-05, 0, 2.13560397789607e-10, 0.677623930075817), labels = structure(c(2L, 1L, 4L, 
            3L), .Label = c("Family", "Genus", "Order", "SuperFamily"), class = "factor")), row.names = c(NA, 4L), class = c("correlogram", 
        "data.frame")), FW = structure(list(obs = c(0.416061384635188, 0.553969730694391, -0.115995017964318, -0.00464343568495413), 
        p.values = c(0.000143819180323579, 0, 6.97236378583347e-10, 0.691561082247467), labels = structure(c(2L, 1L, 4L, 
            3L), .Label = c("Family", "Genus", "Order", "SuperFamily"), class = "factor")), row.names = c(NA, 4L), class = c("correlogram", 
        "data.frame"))), class = "correlogramList")
    ape:::plot.correlogramList(x = cos)
}





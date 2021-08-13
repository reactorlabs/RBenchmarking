library(cobalt)

function_to_run <- function() {
    cobalt:::`treat_vals<-`(treat = structure(1L, names = "343", .Label = c("0", "1"), class = c("processed.treat", "factor"), 
        treat_names = structure(c("Control", "Treated"), names = c("control", "treated"))), value = structure(c("0", "1"), 
        names = c("Control", "Treated")))
}





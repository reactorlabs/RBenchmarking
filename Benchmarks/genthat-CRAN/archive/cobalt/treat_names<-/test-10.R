library(cobalt)

function_to_run <- function() {
    cobalt:::`treat_names<-`(treat = structure(2L, .Label = c("0", "1"), class = c("processed.treat", "factor")), value = structure(c("Control", 
        "Treated"), names = c("control", "treated")))
}





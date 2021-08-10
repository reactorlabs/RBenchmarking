library(cobalt)

function_to_run <- function() {
    nn <- structure(list(Control = c(429, 99.9675468867193), Treated = c(185, 185)), ss.type = c("ss", "ess"), row.names = c("Unadjusted", 
        "Adjusted"), class = "data.frame", tag = "Effective sample sizes")
    cobalt:::nunique.gt(x = attr(nn, "ss.type")[-1], n = 1)
}





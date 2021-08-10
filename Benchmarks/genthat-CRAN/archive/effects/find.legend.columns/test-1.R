library(effects)

function_to_run <- function() {
    zvals <- structure(1:2, .Label = c("female", "male"), class = "factor")
    key.args <- list(space = "top", border = FALSE, fontfamily = "sans", cex = 0.75, cex.title = 1, arg = "key.args", between.columns = 0)
    effects:::find.legend.columns(n = length(zvals), space = if ("x" %in% names(key.args)) 
        "top"
    else key.args$space)
}





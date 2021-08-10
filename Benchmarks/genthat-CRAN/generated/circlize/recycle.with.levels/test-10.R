library(circlize)

function_to_run <- function() {
    le <- c("a", "b")
    bg.lwd <- 1
    circlize:::recycle.with.levels(x = bg.lwd, levels = le)
}





library(fields)

function_to_run <- function() {
    BD <- fields::BD
    fields:::Tps(x = BD[, 1:4], Y = BD$lnya, scale.type = "range")
}





library(backports)

function_to_run <- function() {
    backports:::startsWith(x = c("aabb", "bbcc"), prefix = "bb")
}





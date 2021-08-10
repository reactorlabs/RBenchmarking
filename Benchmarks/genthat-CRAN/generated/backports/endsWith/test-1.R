library(backports)

function_to_run <- function() {
    backports:::endsWith(x = c("aabb", "bbcc"), suffix = "bb")
}





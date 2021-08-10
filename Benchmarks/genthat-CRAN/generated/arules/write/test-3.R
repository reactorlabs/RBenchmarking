library(arules)

function_to_run <- function() {
    data <- "trans1 item1\ntrans2 item1\ntrans2 item2"
    arules:::write(x = data, file = "demo_single")
}





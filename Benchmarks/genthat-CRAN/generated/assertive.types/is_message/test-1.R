library(assertive.types)

function_to_run <- function() {
    simple_msg <- structure(list(message = "!!!\n", call = message("!!!")), class = c("simpleMessage", "message", "condition"))
    assertive.types:::is_message(x = simple_msg)
}





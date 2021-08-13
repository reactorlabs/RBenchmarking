

genthat_extracted_call <- function() {
    simple_msg <- structure(list(message = "!!!\n", call = message("!!!")), class = c("simpleMessage", "message", "condition"))
    assertive.types:::is_simple_message(x = simple_msg)
}





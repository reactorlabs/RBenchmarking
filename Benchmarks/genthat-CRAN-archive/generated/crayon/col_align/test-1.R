library(crayon)

function_to_run <- function() {
    red <- crayon::red
    crayon:::col_align(text = red("foobar"), width = 20, align = "right")
}





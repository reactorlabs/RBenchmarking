

genthat_extracted_call <- function() {
    blue <- crayon::blue
    crayon:::`%+%`(lhs = "I am a green line ", rhs = blue$underline$bold("with a blue substring"))
}





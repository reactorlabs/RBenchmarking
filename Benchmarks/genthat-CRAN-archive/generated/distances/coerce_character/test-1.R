library(distances)

function_to_run <- function() {
    num_data_points <- 10L
    id_variable <- structure(1:10, .Label = c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j"), class = "factor")
    distances:::coerce_character(x = id_variable, req_length = num_data_points)
}





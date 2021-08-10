library(distances)

function_to_run <- function() {
    my_data_points_withID <- structure(list(x = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), y = c(10, 9, 8, 7, 6, 6, 7, 8, 9, 10), 
        my_ids = structure(1:10, .Label = c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j"), class = "factor")), class = "data.frame", 
        row.names = c(NA, -10L))
    distances:::distances(data = my_data_points_withID, id_variable = "my_ids")
}





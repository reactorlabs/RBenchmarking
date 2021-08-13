

genthat_extracted_call <- function() {
    trafo <- coin::trafo
    rank_trafo <- coin::rank_trafo
    gerig <- structure(list(y1 = c(0.547, 1.811, 2.561, 1.706, 2.509, 1.414, -0.288, 2.524, 3.31, 1.417, 0.703, 0.961, 0.878, 
        0.094, 1.682, -0.68, 2.077, 3.181, 0.056, 0.542, 2.983, 0.711, 0.269, 1.662, -1.335, 1.545, 2.92, 1.635, 0.2, 2.065), 
        y2 = c(-0.575, 1.84, 2.399, 1.252, 1.574, 3.059, -0.31, 1.553, 0.56, 0.932, 1.39, 3.083, 0.819, 0.045, 3.348, 0.497, 
            1.747, 1.355, -0.285, 0.76, 2.332, 0.089, 1.076, 0.96, -0.349, 1.471, 4.121, 0.845, 1.48, 3.391), x = structure(c(1L, 
            2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 3L, 1L, 2L, 
            3L), .Label = c("1", "2", "3"), class = "factor"), b = structure(c(1L, 1L, 1L, 2L, 2L, 2L, 3L, 3L, 3L, 4L, 4L, 
            4L, 5L, 5L, 5L, 6L, 6L, 6L, 7L, 7L, 7L, 8L, 8L, 8L, 9L, 9L, 9L, 10L, 10L, 10L), .Label = c("1", "2", "3", "4", 
            "5", "6", "7", "8", "9", "10"), class = "factor")), class = "data.frame", row.names = c(NA, -30L))
    coin:::symmetry_test.formula(formula = y1 + y2 ~ x | b, data = gerig, ytrafo = function(data) trafo(data, numeric_trafo = rank_trafo, 
        block = gerig$b), scores = list(x = 1:3))
}





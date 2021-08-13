

genthat_extracted_call <- function() {
    trafo <- coin::trafo
    of_trafo <- coin::of_trafo
    jobsatisfaction <- structure(c(1L, 2L, 0L, 0L, 3L, 3L, 1L, 2L, 11L, 17L, 8L, 4L, 2L, 3L, 5L, 2L, 1L, 0L, 0L, 0L, 1L, 
        3L, 0L, 1L, 2L, 5L, 7L, 9L, 1L, 1L, 3L, 6L), .Dim = c(4L, 4L, 2L), .Dimnames = list(Income = c("<5000", "5000-15000", 
        "15000-25000", ">25000"), Job.Satisfaction = c("Very Dissatisfied", "A Little Satisfied", "Moderately Satisfied", 
        "Very Satisfied"), Gender = c("Female", "Male")), class = "table")
    coin:::lbl_test.table(object = jobsatisfaction, ytrafo = function(data) trafo(data, ordered_trafo = function(y) of_trafo(y, 
        scores = c(1, 3, 4, 5))), xtrafo = function(data) trafo(data, ordered_trafo = function(x) of_trafo(x, scores = c(3, 
        10, 20, 35))))
}





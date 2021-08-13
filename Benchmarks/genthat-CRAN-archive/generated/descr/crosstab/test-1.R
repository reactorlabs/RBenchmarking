library(descr)

function_to_run <- function() {
    opinion <- structure(c(1L, 2L, 1L, 2L, 2L, 2L, 3L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 1L, 1L, 2L, 2L, 1L, 2L, 2L, 2L, 3L, 
        2L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 
        2L, 2L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 1L, 2L, 2L, 1L, 2L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
        2L, 3L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 2L, 2L, 2L, 2L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 
        3L, 2L, 2L, 2L, 1L, 2L, 1L, 1L, 3L, 2L, 2L, 2L, 2L, 1L, 1L, 2L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 1L, 2L, 
        2L, 2L, 1L, 2L, 2L, 2L, 3L, 2L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 2L, 1L, 3L, 2L, 2L, 1L, 1L, 2L, 3L, 1L, 1L, 1L, 1L, 2L, 
        2L, 2L, 2L, 1L, 2L, 1L, 3L, 2L, 2L, 2L, 1L, 1L, 2L, 2L, 2L, 1L, 1L, 2L, 3L, 2L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 3L, 1L, 
        1L, 2L), .Label = c("Disagree", "Agree", "Don't know"), class = "factor", label = "Opinion")
    educ <- structure(c(1L, 1L, 2L, 1L, 2L, 2L, 1L, 2L, 2L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 2L, 2L, 2L, 1L, 2L, 1L, 1L, 2L, 
        2L, 2L, 1L, 2L, 1L, 1L, 1L, 2L, 2L, 2L, 1L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 1L, 2L, 1L, 1L, 2L, 1L, 2L, 2L, 2L, 2L, 1L, 
        2L, 1L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
        2L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 1L, 
        1L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 1L, 2L, 1L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 2L, 1L, 2L, 1L, 2L, 2L, 
        2L, 2L, 1L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 2L, 1L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
        1L, 2L, 2L, 2L, 2L, 2L, 1L, 2L, 1L, 1L, 1L, 1L, 2L, 2L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 
        1L), .Label = c("Low", "High"), class = "factor", label = "Education level")
    descr:::crosstab(dep = opinion, indep = educ, xlab = "Education", ylab = "Opinion")
}





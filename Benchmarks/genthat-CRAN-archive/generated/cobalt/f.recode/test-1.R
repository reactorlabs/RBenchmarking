

genthat_extracted_call <- function() {
    cobalt:::f.recode(f = structure(c(2L, 1L, 3L, 6L, 7L, 8L, 4L, 5L, 9L, 10L), .Label = c("age", "distance", "educ", "married", 
        "nodegree", "race_black", "race_hispan", "race_white", "re74", "re75"), class = "factor"), `Propensity Score` = "distance", 
        Age = "age", `Years of Education` = "educ", Black = "race_black", Hispanic = "race_hispan", White = "race_white", 
        Married = "married", `No Degree` = "nodegree", `Earnings 1974` = "re74", `Earnings 1975` = "re75")
}





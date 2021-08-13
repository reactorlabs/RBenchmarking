library(car)

function_to_run <- function() {
    x <- structure(list(Estimate = 2.68465257169288, SE = 0.318985781841486, `2.5 %` = 2.05945192770322, `97.5 %` = 3.30985321568255), 
        class = c("deltaMethod", "data.frame"), row.names = "t1/t2")
    car:::print.deltaMethod(x = x)
}





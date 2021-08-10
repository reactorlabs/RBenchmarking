library(car)

function_to_run <- function() {
    rhs <- NULL
    hypothesis.matrix <- c("typeprof", "typewc", "income", "education", "typeprof:income", "typewc:income", "typeprof:education", 
        "typewc:education")
    b <- structure(c(-3.95054285747495, 32.0078058559505, -7.04320281454587, 0.783410908118913, 0.319622851232398, -0.369142561044299, 
        -0.360308370015005, 0.0185910714723714, 0.106770922340873), names = c("(Intercept)", "typeprof", "typewc", "income", 
        "education", "typeprof:income", "typewc:income", "typeprof:education", "typewc:education"))
    car:::makeHypothesis(cnames = names(b), hypothesis = hypothesis.matrix, rhs = rhs)
}







genthat_extracted_call <- function() {
    regsubsets <- leaps::regsubsets
    Ericksen <- carData::Ericksen
    car:::subsets.regsubsets(object = regsubsets(undercount ~ ., data = Ericksen), legend = c(3.5, -37))
}





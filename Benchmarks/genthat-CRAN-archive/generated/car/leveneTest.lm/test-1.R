

genthat_extracted_call <- function() {
    Moore <- carData::Moore
    lm <- stats::lm
    car:::leveneTest.lm(y = lm(conformity ~ fcategory * partner.status, data = Moore))
}





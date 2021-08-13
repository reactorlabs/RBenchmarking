

genthat_extracted_call <- function() {
    Moore <- carData::Moore
    car:::leveneTest.formula(y = conformity ~ fcategory * partner.status, data = Moore, center = mean, trim = 0.1)
}





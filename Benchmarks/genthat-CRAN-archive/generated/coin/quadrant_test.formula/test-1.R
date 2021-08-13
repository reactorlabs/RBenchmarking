

genthat_extracted_call <- function() {
    USJudgeRatings <- datasets::USJudgeRatings
    coin:::quadrant_test.formula(formula = CONT ~ INTG, data = USJudgeRatings)
}





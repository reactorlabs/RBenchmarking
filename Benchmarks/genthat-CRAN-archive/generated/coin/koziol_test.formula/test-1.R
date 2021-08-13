

genthat_extracted_call <- function() {
    USJudgeRatings <- datasets::USJudgeRatings
    coin:::koziol_test.formula(formula = CONT ~ INTG, data = USJudgeRatings)
}





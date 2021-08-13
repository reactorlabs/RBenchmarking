

genthat_extracted_call <- function() {
    USJudgeRatings <- datasets::USJudgeRatings
    coin:::spearman_test.formula(formula = CONT ~ INTG, data = USJudgeRatings)
}





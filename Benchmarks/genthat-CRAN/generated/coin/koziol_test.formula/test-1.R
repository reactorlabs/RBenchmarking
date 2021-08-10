library(coin)

function_to_run <- function() {
    USJudgeRatings <- datasets::USJudgeRatings
    coin:::koziol_test.formula(formula = CONT ~ INTG, data = USJudgeRatings)
}





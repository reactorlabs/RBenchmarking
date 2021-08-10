library(coin)

function_to_run <- function() {
    USJudgeRatings <- datasets::USJudgeRatings
    coin:::fisyat_test.formula(formula = CONT ~ INTG, data = USJudgeRatings)
}





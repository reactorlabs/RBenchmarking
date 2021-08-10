library(caret)

function_to_run <- function() {
    rnorm <- stats::rnorm
    caret:::resampleSummary(obs = rnorm(10), resampled = matrix(rnorm(50), ncol = 5))
}





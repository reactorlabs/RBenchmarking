

genthat_extracted_call <- function() {
    rnorm <- stats::rnorm
    caret:::resampleSummary(obs = rnorm(10), resampled = matrix(rnorm(50), ncol = 5))
}





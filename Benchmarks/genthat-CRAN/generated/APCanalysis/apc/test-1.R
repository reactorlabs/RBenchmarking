

genthat_extracted_call <- function() {
    PB12response <- APCanalysis::PB12response
    PB12matrix <- APCanalysis::PB12matrix
    APCanalysis:::apc(y = PB12response, x = PB12matrix, maxsize = 6, level = 0.2, method = 2, reps = 10000)
}





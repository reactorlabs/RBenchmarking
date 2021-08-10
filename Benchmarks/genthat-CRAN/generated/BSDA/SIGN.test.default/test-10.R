library(BSDA)

function_to_run <- function() {
    Malpract <- BSDA::Malpract
    BSDA:::SIGN.test.default(x = Malpract$award, conf.level = 0.9)
}





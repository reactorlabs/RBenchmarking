

genthat_extracted_call <- function() {
    Malpract <- BSDA::Malpract
    BSDA:::SIGN.test.default(x = Malpract$award, conf.level = 0.9)
}





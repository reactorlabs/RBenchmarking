

genthat_extracted_call <- function() {
    Ornstein <- carData::Ornstein
    lm <- stats::lm
    car:::slp(lm(interlocks + 1 ~ assets + sector + nation, data = Ornstein))
}







genthat_extracted_call <- function() {
    lm <- stats::lm
    Hartnagel <- carData::Hartnagel
    car:::durbinWatsonTest.lm(model = lm(fconvict ~ tfr + partic + degrees + mconvict, data = Hartnagel))
}





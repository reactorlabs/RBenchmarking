

genthat_extracted_call <- function() {
    as.ffdf <- ff::as.ffdf
    airquality <- datasets::airquality
    ffbase:::transform.ffdf(`_data` = as.ffdf(airquality), Ozone = -Ozone)
}





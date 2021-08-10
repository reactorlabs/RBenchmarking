library(ffbase)

function_to_run <- function() {
    as.ffdf <- ff::as.ffdf
    airquality <- datasets::airquality
    ffbase:::transform.ffdf(`_data` = as.ffdf(airquality), Ozone = -Ozone)
}





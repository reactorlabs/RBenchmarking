library(assertive.data.us)

function_to_run <- function() {
    zip_codes <- structure(c("90210", "20500", "22313-1450", "223131450", "09901", NA), names = c("Beverley Hills", "The White House", 
        "USPTO", "No hyphen", "Bad area prefix", "Missing"))
    assertive.data.us:::assert_any_are_us_zip_codes(x = zip_codes)
}





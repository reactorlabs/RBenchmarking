library(assertive.data.us)

function_to_run <- function() {
    phone_numbers <- c("12345678901", "+12345678901", "0012345678901", "2345678901", "10345678901", "11345678901", "12335678901", 
        "12340678901", "12341678901", "12345118901", "1234567", "12345678")
    assertive.data.us:::is_us_telephone_number(x = phone_numbers)
}





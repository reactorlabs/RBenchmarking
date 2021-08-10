library(assertive.data.uk)

function_to_run <- function() {
    licences <- c("A 1", "AA 9999", "A 01", "S0", "G0", "RG0", "LM0", "AAA 1", "AAA 999", "III 1", "QQQ 1", "ZZZ 1", "AAA 01", 
        "1 AAA", "9999 AAA", "1 III", "1 QQQ", "1 ZZZ", "01 AAA", "AAA 1A", "AAA 999A", "AAA 1I", "AAA 1O", "AAA 1Q", "AAA 1U", 
        "AAA 1Z", "AAA 01A", "A1 AAA", "A999 AAA", "I1 AAA", "O1 AAA", "U1 AAA", "Z1 AAA", "A01 AAA", "AA00 AAA", "AA99 AAA", 
        "II00 AAA", "QQ00 AAA", "ZZ00 AAA", "AA00 III", "AA00 QQQ")
    assertive.data.uk:::assert_any_are_uk_car_licences(x = licences)
}





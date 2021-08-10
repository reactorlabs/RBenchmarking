library(assertive.data.uk)

function_to_run <- function() {
    assertive.data.uk:::is_uk_national_insurance_number(x = c("AA 00 00 00 A", "AA 00 00 00", "AA000000A", "ZZ 99 99 99 M", 
        "ZZ 99 99 99", "ZZ999999M", "DA 00 00 00", "FA 00 00 00", "IA 00 00 00", "QA 00 00 00", "UA 00 00 00", "VA 00 00 00", 
        "AD 00 00 00", "AF 00 00 00", "AI 00 00 00", "AO 00 00 00", "AQ 00 00 00", "AU 00 00 00", "AV 00 00 00", "AA 00 00 00 E", 
        "AA 00 00 00 G", "AA 00 00 00 H", "AA 00 00 00 I", "AA 00 00 00 J", "AA 00 00 00 K", "AA 00 00 00 L", "AA 00 00 00 N", 
        "AA 00 00 00 O", "AA 00 00 00 P", "AA 00 00 00 Q", "AA 00 00 00 R", "AA 00 00 00 S", "AA 00 00 00 T", "AA 00 00 00 U", 
        "AA 00 00 00 V", "AA 00 00 00 W", "AA 00 00 00 X", "AA 00 00 00 Y", "AA 00 00 00 Z"))
}





library(EffectLiteR)

function_to_run <- function() {
    relfreq <- c("relfreq00", "relfreq01", "relfreq10", "relfreq11", "relfreq20", "relfreq21")
    observed.freq <- structure(c(0.1665, 0.1765, 0.152, 0.1555, 0.1865, 0.163), names = c("00", "01", "10", "11", "20", "21"))
    groupw <- c("gw00", "gw01", "gw10", "gw11", "gw20", "gw21")
    fixed.cell <- TRUE
    EffectLiteR:::create_syntax_group_freq(fixed.cell = fixed.cell, relfreq = relfreq, observed.freq = observed.freq, groupw = groupw)
}





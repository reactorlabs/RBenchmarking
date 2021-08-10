library(bpcp)

function_to_run <- function() {
    bpcp:::betaMeldTest(betaParms1 = list(alower = 2, blower = 22 + 1, aupper = 2 + 1, bupper = 22), betaParms2 = list(alower = 4, 
        blower = 5 + 1, aupper = 4 + 1, bupper = 5), parmtype = "oddsratio", alternative = "greater", estimate1 = 2/24, estimate2 = 4/9)
}





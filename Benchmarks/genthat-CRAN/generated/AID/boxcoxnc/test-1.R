library(AID)

function_to_run <- function() {
    textile <- structure(list(textile = c(674L, 370L, 292L, 338L, 266L, 210L, 170L, 118L, 90L, 1414L, 1198L, 634L, 1022L, 
        620L, 438L, 442L, 332L, 220L, 3636L, 3184L, 2000L, 1568L, 1070L, 566L, 1140L, 884L, 360L)), class = "data.frame", 
        row.names = c(NA, -27L))
    AID:::boxcoxnc(data = textile[, 1], method = "sf")
}





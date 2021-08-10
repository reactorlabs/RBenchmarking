library(binsmooth)

function_to_run <- function() {
    m <- 84294L
    bEdges <- c(9999.5, 14999.5, 19999.5, 24999.5, 29999.5, 34999.5, 39999.5, 44999.5, 49999.5, 59999.5, 74999.5, 99999.5, 
        124999.5, 149999.5, 199999.5, NA)
    bCounts <- c(7181L, 6690L, 6677L, 6598L, 6150L, 6759L, 6541L, 6293L, 6538L, 11384L, 15359L, 16912L, 12527L, 8774L, 8578L, 
        8832L)
    binsmooth:::stepbinsNotail(bEdges = bEdges, bCounts = bCounts, m = m)
}





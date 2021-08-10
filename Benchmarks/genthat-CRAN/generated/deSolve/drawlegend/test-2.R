library(deSolve)

function_to_run <- function() {
    parleg <- c(0.8704, 0.9004, 0.241885714285714, 0.805542857142857)
    dotmain <- list(xlab = "x", ylab = "y", mfrow = 2, main = "Prey", zlim = c(0, 1), col = c("#00007F", "#000089", "#000093", 
        "#00009E", "#0000A8", "#0000B2", "#0000BD", "#0000C7", "#0000D1", "#0000DC", "#0000E6", "#0000F0", "#0000FB", "#0006FF", 
        "#0010FF", "#001AFF", "#0025FF", "#002FFF", "#0039FF", "#0043FF", "#004EFF", "#0058FF", "#0062FF", "#006DFF", "#0077FF", 
        "#0081FF", "#008BFF", "#0096FF", "#00A0FF", "#00AAFF", "#00B5FF", "#00BFFF", "#00C9FF", "#00D4FF", "#00DEFF", "#00E9FF", 
        "#00F3FF", "#00FDFF", "#08FFF5", "#13FFEB", "#1DFFE1", "#27FFD6", "#32FFCC", "#3CFFC2", "#46FFB7", "#50FFAD", "#5BFFA3", 
        "#65FF98", "#6FFF8E", "#79FF84", "#84FF79", "#8EFF6F", "#98FF65", "#A3FF5B", "#ADFF50", "#B7FF46", "#C2FF3C", "#CCFF32", 
        "#D6FF27", "#E1FF1D", "#EBFF13", "#F5FF08", "#FFFD00", "#FFF300", "#FFE900", "#FFDE00", "#FFD400", "#FFC900", "#FFBF00", 
        "#FFB500", "#FFAA00", "#FFA000", "#FF9600", "#FF8B00", "#FF8100", "#FF7700", "#FF6D00", "#FF6200", "#FF5800", "#FF4E00", 
        "#FF4300", "#FF3900", "#FF2F00", "#FF2500", "#FF1A00", "#FF1000", "#FF0600", "#FB0000", "#F00000", "#E60000", "#DC0000", 
        "#D10000", "#C70000", "#BD0000", "#B20000", "#A80000", "#9E0000", "#930000", "#890000", "#7F0000"))
    deSolve:::drawlegend(parleg = parleg, dots = dotmain)
}





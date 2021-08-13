library(circular)

function_to_run <- function() {
    data1 <- structure(c(0.275795437594559, 5.69022700779722, 5.38612314460037, 0.242893462832318, 0.519830181485373, 0.584426526802381, 
        0.477415043955382, 0.980195561339506, 0.00662878570828423, 5.50195408784447), circularp = list(type = "angles", units = "radians", 
        template = "none", modulo = "asis", zero = 0, rotation = "counter"), class = c("circular", "numeric"))
    circular:::plot.edf(x = data1, xlab = "Data", ylab = "EDF", main = "Plots of Two EDF's")
}





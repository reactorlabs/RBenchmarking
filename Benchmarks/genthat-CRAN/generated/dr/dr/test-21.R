library(dr)

function_to_run <- function() {
    dr.slices.arc <- dr::dr.slices.arc
    ais <- dr::ais
    dr:::dr(formula = LBM ~ log(SSF) + log(Wt) + log(Hg) + log(Ht) + log(WCC) + log(RCC) + log(Hc) + log(Ferr), data = ais, 
        slice.function = dr.slices.arc, nslices = 8, chi2approx = "wood", numdir = 4, method = "save")
}





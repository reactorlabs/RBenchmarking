library(FactoClass)

function_to_run <- function() {
    tvalp <- structure(list(Eigenvalue = c(570.926595957693, 376.13570046507, 253.69831857288, 171.303935955185, 31.6065270206944), 
        CumInertia = c(570.926595957693, 947.062296422763, 1200.76061499564, 1372.06455095083, 1403.67107797152), Percent = c(40.67381631762, 
            26.7965698209464, 18.0739150755678, 12.2039941296461, 2.25170465621973), CumPercent = c(40.67381631762, 67.4703861385664, 
            85.5443012141342, 97.7482953437803, 100)), class = "data.frame", row.names = c("Ax1", "Ax2", "Ax3", "Ax4", "Ax5"))
    job <- "Bogota"
    FactoClass:::latex(obj = tvalp, job = job, tit = "Eigenvalues * 1000", lab = "eigenvalues", append = FALSE, dec = 1)
}





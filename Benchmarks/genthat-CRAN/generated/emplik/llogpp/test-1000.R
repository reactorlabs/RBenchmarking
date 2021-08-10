library(emplik)

function_to_run <- function() {
    n <- 8L
    arg <- structure(c(4.44754592362731, 6.28967526246868, 11.8160632789928, 15.5003219566755, 17.3424512955169, 19.1845806343583, 
        19.1845806343583, 22.868839312041), .Dim = c(8L, 1L))
    emplik:::llogpp(z = arg, eps = 1/n)
}





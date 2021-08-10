library(emplik)

function_to_run <- function() {
    n <- 8L
    arg <- structure(c(27.0067050478551, 25.0325118206148, 19.109932138894, 15.1615456844134, 13.1873524571731, 11.2131592299328, 
        11.2131592299328, 7.26477277545219), .Dim = c(8L, 1L))
    emplik:::llogp(z = arg, eps = 1/n)
}





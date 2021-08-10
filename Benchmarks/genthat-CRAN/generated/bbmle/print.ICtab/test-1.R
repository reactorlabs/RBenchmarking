library(bbmle)

function_to_run <- function() {
    x <- structure(list(dAIC = c(0, 4.13267078980449, 5.45564771003328), df = c(4, 2, 3)), row.names = c("C", "A", "B"), 
        class = "ICtab")
    bbmle:::print.ICtab(x = x)
}





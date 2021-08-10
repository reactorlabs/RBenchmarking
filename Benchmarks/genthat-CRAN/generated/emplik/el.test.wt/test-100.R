library(emplik)

function_to_run <- function() {
    wd1new <- c(1.68910433405394, 1.62641880051172, 1.49211939713584, 1.43057768690324, 1.78737287607565, 3.4650837019362, 
        1.64298899309526)
    mu <- 3.5
    funxd1 <- c(1, 1.5, 3, 4, 4.5, 5, 6)
    emplik:::el.test.wt(x = funxd1, wt = wd1new, mu = mu)
}





library(coin)

function_to_run <- function() {
    trafo <- coin::trafo
    logrank_trafo <- coin::logrank_trafo
    hohnloser <- coin::hohnloser
    coin:::maxstat_test.formula(formula = Surv(time, event) ~ EF, data = hohnloser, ytrafo = function(data) trafo(data, surv_trafo = function(y) logrank_trafo(y, 
        ties.method = "Hothorn-Lausen")))
}





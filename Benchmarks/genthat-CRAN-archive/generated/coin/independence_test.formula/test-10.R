library(coin)

function_to_run <- function() {
    mercuryfish <- coin::mercuryfish
    coin:::independence_test.formula(formula = mercury + abnormal + ccells ~ group, data = mercuryfish)
}





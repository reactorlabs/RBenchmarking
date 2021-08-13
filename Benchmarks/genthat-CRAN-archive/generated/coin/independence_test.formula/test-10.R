

genthat_extracted_call <- function() {
    mercuryfish <- coin::mercuryfish
    coin:::independence_test.formula(formula = mercury + abnormal + ccells ~ group, data = mercuryfish)
}





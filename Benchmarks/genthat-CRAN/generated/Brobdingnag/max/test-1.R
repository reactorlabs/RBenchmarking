library(Brobdingnag)

function_to_run <- function() {
    cbrob <- Brobdingnag::cbrob
    brob <- Brobdingnag::brob
    Brobdingnag:::max(x = cbrob(1:10, brob(NA, FALSE)))
}





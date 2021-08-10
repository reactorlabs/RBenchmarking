library(EffectLiteR)

function_to_run <- function() {
    nk <- 2L
    ng <- 3L
    gammas <- structure(c("g000", "g001", "g010", "g011", "g100", "g101", "g110", "g111", "g200", "g201", "g210", "g211"), 
        .Dim = c(2L, 2L, 3L))
    Ezgk <- c("Ez1gk0", "Ez1gk1")
    Egxgk <- c("Eg1gk0", "Eg2gk0", "Eg1gk1", "Eg2gk1")
    EffectLiteR:::create_syntax_Egxgk(ng = ng, nk = nk, Egxgk = Egxgk, Ezgk = Ezgk, gammas = gammas)
}





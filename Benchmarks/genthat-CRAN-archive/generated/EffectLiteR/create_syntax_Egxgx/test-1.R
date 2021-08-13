

genthat_extracted_call <- function() {
    Pkgx <- c("Pk0gx0", "Pk1gx0", "Pk0gx1", "Pk1gx1", "Pk0gx2", "Pk1gx2")
    nz <- 1L
    nk <- 2L
    ng <- 3L
    gammas <- structure(c("g000", "g001", "g010", "g011", "g100", "g101", "g110", "g111", "g200", "g201", "g210", "g211"), 
        .Dim = c(2L, 2L, 3L))
    Ezkgx <- c("Ez1k0gx0", "Ez1k1gx0", "Ez1k0gx1", "Ez1k1gx1", "Ez1k0gx2", "Ez1k1gx2")
    Ezgx <- c("Ez1gx0", "Ez1gx1", "Ez1gx2")
    Egxgx <- c("Eg1gx0", "Eg2gx0", "Eg1gx1", "Eg2gx1", "Eg1gx2", "Eg2gx2")
    EffectLiteR:::create_syntax_Egxgx(ng = ng, nk = nk, nz = nz, Pkgx = Pkgx, Ezgx = Ezgx, Ezkgx = Ezkgx, Egxgx = Egxgx, 
        gammas = gammas)
}





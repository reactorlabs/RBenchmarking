library(elo)

function_to_run <- function() {
    mf <- structure(list(elo.A = c("Blundering Baboons", "Defense-less Dogs", "Fabulous Frogs", "Helpless Hyenas", "Cunning Cats", 
        "Defense-less Dogs", "Gallivanting Gorillas", "Helpless Hyenas", "Defense-less Dogs", "Cunning Cats", "Helpless Hyenas", 
        "Gallivanting Gorillas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas", "Fabulous Frogs", 
        "Elegant Emus", "Gallivanting Gorillas", "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Helpless Hyenas", 
        "Gallivanting Gorillas", "Fabulous Frogs", "Elegant Emus", "Athletic Armadillos", "Cunning Cats", "Elegant Emus", 
        "Gallivanting Gorillas", "Athletic Armadillos", "Blundering Baboons", "Fabulous Frogs", "Blundering Baboons", "Athletic Armadillos", 
        "Fabulous Frogs", "Elegant Emus", "Athletic Armadillos", "Blundering Baboons", "Defense-less Dogs", "Blundering Baboons", 
        "Athletic Armadillos", "Cunning Cats", "Cunning Cats", "Defense-less Dogs", "Athletic Armadillos", "Blundering Baboons", 
        "Defense-less Dogs", "Cunning Cats", "Blundering Baboons", "Athletic Armadillos"), elo.B = c("Athletic Armadillos", 
        "Cunning Cats", "Elegant Emus", "Gallivanting Gorillas", "Athletic Armadillos", "Blundering Baboons", "Elegant Emus", 
        "Fabulous Frogs", "Athletic Armadillos", "Blundering Baboons", "Elegant Emus", "Fabulous Frogs", "Athletic Armadillos", 
        "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", "Athletic Armadillos", "Blundering Baboons", "Defense-less Dogs", 
        "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", "Athletic Armadillos", "Blundering Baboons", "Cunning Cats", 
        "Defense-less Dogs", "Blundering Baboons", "Defense-less Dogs", "Fabulous Frogs", "Helpless Hyenas", "Cunning Cats", 
        "Defense-less Dogs", "Helpless Hyenas", "Cunning Cats", "Defense-less Dogs", "Gallivanting Gorillas", "Helpless Hyenas", 
        "Elegant Emus", "Fabulous Frogs", "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Helpless Hyenas", "Elegant Emus", 
        "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", 
        "Helpless Hyenas"), wins.A = c(0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 
        0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1), group = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
        TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
        TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
        TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE), home.field = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), weights = c(1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), adj.A = c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), adj.B = c(0, 0, 0, 0, 0, 0, 
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
        0, 0, 0, 0, 0, 0, 0)), row.names = c(NA, 51L), class = "data.frame", terms = score(points.Home, points.Visitor) ~ 
        team.Home + team.Visitor, outcome = "score")
    elo:::mf_to_wide(mf = mf)
}







genthat_extracted_call <- function() {
    mf <- structure(list(elo.A = c("Blundering Baboons", "Defense-less Dogs", "Fabulous Frogs", "Helpless Hyenas", "Cunning Cats", 
        "Defense-less Dogs", "Gallivanting Gorillas", "Helpless Hyenas", "Defense-less Dogs", "Cunning Cats", "Helpless Hyenas", 
        "Gallivanting Gorillas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas", "Fabulous Frogs", 
        "Elegant Emus", "Helpless Hyenas", "Gallivanting Gorillas", "Gallivanting Gorillas", "Helpless Hyenas", "Elegant Emus", 
        "Fabulous Frogs", "Helpless Hyenas", "Gallivanting Gorillas", "Fabulous Frogs", "Elegant Emus", "Athletic Armadillos", 
        "Cunning Cats", "Elegant Emus", "Gallivanting Gorillas", "Athletic Armadillos", "Blundering Baboons", "Elegant Emus", 
        "Fabulous Frogs", "Blundering Baboons", "Athletic Armadillos", "Fabulous Frogs", "Elegant Emus", "Athletic Armadillos", 
        "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", "Blundering Baboons", "Athletic Armadillos", "Defense-less Dogs", 
        "Cunning Cats", "Cunning Cats", "Defense-less Dogs", "Athletic Armadillos", "Blundering Baboons", "Defense-less Dogs", 
        "Cunning Cats", "Blundering Baboons", "Athletic Armadillos"), elo.B = c("Athletic Armadillos", "Cunning Cats", "Elegant Emus", 
        "Gallivanting Gorillas", "Athletic Armadillos", "Blundering Baboons", "Elegant Emus", "Fabulous Frogs", "Athletic Armadillos", 
        "Blundering Baboons", "Elegant Emus", "Fabulous Frogs", "Athletic Armadillos", "Blundering Baboons", "Cunning Cats", 
        "Defense-less Dogs", "Athletic Armadillos", "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", "Athletic Armadillos", 
        "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", "Athletic Armadillos", "Blundering Baboons", "Cunning Cats", 
        "Defense-less Dogs", "Blundering Baboons", "Defense-less Dogs", "Fabulous Frogs", "Helpless Hyenas", "Cunning Cats", 
        "Defense-less Dogs", "Gallivanting Gorillas", "Helpless Hyenas", "Cunning Cats", "Defense-less Dogs", "Gallivanting Gorillas", 
        "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas", "Elegant Emus", 
        "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", 
        "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas"), wins.A = c(0, 1, 
        1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0.5, 1, 0.5, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0.5, 0, 0, 1, 
        1, 1, 1, 1, 0.5, 0, 0, 1, 0.5, 1, 1, 0, 1, 1, 0, 0, 0, 1), k = structure(c(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 
        20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 
        20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 
        20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 
        20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20), .Dim = c(56L, 2L)), group = c(TRUE, TRUE, TRUE, TRUE, 
        TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
        TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 
        TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE), regress = structure(c("First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season"), 
        to = 1500, by = 0.2, regress.unused = TRUE, class = c("elo.regress", "character")), adj.A = c(30, 30, 30, 30, 30, 
        30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 
        30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30), adj.B = c(0, 0, 0, 0, 0, 
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)), row.names = c(NA, 56L), class = "data.frame", terms = score(points.Home, 
        points.Visitor) ~ adjust(team.Home, 30) + team.Visitor + regress(half, 1500, 0.2), outcome = "score")
    initial.elos <- NULL
    elo:::check_elo_run_vars(mf = mf, initial.elos = initial.elos)
}





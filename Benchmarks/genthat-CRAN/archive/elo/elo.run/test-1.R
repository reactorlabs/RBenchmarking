library(elo)

function_to_run <- function() {
    tournament <- structure(list(team.Home = c("Blundering Baboons", "Defense-less Dogs", "Fabulous Frogs", "Helpless Hyenas", 
        "Cunning Cats", "Defense-less Dogs", "Gallivanting Gorillas", "Helpless Hyenas", "Defense-less Dogs", "Cunning Cats", 
        "Helpless Hyenas", "Gallivanting Gorillas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas", 
        "Fabulous Frogs", "Elegant Emus", "Helpless Hyenas", "Gallivanting Gorillas", "Gallivanting Gorillas", "Helpless Hyenas", 
        "Elegant Emus", "Fabulous Frogs", "Helpless Hyenas", "Gallivanting Gorillas", "Fabulous Frogs", "Elegant Emus", "Athletic Armadillos", 
        "Cunning Cats", "Elegant Emus", "Gallivanting Gorillas", "Athletic Armadillos", "Blundering Baboons", "Elegant Emus", 
        "Fabulous Frogs", "Blundering Baboons", "Athletic Armadillos", "Fabulous Frogs", "Elegant Emus", "Athletic Armadillos", 
        "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", "Blundering Baboons", "Athletic Armadillos", "Defense-less Dogs", 
        "Cunning Cats", "Cunning Cats", "Defense-less Dogs", "Athletic Armadillos", "Blundering Baboons", "Defense-less Dogs", 
        "Cunning Cats", "Blundering Baboons", "Athletic Armadillos"), team.Visitor = c("Athletic Armadillos", "Cunning Cats", 
        "Elegant Emus", "Gallivanting Gorillas", "Athletic Armadillos", "Blundering Baboons", "Elegant Emus", "Fabulous Frogs", 
        "Athletic Armadillos", "Blundering Baboons", "Elegant Emus", "Fabulous Frogs", "Athletic Armadillos", "Blundering Baboons", 
        "Cunning Cats", "Defense-less Dogs", "Athletic Armadillos", "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", 
        "Athletic Armadillos", "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", "Athletic Armadillos", "Blundering Baboons", 
        "Cunning Cats", "Defense-less Dogs", "Blundering Baboons", "Defense-less Dogs", "Fabulous Frogs", "Helpless Hyenas", 
        "Cunning Cats", "Defense-less Dogs", "Gallivanting Gorillas", "Helpless Hyenas", "Cunning Cats", "Defense-less Dogs", 
        "Gallivanting Gorillas", "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas", 
        "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", 
        "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas"), points.Home = c(14, 
        21, 15, 13, 22, 18, 20, 23, 25, 23, 17, 18, 10, 20, 16, 19, 27, 24, 17, 17, 19, 16, 21, 12, 13, 20, 25, 11, 15, 19, 
        16, 21, 24, 14, 13, 16, 13, 19, 19, 21, 22, 14, 16, 12, 13, 22, 17, 22, 18, 11, 25, 17, 10, 14, 17, 19), points.Visitor = c(22, 
        18, 11, 15, 13, 20, 22, 10, 16, 18, 13, 13, 22, 13, 17, 13, 20, 14, 17, 6, 19, 11, 17, 5, 22, 13, 19, 10, 12, 9, 
        19, 18, 13, 13, 13, 23, 14, 10, 12, 19, 18, 11, 16, 19, 14, 16, 17, 17, 14, 19, 14, 8, 11, 15, 19, 12), week = c(1, 
        1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 
        10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14), half = c("First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season"), home.field = c(30, 
        30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 
        30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30)), row.names = c(NA, 
        -56L), class = "data.frame")
    elo:::elo.run(formula = score(points.Home, points.Visitor) ~ adjust(team.Home, 30) + team.Visitor + regress(half, 1500, 
        0.2), data = tournament, k = 20)
}





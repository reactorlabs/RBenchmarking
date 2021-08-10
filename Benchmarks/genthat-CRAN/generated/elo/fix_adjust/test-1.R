library(elo)

function_to_run <- function() {
    naaction <- NULL
    mf <- structure(list(`score(points.Home, points.Visitor)` = c(0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0.5, 
        1, 0.5, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0.5, 0, 0, 1, 1, 1, 1, 1, 0.5, 0, 0, 1, 0.5, 1, 1, 0, 1, 1, 0, 0, 
        0, 1), `adjust(team.Home, 30)` = structure(c("Blundering Baboons", "Defense-less Dogs", "Fabulous Frogs", "Helpless Hyenas", 
        "Cunning Cats", "Defense-less Dogs", "Gallivanting Gorillas", "Helpless Hyenas", "Defense-less Dogs", "Cunning Cats", 
        "Helpless Hyenas", "Gallivanting Gorillas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas", 
        "Fabulous Frogs", "Elegant Emus", "Helpless Hyenas", "Gallivanting Gorillas", "Gallivanting Gorillas", "Helpless Hyenas", 
        "Elegant Emus", "Fabulous Frogs", "Helpless Hyenas", "Gallivanting Gorillas", "Fabulous Frogs", "Elegant Emus", "Athletic Armadillos", 
        "Cunning Cats", "Elegant Emus", "Gallivanting Gorillas", "Athletic Armadillos", "Blundering Baboons", "Elegant Emus", 
        "Fabulous Frogs", "Blundering Baboons", "Athletic Armadillos", "Fabulous Frogs", "Elegant Emus", "Athletic Armadillos", 
        "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", "Blundering Baboons", "Athletic Armadillos", "Defense-less Dogs", 
        "Cunning Cats", "Cunning Cats", "Defense-less Dogs", "Athletic Armadillos", "Blundering Baboons", "Defense-less Dogs", 
        "Cunning Cats", "Blundering Baboons", "Athletic Armadillos"), adjust = c(30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 
        30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 
        30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30), class = c("elo.adjust", "character")), team.Visitor = c("Athletic Armadillos", 
        "Cunning Cats", "Elegant Emus", "Gallivanting Gorillas", "Athletic Armadillos", "Blundering Baboons", "Elegant Emus", 
        "Fabulous Frogs", "Athletic Armadillos", "Blundering Baboons", "Elegant Emus", "Fabulous Frogs", "Athletic Armadillos", 
        "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", "Athletic Armadillos", "Blundering Baboons", "Cunning Cats", 
        "Defense-less Dogs", "Athletic Armadillos", "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", "Athletic Armadillos", 
        "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", "Blundering Baboons", "Defense-less Dogs", "Fabulous Frogs", 
        "Helpless Hyenas", "Cunning Cats", "Defense-less Dogs", "Gallivanting Gorillas", "Helpless Hyenas", "Cunning Cats", 
        "Defense-less Dogs", "Gallivanting Gorillas", "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", 
        "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas", "Elegant Emus", 
        "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", 
        "Helpless Hyenas"), `regress(half, 1500, 0.2)` = structure(c("First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", "First Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", "Second Half of Season", 
        "Second Half of Season", "Second Half of Season", "Second Half of Season"), to = 1500, by = 0.2, regress.unused = TRUE, 
        class = c("elo.regress", "character"))), terms = score(points.Home, points.Visitor) ~ adjust(team.Home, 30) + team.Visitor + 
        regress(half, 1500, 0.2), row.names = c(NA, 56L), class = "data.frame")
    elo.cols <- 2:3
    elo:::fix_adjust(x = mf[[elo.cols[1]]], na.action = naaction)
}







genthat_extracted_call <- function() {
    elos <- structure(c(1556.06678430623, 1461.83735573885, 1528.17251003481, 1421.39406957537, 1509.8505555194, 1522.83213877547, 
        1505.18514174975, 1494.66144430011), names = c("Athletic Armadillos", "Blundering Baboons", "Cunning Cats", "Defense-less Dogs", 
        "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas"))
    all.teams <- c("Athletic Armadillos", "Blundering Baboons", "Cunning Cats", "Fabulous Frogs", "Gallivanting Gorillas", 
        "Helpless Hyenas")
    elo:::check_named_elos(init.elos = elos, teams = all.teams)
}





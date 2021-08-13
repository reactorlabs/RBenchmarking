

genthat_extracted_call <- function() {
    team.Home <- c("Blundering Baboons", "Defense-less Dogs", "Fabulous Frogs", "Helpless Hyenas", "Cunning Cats", "Defense-less Dogs", 
        "Gallivanting Gorillas", "Helpless Hyenas", "Defense-less Dogs", "Cunning Cats", "Helpless Hyenas", "Gallivanting Gorillas", 
        "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas", "Fabulous Frogs", "Elegant Emus", "Helpless Hyenas", 
        "Gallivanting Gorillas", "Gallivanting Gorillas", "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Helpless Hyenas", 
        "Gallivanting Gorillas", "Fabulous Frogs", "Elegant Emus", "Athletic Armadillos", "Cunning Cats", "Elegant Emus", 
        "Gallivanting Gorillas", "Athletic Armadillos", "Blundering Baboons", "Elegant Emus", "Fabulous Frogs", "Blundering Baboons", 
        "Athletic Armadillos", "Fabulous Frogs", "Elegant Emus", "Athletic Armadillos", "Blundering Baboons", "Cunning Cats", 
        "Defense-less Dogs", "Blundering Baboons", "Athletic Armadillos", "Defense-less Dogs", "Cunning Cats", "Cunning Cats", 
        "Defense-less Dogs", "Athletic Armadillos", "Blundering Baboons", "Defense-less Dogs", "Cunning Cats", "Blundering Baboons", 
        "Athletic Armadillos")
    home.field <- c(30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 
        30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 
        30)
    elo:::adjust(x = team.Home, adjustment = home.field)
}





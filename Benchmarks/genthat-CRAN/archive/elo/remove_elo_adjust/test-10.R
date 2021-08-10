library(elo)

function_to_run <- function() {
    mf <- structure(list(`score(points.Home, points.Visitor)` = c(0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0.5, 
        1, 0.5, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0.5, 0, 0, 1, 1, 1, 1, 1, 0.5, 0, 0, 1, 0.5, 1, 1, 0, 1, 1, 0, 0, 
        0, 1), team.Home = c("Blundering Baboons", "Defense-less Dogs", "Fabulous Frogs", "Helpless Hyenas", "Cunning Cats", 
        "Defense-less Dogs", "Gallivanting Gorillas", "Helpless Hyenas", "Defense-less Dogs", "Cunning Cats", "Helpless Hyenas", 
        "Gallivanting Gorillas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas", "Fabulous Frogs", 
        "Elegant Emus", "Helpless Hyenas", "Gallivanting Gorillas", "Gallivanting Gorillas", "Helpless Hyenas", "Elegant Emus", 
        "Fabulous Frogs", "Helpless Hyenas", "Gallivanting Gorillas", "Fabulous Frogs", "Elegant Emus", "Athletic Armadillos", 
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
        "Helpless Hyenas", "Elegant Emus", "Fabulous Frogs", "Gallivanting Gorillas", "Helpless Hyenas"), `k(20 * log(abs(points.Home - points.Visitor) + 1))` = structure(c(43.9444915467244, 
        27.7258872223978, 32.188758248682, 21.9722457733622, 46.0517018598809, 21.9722457733622, 21.9722457733622, 52.7811465923052, 
        46.0517018598809, 35.8351893845611, 32.188758248682, 35.8351893845611, 51.2989871492307, 41.5888308335967, 13.8629436111989, 
        38.9182029811063, 41.5888308335967, 47.9579054559674, 0, 49.69813299576, 0, 35.8351893845611, 32.188758248682, 41.5888308335967, 
        46.0517018598809, 41.5888308335967, 38.9182029811063, 13.8629436111989, 27.7258872223978, 47.9579054559674, 27.7258872223978, 
        27.7258872223978, 49.69813299576, 13.8629436111989, 0, 41.5888308335967, 13.8629436111989, 46.0517018598809, 41.5888308335967, 
        21.9722457733622, 32.188758248682, 27.7258872223978, 0, 41.5888308335967, 13.8629436111989, 38.9182029811063, 0, 
        35.8351893845611, 32.188758248682, 43.9444915467244, 49.69813299576, 46.0517018598809, 13.8629436111989, 13.8629436111989, 
        21.9722457733622, 41.5888308335967), class = c("elo.k", "numeric"))), terms = score(points.Home, points.Visitor) ~ 
        team.Home + team.Visitor + k(20 * log(abs(points.Home - points.Visitor) + 1)), row.names = c(NA, 56L), class = "data.frame")
    elo.cols <- 2:3
    elo:::remove_elo_adjust(x = mf[[elo.cols[1]]])
}





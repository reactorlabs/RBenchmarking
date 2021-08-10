library(archetypes)

function_to_run <- function() {
    jd <- structure(c(13.9, 18.8, 10.5, 32, 27.8, 13.4, 28, 15, 38.8, 171.1), .Dim = c(1L, 10L), .Dimnames = list(NULL, c("AnkleDiam", 
        "KneeDiam", "WristDiam", "Bitro", "Biil", "ElbowDiam", "ChestDiam", "ChestDp", "Biac", "Height")))
    archetypes:::skeletonplot(x = jd, skel.height = 190, xlim = c(-100, 200), mtext = FALSE, skel.lwd = 1)
}





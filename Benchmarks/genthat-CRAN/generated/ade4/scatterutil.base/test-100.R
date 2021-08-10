library(ade4)

function_to_run <- function() {
    ylim <- NULL
    yax <- 2
    xlim <- NULL
    xax <- 1
    sub <- ""
    possub <- "bottomleft"
    pixmap <- NULL
    origin <- c(0, 0)
    include.origin <- TRUE
    grid <- TRUE
    dfxy <- structure(list(score = c(-1.67020118153397, -0.642670103853205, -0.631357580770002, -0.46900641855419, -0.253312241306909, 
        -1.19288858581012, -0.556765545271467, -0.798695012998305, -1.37435746466752, -0.883330406176491, -0.943257320350712, 
        -1.14592644670272, 0.662963271567021, 0.353541101966899, 0.646620651484315, 0.842869209645258, 0.766597156485264, 
        0.751585199486171, 1.24050823978485, 1.08211494266133, 0.989038791789833, 1.35334340969438, 1.8725863334303), df...i. = c(1.82769757958589, 
        -0.523736696014799, 0.755113524048732, 0.260074729185428, 0.755113524048732, 1.12639262019621, 1.53892494924896, 
        0.755113524048732, 0.548847359522356, 0.961379688575109, 0.34258119499598, 1.20889908600676, -0.482483463109526, 
        -0.069951134056773, -0.771256093446454, -0.399976997298974, -0.647496394730629, -0.60624316182535, -0.97752225797283, 
        -0.97752225797283, -1.06002872378338, -1.80258691607834, -1.76133368317306)), class = "data.frame", row.names = c(NA, 
        -23L))
    csub <- 1
    contour <- NULL
    cgrid <- 1
    area <- NULL
    addaxes <- TRUE
    add.plot <- TRUE
    ade4:::scatterutil.base(dfxy = dfxy, xax = xax, yax = yax, xlim = xlim, ylim = ylim, grid = grid, addaxes = addaxes, 
        cgrid = cgrid, include.origin = include.origin, origin = origin, sub = sub, csub = csub, possub = possub, pixmap = pixmap, 
        contour = contour, area = area, add.plot = add.plot)
}







genthat_extracted_call <- function() {
    res <- structure(list(fi = structure(c(0.239767473136446, 0.189518958383072, 0.10330548680492, -0.0918118833493732, -0.224269920650726, 
        0.0475390901828867, 0.0740878384135639, 0.107109285203541, -0.029711901424966, 0.00166787208848225, 0.0631132948209885, 
        -0.196253875482298), .Dim = c(6L, 2L), .Dimnames = list(c("Rousseau", "Chateaubriand", "Hugo", "Zola", "Proust", 
        "Giraudoux"), NULL)), di = structure(c(0.0629774489750308, 0.0473898345634181, 0.0115548206902885, 0.00843220372146245, 
        0.054280285291844, 0.0407755487372378), .Dim = c(6L, 1L), .Dimnames = list(c("Rousseau", "Chateaubriand", "Hugo", 
        "Zola", "Proust", "Giraudoux"), NULL)), ci = structure(c(0.0610735719816765, 0.280728204827955, 0.151053409928561, 
        0.187627233763237, 0.308922331170672, 0.0105952483278983, 0.0186249729262363, 0.286394044533825, 0.0399092587277597, 
        0.000197766432227581, 0.0781408200207121, 0.576733137359238), .Dim = c(6L, 2L), .Dimnames = list(c("Rousseau", "Chateaubriand", 
        "Hugo", "Zola", "Proust", "Giraudoux"), NULL)), ri = structure(c(0.912841693493005, 0.757914348456717, 0.923599239663765, 
        0.999670098423209, 0.926616303474744, 0.0554245170305397, 0.0871583065069948, 0.242085651543283, 0.076400760336235, 
        0.000329901576791564, 0.0733836965252562, 0.94457548296946), .Dim = c(6L, 2L), .Dimnames = list(c("Rousseau", "Chateaubriand", 
        "Hugo", "Zola", "Proust", "Giraudoux"), NULL)), fj = structure(c(0.0489347573938776, -0.0973237797142424, 0.291400084347058, 
        -0.111530285585209, 0.0366513380009137, 0.0900507917816394), .Dim = 3:2, .Dimnames = list(c("PERIOD", "COMMA", "OTHER"), 
        NULL)), cj = structure(c(0.0399482501164818, 0.299924701414589, 0.66012704846893, 0.662792405527116, 0.135857300913912, 
        0.201350293558972), .Dim = 3:2, .Dimnames = list(c("PERIOD", "COMMA", "OTHER"), NULL)), rj = structure(c(0.161431348167726, 
        0.875793718695545, 0.912826595000081, 0.838568651832274, 0.124206281304454, 0.0871734049999189), .Dim = 3:2, .Dimnames = list(c("PERIOD", 
        "COMMA", "OTHER"), NULL)), dj = structure(c(0.0148336150839159, 0.0108152386751236, 0.0930231542579726), .Dim = c(3L, 
        1L), .Dimnames = list(c("PERIOD", "COMMA", "OTHER"), NULL)), t = c(76.1561673173366, 23.8438326826634), eigs = c(0.0178185612524766, 
        0.005578836332184), M = structure(c(0.0189297737255527, 0.139268648535985, 0.252206567103009, 0.396616445056707, 
        0.109440956215337, 0.0835376093634097), names = c("Rousseau", "Chateaubriand", "Hugo", "Zola", "Proust", "Giraudoux")), 
        W = structure(c(3.36406581991595, 1.77236458979854, 7.21903560500132), names = c("PERIOD", "COMMA", "OTHER")), c = structure(c(0.297259344356402, 
            0.564217997671499, 0.138522657972099), names = c("PERIOD", "COMMA", "OTHER")), pdq = structure(list(p = structure(c(1.79619692764026, 
            1.41976460077859, 0.773903964453857, -0.68780064549941, -1.68009837683745, 0.35613491109664, 0.991916497998201, 
            1.43402033798216, -0.397794372752606, 0.0223301135050173, 0.844985084144412, -2.62752242547997), .Dim = c(6L, 
            2L), .Dimnames = list(c("Rousseau", "Chateaubriand", "Hugo", "Zola", "Proust", "Giraudoux"), NULL)), q = structure(c(0.108972430631839, 
            -0.411367128589975, 0.302394697958136, -0.443870742346681, 0.276863024419481, 0.1670077179272), .Dim = 3:2, .Dimnames = list(c("PERIOD", 
            "COMMA", "OTHER"), NULL)), Dv = c(0.133486183751265, 0.0746916081777866), Dd = structure(c(0.133486183751265, 
            0, 0, 0.0746916081777866), .Dim = c(2L, 2L)), ng = 2L, rank = 2L, tau = c(76.1561673173366, 23.8438326826634), 
            eigs = c(0.0178185612524766, 0.005578836332184)), class = c("epSVD", "list")), X = structure(c(-0.00675737950135685, 
            -0.0268903363897003, 0.0244456937367686, -0.010745283711522, -0.0524533833950563, 0.0922918036059958, -0.0781202739375328, 
            -0.0483072690785464, -0.0507226083642992, 0.0382301629346314, 0.109731010972408, -0.0738914605443871, 0.0848776534388897, 
            0.0751976054682468, 0.0262769146275307, -0.0274848792231095, -0.0572776275773517, -0.0184003430616087), .Dim = c(6L, 
            3L), .Dimnames = list(c("Rousseau", "Chateaubriand", "Hugo", "Zola", "Proust", "Giraudoux"), c("PERIOD", "COMMA", 
            "OTHER"))), hellinger = FALSE, symmetric = TRUE), class = c("epCA", "list"))
    epPlotInfo <- structure(list(fi.col = structure(c("#305ABF", "#305ABF", "#305ABF", "#305ABF", "#305ABF", "#305ABF"), 
        .Dim = c(6L, 1L), .Dimnames = list(c("Rousseau", "Chateaubriand", "Hugo", "Zola", "Proust", "Giraudoux"), NULL)), 
        fi.pch = structure(c(21, 21, 21, 21, 21, 21), .Dim = c(6L, 1L)), fj.col = structure(c("mediumorchid4", "mediumorchid4", 
            "mediumorchid4"), .Dim = c(3L, 1L)), fj.pch = structure(c(21, 21, 21), .Dim = c(3L, 1L)), constraints = list(minx = -0.257910408748335, 
            miny = -0.225691956804642, maxx = 0.335110096999116, maxy = 0.123175677984072)), class = c("epGraphs", "list"))
    ExPosition:::epOutputHandler(res = res, epPlotInfo = epPlotInfo)
}





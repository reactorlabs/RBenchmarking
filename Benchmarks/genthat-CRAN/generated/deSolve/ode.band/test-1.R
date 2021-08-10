library(deSolve)

function_to_run <- function() {
    Aphid <- genthat::with_env(function(t, APHIDS, parameters) {
        deltax <- c(0.5 * delx, rep(delx, numboxes - 1), 0.5 * delx)
        Flux <- -D * diff(c(0, APHIDS, 0))/deltax
        dAPHIDS <- -diff(Flux)/delx + APHIDS * r
        list(dAPHIDS)
    }, env = list2env(list(r = 0.01, numboxes = 60, delx = 1, D = 0.3), parent = baseenv()))
    times <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 
        29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 
        58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
        87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 
        113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 
        136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 
        159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 
        182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200)
    state <- structure(c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), names = c("APHIDS1", "APHIDS2", 
        "APHIDS3", "APHIDS4", "APHIDS5", "APHIDS6", "APHIDS7", "APHIDS8", "APHIDS9", "APHIDS10", "APHIDS11", "APHIDS12", 
        "APHIDS13", "APHIDS14", "APHIDS15", "APHIDS16", "APHIDS17", "APHIDS18", "APHIDS19", "APHIDS20", "APHIDS21", "APHIDS22", 
        "APHIDS23", "APHIDS24", "APHIDS25", "APHIDS26", "APHIDS27", "APHIDS28", "APHIDS29", "APHIDS30", "APHIDS31", "APHIDS32", 
        "APHIDS33", "APHIDS34", "APHIDS35", "APHIDS36", "APHIDS37", "APHIDS38", "APHIDS39", "APHIDS40", "APHIDS41", "APHIDS42", 
        "APHIDS43", "APHIDS44", "APHIDS45", "APHIDS46", "APHIDS47", "APHIDS48", "APHIDS49", "APHIDS50", "APHIDS51", "APHIDS52", 
        "APHIDS53", "APHIDS54", "APHIDS55", "APHIDS56", "APHIDS57", "APHIDS58", "APHIDS59", "APHIDS60"))
    deSolve:::ode.band(y = state, times = times, func = Aphid, parms = 0, nspec = 1, names = "Aphid")
}





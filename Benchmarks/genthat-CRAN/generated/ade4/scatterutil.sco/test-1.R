

genthat_extracted_call <- function() {
    sub <- ""
    score <- c(-1.57102911046532, 1.26257438145501, -1.72280711611003, -1.93201476431227, -1.72423993978435, -2.33242148937513, 
        -0.757262019505202, 5.38885497358896, 3.72050392207588, 2.10151702536133, -0.431355239801641, -0.691622369740076, 
        -1.40822312418693, 7.2338374480968, 1.04901384311398, -0.776027228153885, -1.4484685807319, -2.21021217898943, -0.741579770556116, 
        0.407048046345708, 0.678951421025913, -1.04887366294131, -1.16541344026036, -1.88075102614966)
    reverse <- TRUE
    origin <- c(0, 0)
    lim <- NULL
    include.origin <- TRUE
    horizontal <- TRUE
    grid <- TRUE
    csub <- 1.25
    cgrid <- 1
    ade4:::scatterutil.sco(score = score, lim = lim, grid = grid, cgrid = cgrid, include.origin = include.origin, origin = origin, 
        sub = sub, csub = csub, horizontal = horizontal, reverse = reverse)
}







genthat_extracted_call <- function() {
    tbRatio <- 0.8
    tailShape <- "pareto"
    pIndex <- 1.160964
    numIterations <- 20
    nTail <- 16
    m <- 76091
    eps2 <- 0.75
    eps1 <- 0.25
    depth <- 3
    bEdges <- c(10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000, 60000, 75000, 1e+05, 125000, 150000, 2e+05, 
        NA)
    bCounts <- c(157532, 97369, 102673, 100888, 90835, 94191, 87688, 90481, 79816, 153581, 195430, 240948, 155139, 94527, 
        92166, 103217)
    binsmooth:::rsubbinsTail(bEdges = bEdges, bCounts = bCounts, m = m, eps1 = eps1, eps2 = eps2, depth = depth, tailShape = tailShape, 
        nTail = nTail, numIterations = numIterations, pIndex = pIndex, tbRatio = tbRatio)
}





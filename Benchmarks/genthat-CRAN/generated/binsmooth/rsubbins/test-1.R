

genthat_extracted_call <- function() {
    binedges <- c(10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000, 60000, 75000, 1e+05, 125000, 150000, 2e+05, 
        NA)
    bincounts <- c(157532, 97369, 102673, 100888, 90835, 94191, 87688, 90481, 79816, 153581, 195430, 240948, 155139, 94527, 
        92166, 103217)
    binsmooth:::rsubbins(bEdges = binedges, bCounts = bincounts, m = 76091, tailShape = "pareto")
}





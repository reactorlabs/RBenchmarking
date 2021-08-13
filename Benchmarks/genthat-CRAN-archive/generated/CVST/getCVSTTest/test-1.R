

genthat_extracted_call <- function() {
    setup <- structure(list(steps = 10, beta = 0.1, alpha = 0.01, similaritySignificance = 0.05, earlyStoppingSignificance = 0.05, 
        earlyStoppingWindow = 3, regressionSimilarityViaOutliers = FALSE), class = "CVST.setup")
    CVST:::getCVSTTest(steps = setup$steps, beta = setup$beta, alpha = setup$alpha)
}





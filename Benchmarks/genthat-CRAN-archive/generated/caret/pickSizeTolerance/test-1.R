

genthat_extracted_call <- function() {
    example2 <- structure(list(Rsquared = c(0.4, 0.6, 0.94, 0.95, 0.95, 0.95, 0.95), Variables = 1:7, PctLoss = c(57.8947368421053, 
        36.8421052631579, 1.05263157894737, 0, 0, 0, 0)), row.names = c(NA, -7L), class = "data.frame")
    caret:::pickSizeTolerance(x = example2, metric = "Rsquared", maximize = TRUE)
}





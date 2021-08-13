

genthat_extracted_call <- function() {
    x <- structure(list(Statistics = structure(list(LowerHinge = c(2, 4, 6, 4), Median = c(6, 9, 13, 15.5), UpperHinge = c(13, 
        14, 30, 24), `Hinge-Spread` = c(11, 10, 24, 20)), class = "data.frame", row.names = c("US", "UK", "CAN", "OTH")), 
        PowerTransformation = 0.153448715886128), class = "spreadLevelPlot")
    car:::print.spreadLevelPlot(x = x)
}







genthat_extracted_call <- function() {
    jocn.2005.fmri <- list(images = list(data = structure(list(Face = c(0, 4.52, 4.08, 4.08, 4.52, 3.97, 3.87, 3.73), House = c(4.52, 
        0, 2.85, 4.52, 4.52, 4.52, 4.08, 4.52), Cat = c(4.08, 2.85, 0, 1.61, 2.92, 2.81, 1.96, 3.17), Chair = c(4.08, 4.52, 
        1.61, 0, 2.82, 2.89, 2.91, 3.97), Shoes = c(4.52, 4.52, 2.92, 2.82, 0, 3.55, 3.26, 4.52), Scissors = c(3.97, 4.52, 
        2.81, 2.89, 3.55, 0, 2.09, 3.26), Bottle = c(3.87, 4.08, 1.96, 2.91, 3.26, 2.09, 0, 1.5), Scrambled = c(3.73, 4.52, 
        3.17, 3.97, 4.52, 3.26, 1.5, 0)), class = "data.frame", row.names = c("Face", "House", "Cat", "Chair", "Shoes", "Scissors", 
        "Bottle", "Scrambled"))), scans = list(data = structure(list(Face = c(0, 3.47, 1.79, 3, 2.67, 2.58, 2.22, 3.08), 
        House = c(3.47, 0, 3.39, 2.18, 2.86, 2.69, 2.89, 2.62), Cat = c(1.79, 3.39, 0, 2.18, 2.34, 2.09, 2.31, 2.88), Chair = c(3, 
            2.18, 2.18, 0, 1.73, 1.55, 1.23, 2.07), Shoes = c(2.67, 2.86, 2.34, 1.73, 0, 1.44, 1.29, 2.38), Scissors = c(2.58, 
            2.69, 2.09, 1.55, 1.44, 0, 1.19, 2.15), Bottle = c(2.22, 2.89, 2.31, 1.23, 1.29, 1.19, 0, 2.07), Scrambled = c(3.08, 
            2.62, 2.88, 2.07, 2.38, 2.15, 2.07, 0)), class = "data.frame", row.names = c("Face", "House", "Cat", "Chair", 
        "Shoes", "Scissors", "Bottle", "Scrambled"))))
    ExPosition:::epMDS(DATA = jocn.2005.fmri$images$data)
}





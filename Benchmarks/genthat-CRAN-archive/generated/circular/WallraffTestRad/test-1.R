

genthat_extracted_call <- function() {
    x <- structure(c(0.349065850398866, 0.174532925199433, 0.174532925199433, 0.0872664625997166, 0.0872664625997166, 0, 
        6.19591884457987, 6.19591884457987, 1.48352986419518, 1.48352986419518, 1.30899693899575, 0.610865238198015, 0.610865238198015, 
        0.436332312998582, 6.02138591938044, 5.75958653158129, 1.91986217719376), names = c("control1", "control2", "control3", 
        "control4", "control5", "control6", "control7", "control8", "experimental1", "experimental2", "experimental3", "experimental4", 
        "experimental5", "experimental6", "experimental7", "experimental8", "experimental9"))
    ref <- 0.872664625997165
    group <- structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L), .Label = c("control", "experimental"), 
        class = "factor")
    circular:::WallraffTestRad(x = x, group = group, ref = ref)
}





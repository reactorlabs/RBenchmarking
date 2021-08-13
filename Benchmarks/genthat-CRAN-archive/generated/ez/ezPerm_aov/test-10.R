

genthat_extracted_call <- function() {
    sim_data <- structure(list(subnum = structure(1:20, .Label = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", 
        "12", "13", "14", "15", "16", "17", "18", "19", "20"), class = "factor"), group = structure(c(2L, 1L, 2L, 1L, 1L, 
        1L, 1L, 1L, 2L, 2L, 1L, 1L, 2L, 1L, 2L, 2L, 2L, 2L, 1L, 2L), .Label = c("Control", "Treatment"), class = "factor"), 
        mrt = c(406.177129930844, 404.461145774354, 401.207735141, 403.323714704169, 406.515015033796, 400.260203305855, 
            402.16910631162, 401.76609457277, 405.163029955835, 408.676210789067, 414.821626909509, 415.532807231702, 405.762271311609, 
            407.770531151609, 410.906444763293, 407.186115006467, 412.1651883838, 405.819748632611, 410.805318563339, 408.789306894136)), 
        row.names = c(NA, -20L), class = "data.frame")
    aov_formula <- "mrt~group+Error(subnum)"
    ez:::ezPerm_aov(data = sim_data, aov_formula = aov_formula)
}





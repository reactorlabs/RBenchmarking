library(cobalt)

function_to_run <- function() {
    keep.row <- c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)
    keep <- structure(c(TRUE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 
        TRUE, TRUE, TRUE, TRUE, FALSE, FALSE), names = c("Type", "M.0.Un", "SD.0.Un", "M.1.Un", "SD.1.Un", "Diff.Un", "M.Threshold.Un", 
        "V.Ratio.Un", "V.Threshold.Un", "KS.Un", "KS.Threshold.Un", "M.0.Adj", "SD.0.Adj", "M.1.Adj", "SD.1.Adj", "Diff.Adj", 
        "M.Threshold", "V.Ratio.Adj", "V.Threshold", "KS.Adj", "KS.Threshold"))
    digits <- 4
    balance <- structure(list(Type = c("Distance", "Contin.", "Contin.", "Binary", "Binary", "Binary", "Binary", "Binary", 
        "Contin.", "Contin."), M.0.Un = c(0.182224764762874, 28.030303030303, 10.2354312354312, 0.202797202797203, 0.142191142191142, 
        0.655011655011655, 0.512820512820513, 0.596736596736597, 5619.23650638695, 2466.48444312354), SD.0.Un = c(0.229520554706501, 
        10.7866530174644, 2.85523844087595, NA, NA, NA, NA, NA, 6788.75079645538, 3291.99618331065), M.1.Un = c(0.577435546655728, 
        25.8162162162162, 10.3459459459459, 0.843243243243243, 0.0594594594594595, 0.0972972972972973, 0.189189189189189, 
        0.708108108108108, 2095.57368864865, 1532.05531378378), SD.1.Un = c(0.220285299004571, 7.15501927478617, 2.01065025640563, 
        NA, NA, NA, NA, NA, 4886.62035315108, 3219.2508699216), Diff.Un = c(1.79408604967622, -0.309445261997982, 0.0549646613888354, 
        0.64044604044604, -0.0827316827316827, -0.557714357714358, -0.323631323631324, 0.111371511371511, -0.721083809071869, 
        -0.290262911185457), M.Threshold.Un = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA), V.Ratio.Un = c(0.921144705541391, 
        0.439995463435061, 0.495893371429209, NA, NA, NA, NA, NA, 0.518128480856177, 0.95629304538895), V.Threshold.Un = c(NA, 
        NA, NA, NA, NA, NA, NA, NA, NA, NA), KS.Un = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA), KS.Threshold.Un = c(NA, NA, 
        NA, NA, NA, NA, NA, NA, NA, NA), M.0.Adj = c(0.362891389001665, 25.3027027027027, 10.6054054054054, 0.47027027027027, 
        0.216216216216216, 0.313513513513514, 0.210810810810811, 0.637837837837838, 2342.10756351351, 1614.74512518919), 
        SD.0.Adj = c(0.253257326616798, 10.5863552069984, 2.65824659703023, NA, NA, NA, NA, NA, 4238.97568481135, 2632.35334341192), 
        M.1.Adj = c(0.577435546655728, 25.8162162162162, 10.3459459459459, 0.843243243243243, 0.0594594594594595, 0.0972972972972973, 
            0.189189189189189, 0.708108108108108, 2095.57368864865, 1532.05531378378), SD.1.Adj = c(0.220285299004571, 7.15501927478617, 
            2.01065025640563, NA, NA, NA, NA, NA, 4886.62035315108, 3219.2508699216), Diff.Adj = c(0.973937700897653, 0.0717696897509558, 
            -0.129042561545878, 0.372972972972973, -0.156756756756757, -0.216216216216216, -0.0216216216216216, 0.0702702702702702, 
            -0.050450793605419, -0.0256860414880991), M.Threshold = c("", "Balanced, <0.1", "Not Balanced, >0.1", "Not Balanced, >0.1", 
            "Not Balanced, >0.1", "Not Balanced, >0.1", "Balanced, <0.1", "Balanced, <0.1", "Balanced, <0.1", "Balanced, <0.1"), 
        V.Ratio.Adj = c(0.756566302061646, 0.456802731609319, 0.572113945521668, NA, NA, NA, NA, NA, 1.3289093229409, 1.49562003479418), 
        V.Threshold = c("", "Not Balanced, >2", "Balanced, <2", "", "", "", "", "", "Balanced, <2", "Balanced, <2"), KS.Adj = c(NA, 
            NA, NA, NA, NA, NA, NA, NA, NA, NA), KS.Threshold = c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA)), row.names = c("distance", 
        "age", "educ", "race_black", "race_hispan", "race_white", "married", "nodegree", "re74", "re75"), class = "data.frame", 
        thresholds = structure(c(0.1, 2), names = c("m", "v")), disp = structure(c(FALSE, FALSE, TRUE, FALSE), names = c("means", 
            "sds", "v.ratio", "ks")))
    cobalt:::round_df_char(df = balance[keep.row, keep], digits = digits)
}





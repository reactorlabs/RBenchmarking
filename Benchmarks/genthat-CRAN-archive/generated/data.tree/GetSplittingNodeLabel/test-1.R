

genthat_extracted_call <- function() {
    splittingNode <- structure(list(nodeID = 4L, weights = c(1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 
        0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 
        1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1), criterion = list(statistic = structure(c(9.5471918425108, 
        2.30767583371038, 11.5989669361975, 0.0660489289717964, 0.25131429441413), names = c("Solar.R", "Wind", "Temp", "Month", 
        "Day")), criterion = structure(c(0.990027244523216, 0.502050978166405, 0.996704928355612, 0.000343214704096378, 0.00833299589449255), 
        names = c("Solar.R", "Wind", "Temp", "Month", "Day")), maxcriterion = 0.996704928355612), terminal = FALSE, psplit = structure(list(variableID = 3L, 
        ordered = TRUE, splitpoint = 77, splitstatistics = c(0, 0, 3.11157242376534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.32966145815062, 
            0, 0, 2.36953618926653, 0, 0, 0, 2.15014961828793, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.63790486920317, 0, 0, 0, 0, 
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
            0, 0, 0, 0, 3.81963973118292, 2.29875350490419, 2.89554137069825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.51191538291287, 
            3.33181071111944, 0, 2.90980677207727, 0, 0, 0, 0, 0, 0, 1.89852163790767, 0, 0, 0, 2.75705591566739, 2.6111095891209, 
            0.33563311114738, 2.22840006416218, 2.49180153092824, 0, 3.31538609787008, 3.63028273334413, 1.83508797509703), 
        toleft = 1L, table = NULL, variableName = "Temp"), class = "orderedSplit"), ssplits = list(list(4L, TRUE, 5, NULL, 
        1L, NULL), list(1L, TRUE, 274, NULL, 0L, NULL), list(2L, TRUE, 10.9, NULL, 0L, NULL)), prediction = 22.3333333333333, 
        left = structure(list(nodeID = 5L, weights = c(1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
            1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 
            1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1), criterion = list(statistic = structure(c(6.14094025816398, 
            1.38653553952383, 1.99863036989462, 0.826834122831662, 1.3580462164744), names = c("Solar.R", "Wind", "Temp", 
            "Month", "Day")), criterion = structure(c(0.935678275944614, 0.255240073396789, 0.424620089695879, 0.1047251086799, 
            0.247151946102168), names = c("Solar.R", "Wind", "Temp", "Month", "Day")), maxcriterion = 0.935678275944614), 
            terminal = TRUE, psplit = list(NULL, NULL, NULL, NULL, NULL, NULL), ssplits = list(NULL, NULL, NULL), prediction = 18.4791666666667, 
            left = NULL, right = NULL, `NA` = 48), class = "TerminalNode"), right = structure(list(nodeID = 6L, weights = c(0, 
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 
            0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 
            0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 
            0, 0, 0, 0), criterion = list(statistic = structure(c(5.18243538015802, 0.0206093888176253, 0.927001330524323, 
            0.165170976883996, 4.62205215540192), names = c("Solar.R", "Wind", "Temp", "Month", "Day")), criterion = structure(c(0.891006805567151, 
            1.9382712057645e-05, 0.129421509220213, 0.00312904662186984, 0.851835725369209), names = c("Solar.R", "Wind", 
            "Temp", "Month", "Day")), maxcriterion = 0.891006805567151), terminal = TRUE, psplit = list(NULL, NULL, NULL, 
            NULL, NULL, NULL), ssplits = list(NULL, NULL, NULL), prediction = 31.1428571428571, left = NULL, right = NULL, 
            `NA` = 21), class = "TerminalNode"), `NA` = 69, ssplit = list(structure(list(variableID = 4L, ordered = TRUE, 
            splitpoint = 5, splitstatistics = NULL, toleft = 1L, table = NULL, variableName = "Month"), class = "orderedSplit"), 
            structure(list(variableID = 1L, ordered = TRUE, splitpoint = 274, splitstatistics = NULL, toleft = 0L, table = NULL, 
                variableName = "Solar.R"), class = "orderedSplit"), structure(list(variableID = 2L, ordered = TRUE, splitpoint = 10.9, 
                splitstatistics = NULL, toleft = 0L, table = NULL, variableName = "Wind"), class = "orderedSplit"))), class = "SplittingNode")
    left <- FALSE
    data.tree:::GetSplittingNodeLabel(splittingNode = splittingNode, left = left)
}





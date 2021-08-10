library(ExPosition)

function_to_run <- function() {
    authors <- list(ca = list(data = structure(list(PERIOD = c(7836L, 53655L, 115615L, 161926L, 38177L, 46371L), COMMA = c(13112L, 
        102383L, 184541L, 340479L, 105101L, 58367L), OTHER = c(6026L, 42413L, 59226L, 62754L, 12670L, 14299L)), class = "data.frame", 
        row.names = c("Rousseau", "Chateaubriand", "Hugo", "Zola", "Proust", "Giraudoux"))), mca = list(data = structure(list(PERIOD = c(7836L, 
        53655L, 115615L, 161926L, 38177L, 46371L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), COMMA = c(0L, 0L, 0L, 
        0L, 0L, 0L, 13112L, 102383L, 184541L, 340479L, 105101L, 58367L, 0L, 0L, 0L, 0L, 0L, 0L), OTHERS = c(0L, 0L, 0L, 0L, 
        0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 6026L, 42413L, 59226L, 62754L, 12670L, 14299L), R = c(7836L, 0L, 0L, 0L, 0L, 0L, 
        13112L, 0L, 0L, 0L, 0L, 0L, 6026L, 0L, 0L, 0L, 0L, 0L), C = c(0L, 53655L, 0L, 0L, 0L, 0L, 0L, 102383L, 0L, 0L, 0L, 
        0L, 0L, 42413L, 0L, 0L, 0L, 0L), H = c(0L, 0L, 115615L, 0L, 0L, 0L, 0L, 0L, 184541L, 0L, 0L, 0L, 0L, 0L, 59226L, 
        0L, 0L, 0L), Z = c(0L, 0L, 0L, 161926L, 0L, 0L, 0L, 0L, 0L, 340479L, 0L, 0L, 0L, 0L, 0L, 62754L, 0L, 0L), P = c(0L, 
        0L, 0L, 0L, 38177L, 0L, 0L, 0L, 0L, 0L, 105101L, 0L, 0L, 0L, 0L, 0L, 12670L, 0L), G = c(0L, 0L, 0L, 0L, 0L, 46371L, 
        0L, 0L, 0L, 0L, 0L, 58367L, 0L, 0L, 0L, 0L, 0L, 14299L)), class = "data.frame", row.names = c("P-R", "P-C", "P-H", 
        "P-Z", "P-P", "P-G", "C-R", "C-C", "C-H", "C-Z", "C-P", "C-G", "O-R", "O-C", "O-H", "O-Z", "O-P", "O-G"))))
    ExPosition:::epCA(DATA = authors$ca$data)
}





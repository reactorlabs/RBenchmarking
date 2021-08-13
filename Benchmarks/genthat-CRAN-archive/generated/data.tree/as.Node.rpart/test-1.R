library(data.tree)

function_to_run <- function() {
    kyphosis <- rpart::kyphosis
    rpart <- rpart::rpart
    fit <- structure(list(frame = structure(list(var = structure(c(3L, 3L, 1L, 2L, 1L, 2L, 1L, 1L, 1L), .Label = c("<leaf>", 
        "Age", "Start"), class = "factor"), n = c(81L, 62L, 29L, 33L, 12L, 21L, 14L, 7L, 19L), wt = c(81, 62, 29, 33, 12, 
        21, 14, 7, 19), dev = c(17, 6, 0, 6, 0, 6, 2, 3, 8), yval = c(1, 1, 1, 1, 1, 1, 1, 2, 2), complexity = c(0.176470588235294, 
        0.0196078431372549, 0.01, 0.0196078431372549, 0.01, 0.0196078431372549, 0.01, 0.01, 0.01), ncompete = c(2L, 2L, 0L, 
        2L, 0L, 2L, 0L, 0L, 0L), nsurrogate = c(1L, 2L, 0L, 2L, 0L, 0L, 0L, 0L, 0L), yval2 = structure(c(1, 1, 1, 1, 1, 1, 
        1, 2, 2, 64, 56, 29, 27, 12, 15, 12, 3, 8, 17, 6, 0, 6, 0, 6, 2, 4, 11, 0.790123456790123, 0.903225806451613, 1, 
        0.818181818181818, 1, 0.714285714285714, 0.857142857142857, 0.428571428571429, 0.421052631578947, 0.209876543209877, 
        0.0967741935483871, 0, 0.181818181818182, 0, 0.285714285714286, 0.142857142857143, 0.571428571428571, 0.578947368421053, 
        1, 0.765432098765432, 0.358024691358025, 0.407407407407407, 0.148148148148148, 0.259259259259259, 0.172839506172839, 
        0.0864197530864197, 0.234567901234568), .Dim = c(9L, 6L), .Dimnames = list(NULL, c("", "", "", "", "", "nodeprob")))), 
        row.names = c(1L, 2L, 4L, 5L, 10L, 11L, 22L, 23L, 3L), class = "data.frame"), where = structure(c(9L, 7L, 9L, 9L, 
        3L, 3L, 3L, 3L, 3L, 8L, 8L, 3L, 9L, 5L, 3L, 3L, 3L, 7L, 3L, 5L, 3L, 9L, 8L, 9L, 9L, 5L, 9L, 8L, 3L, 3L, 3L, 7L, 7L, 
        3L, 7L, 3L, 5L, 9L, 5L, 8L, 9L, 5L, 9L, 9L, 3L, 7L, 3L, 7L, 9L, 7L, 8L, 3L, 9L, 3L, 3L, 3L, 5L, 9L, 5L, 8L, 9L, 9L, 
        9L, 3L, 3L, 5L, 3L, 7L, 5L, 3L, 7L, 7L, 3L, 7L, 3L, 3L, 7L, 5L, 7L, 9L, 5L), names = c("1", "2", "3", "4", "5", "6", 
        "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", 
        "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", 
        "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", 
        "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81")), call = rpart(formula = Kyphosis ~ 
        Age + Number + Start, data = kyphosis), terms = Kyphosis ~ Age + Number + Start, cptable = structure(c(0.176470588235294, 
        0.0196078431372549, 0.01, 0, 1, 4, 1, 0.823529411764706, 0.764705882352941, 1, 0.882352941176471, 0.882352941176471, 
        0.215587222254518, 0.205648793758853, 0.205648793758853), .Dim = c(3L, 5L), .Dimnames = list(c("1", "2", "3"), c("CP", 
        "nsplit", "rel error", "xerror", "xstd"))), method = "class", parms = list(prior = structure(c(0.790123456790123, 
        0.209876543209877), .Dim = 2L, .Dimnames = list(c("1", "2"))), loss = structure(c(0, 1, 1, 0), .Dim = c(2L, 2L)), 
        split = 1), control = list(minsplit = 20L, minbucket = 7, cp = 0.01, maxcompete = 4L, maxsurrogate = 5L, usesurrogate = 2L, 
        surrogatestyle = 0L, maxdepth = 30L, xval = 10L), functions = list(summary = genthat::with_env(function(yval, dev, 
        wt, ylevel, digits) {
        nclass <- (ncol(yval) - 2L)/2L
        group <- yval[, 1L]
        counts <- yval[, 1L + (1L:nclass)]
        yprob <- yval[, 1L + nclass + 1L:nclass]
        nodeprob <- yval[, 2L * nclass + 2L]
        if (!is.null(ylevel)) group <- ylevel[group]
        temp1 <- formatg(counts, format = "%5g")
        temp2 <- formatg(yprob, format = "%5.3f")
        if (nclass > 1) {
            temp1 <- apply(matrix(temp1, ncol = nclass), 1L, paste, collapse = " ")
            temp2 <- apply(matrix(temp2, ncol = nclass), 1L, paste, collapse = " ")
        }
        dev <- dev/(wt[1L] * nodeprob)
        paste0("  predicted class=", format(group, justify = "left"), "  expected loss=", formatg(dev, digits), "  P(node) =", 
            formatg(nodeprob, digits), "\n", "    class counts: ", temp1, "\n", "   probabilities: ", temp2)
    }, env = getNamespace("rpart")), print = genthat::with_env(function(yval, ylevel, digits) {
        temp <- if (is.null(ylevel)) as.character(yval[, 1L]) else ylevel[yval[, 1L]]
        nclass <- (ncol(yval) - 2L)/2L
        yprob <- if (nclass < 5L) format(yval[, 1L + nclass + 1L:nclass], digits = digits, nsmall = digits) else formatg(yval[, 
            1L + nclass + 1L:nclass], digits = 2L)
        if (!is.matrix(yprob)) yprob <- matrix(yprob, nrow = 1L)
        temp <- paste0(temp, " (", yprob[, 1L])
        for (i in 2L:ncol(yprob)) temp <- paste(temp, yprob[, i], sep = " ")
        temp <- paste0(temp, ")")
        temp
    }, env = getNamespace("rpart")), text = genthat::with_env(function(yval, dev, wt, ylevel, digits, n, use.n) {
        nclass <- (ncol(yval) - 2L)/2L
        group <- yval[, 1L]
        counts <- yval[, 1L + (1L:nclass)]
        if (!is.null(ylevel)) group <- ylevel[group]
        temp1 <- formatg(counts, digits)
        if (nclass > 1L) temp1 <- apply(matrix(temp1, ncol = nclass), 1L, paste, collapse = "/")
        if (use.n) paste0(format(group, justify = "left"), "\n", temp1) else format(group, justify = "left")
    }, env = getNamespace("rpart"))), numresp = 4L, splits = structure(c(81, 81, 81, 0, 62, 62, 62, 0, 0, 33, 33, 33, 0, 
        0, 21, 21, 21, 1, -1, -1, -1, 1, -1, -1, -1, -1, -1, 1, 1, -1, 1, 1, 1, 1, 6.762329958708, 2.8667949334616, 2.25021151687818, 
        0.802469135802469, 1.02052785923754, 0.684863523573203, 0.297533206831121, 0.645161290322581, 0.596774193548387, 
        1.24675324675325, 0.288770053475933, 0.175324675324674, 0.757575757575758, 0.696969696969697, 1.71428571428571, 0.793650793650793, 
        0.0714285714285712, 8.5, 5.5, 39.5, 6.5, 14.5, 55, 4.5, 3.5, 16, 55, 12.5, 3.5, 9.5, 5.5, 111, 12.5, 3.5, 0, 0, 0, 
        0.157894736842105, 0, 0, 0, 0.241379310344828, 0.137931034482759, 0, 0, 0, 0.333333333333333, 0.166666666666667, 
        0, 0, 0), .Dim = c(17L, 5L), .Dimnames = list(c("Start", "Number", "Age", "Number", "Start", "Age", "Number", "Number", 
        "Age", "Age", "Start", "Number", "Start", "Number", "Age", "Start", "Number"), c("count", "ncat", "improve", "index", 
        "adj"))), variable.importance = structure(c(8.19844223352995, 3.10180142438207, 1.52186282791233), names = c("Start", 
        "Age", "Number")), y = c(1L, 1L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 
        2L, 1L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 1L, 1L, 1L, 2L, 1L, 1L, 2L, 1L, 1L, 
        1L, 2L, 1L, 1L, 1L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 1L, 2L, 
        1L), ordered = structure(c(FALSE, FALSE, FALSE), names = c("Age", "Number", "Start"))), xlevels = structure(list(), 
        names = character()), ylevels = c("absent", "present"), class = "rpart")
    data.tree:::as.Node.rpart(x = fit)
}





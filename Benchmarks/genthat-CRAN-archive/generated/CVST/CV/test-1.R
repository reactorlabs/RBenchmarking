

genthat_extracted_call <- function() {
    svm <- structure(list(learn = genthat::with_env(function(data, params) {
        stopifnot(isClassification(data))
        kpar <- params[setdiff(names(params), c("kernel", "nu"))]
        return(ksvm(data$x, data$y, kernel = params$kernel, kpar = kpar, type = "nu-svc", nu = params$nu, scale = FALSE))
    }, env = list2env(list(ksvm = kernlab::ksvm, isClassification = CVST::isClassification), parent = baseenv())), predict = genthat::with_env(function(model, 
        newData) {
        stopifnot(isClassification(newData))
        return(predict(model, newData$x))
    }, env = list2env(list(predict = stats::predict, isClassification = CVST::isClassification), parent = baseenv()))), class = "CVST.learner")
    params <- structure(list(`kernel=rbfdot sigma=0.001 nu=0.05` = list(kernel = "rbfdot", sigma = 0.001, nu = 0.05), `kernel=rbfdot sigma=0.01 nu=0.05` = list(kernel = "rbfdot", 
        sigma = 0.01, nu = 0.05), `kernel=rbfdot sigma=0.1 nu=0.05` = list(kernel = "rbfdot", sigma = 0.1, nu = 0.05), `kernel=rbfdot sigma=1 nu=0.05` = list(kernel = "rbfdot", 
        sigma = 1, nu = 0.05), `kernel=rbfdot sigma=10 nu=0.05` = list(kernel = "rbfdot", sigma = 10, nu = 0.05), `kernel=rbfdot sigma=100 nu=0.05` = list(kernel = "rbfdot", 
        sigma = 100, nu = 0.05), `kernel=rbfdot sigma=1000 nu=0.05` = list(kernel = "rbfdot", sigma = 1000, nu = 0.05), `kernel=rbfdot sigma=0.001 nu=0.1` = list(kernel = "rbfdot", 
        sigma = 0.001, nu = 0.1), `kernel=rbfdot sigma=0.01 nu=0.1` = list(kernel = "rbfdot", sigma = 0.01, nu = 0.1), `kernel=rbfdot sigma=0.1 nu=0.1` = list(kernel = "rbfdot", 
        sigma = 0.1, nu = 0.1), `kernel=rbfdot sigma=1 nu=0.1` = list(kernel = "rbfdot", sigma = 1, nu = 0.1), `kernel=rbfdot sigma=10 nu=0.1` = list(kernel = "rbfdot", 
        sigma = 10, nu = 0.1), `kernel=rbfdot sigma=100 nu=0.1` = list(kernel = "rbfdot", sigma = 100, nu = 0.1), `kernel=rbfdot sigma=1000 nu=0.1` = list(kernel = "rbfdot", 
        sigma = 1000, nu = 0.1), `kernel=rbfdot sigma=0.001 nu=0.2` = list(kernel = "rbfdot", sigma = 0.001, nu = 0.2), `kernel=rbfdot sigma=0.01 nu=0.2` = list(kernel = "rbfdot", 
        sigma = 0.01, nu = 0.2), `kernel=rbfdot sigma=0.1 nu=0.2` = list(kernel = "rbfdot", sigma = 0.1, nu = 0.2), `kernel=rbfdot sigma=1 nu=0.2` = list(kernel = "rbfdot", 
        sigma = 1, nu = 0.2), `kernel=rbfdot sigma=10 nu=0.2` = list(kernel = "rbfdot", sigma = 10, nu = 0.2), `kernel=rbfdot sigma=100 nu=0.2` = list(kernel = "rbfdot", 
        sigma = 100, nu = 0.2), `kernel=rbfdot sigma=1000 nu=0.2` = list(kernel = "rbfdot", sigma = 1000, nu = 0.2), `kernel=rbfdot sigma=0.001 nu=0.3` = list(kernel = "rbfdot", 
        sigma = 0.001, nu = 0.3), `kernel=rbfdot sigma=0.01 nu=0.3` = list(kernel = "rbfdot", sigma = 0.01, nu = 0.3), `kernel=rbfdot sigma=0.1 nu=0.3` = list(kernel = "rbfdot", 
        sigma = 0.1, nu = 0.3), `kernel=rbfdot sigma=1 nu=0.3` = list(kernel = "rbfdot", sigma = 1, nu = 0.3), `kernel=rbfdot sigma=10 nu=0.3` = list(kernel = "rbfdot", 
        sigma = 10, nu = 0.3), `kernel=rbfdot sigma=100 nu=0.3` = list(kernel = "rbfdot", sigma = 100, nu = 0.3), `kernel=rbfdot sigma=1000 nu=0.3` = list(kernel = "rbfdot", 
        sigma = 1000, nu = 0.3)), class = "CVST.params")
    ns <- structure(list(x = structure(c(28.7394794570769, 29.4390923427618, 8.98933860386378, 26.0892816124419, 20.1610300762843, 
        16.3078802029545, 23.1406043799709, 4.23067592566241, 20.6400215299153, 22.1502634583535, 14.3803820150324, 22.5915776689761, 
        29.3635946516942, 8.02453318064527, 14.5233573511005, 29.5314271895645, 30.7318896096429, 3.69097432263862, 14.9224734190867, 
        17.6033723916898, 28.4009836494822, 4.35770843901935, 31.0669499077349, 29.7404596479197, 2.58985226905671, 16.1544396410249, 
        12.2586034566103, 28.4546025814402, 14.0419650002054, 26.2638484157357, 23.1722497410987, 25.4800487346472, 12.1927813009104, 
        21.5252418835819, 0.124040721536797, 26.1668303878026, 0.230409019631936, 6.52379903475857, 28.4817232247238, 19.2195929187907, 
        11.9242052167242, 13.6901681000524, 1.17593057857153, 30.5846584108153, 13.5638655169857, 30.083156012656, 27.8896428931729, 
        20.1055260061456, 30.5038156998491, 19.4413756591035, 10.4749247743194, 10.8934174921637, 12.5187884109294, 24.651850594356, 
        1.22322594472765, 23.5241008423665, 21.2772791416812, 5.3804276217784, 8.20232029087774, 16.1607589643643, 21.2248285034159, 
        30.8761128879784, 23.8617869101752, 17.796758714435, 26.693789776862, 5.95249923508591, 8.52272035774087, 26.0173661323021, 
        21.7776717116689, 7.55693586928321, 1.35053285762872, 4.41328090057829, 6.79794830286171, 15.0607500744073, 6.20182881060637, 
        22.5992301495612, 0.247706372821841, 11.7963651433291, 16.1605947737537, 0.0493404159120848, 18.2716286158153, 4.96073841980998, 
        11.2792068811546, 20.2831236611722, 24.3732097654471, 17.7074877666845, 7.3420088019653, 2.82682129131052, 2.68958234230029, 
        9.5887178725876, 20.9678223530496, 0.00750515741993154, 6.55241844492902, 29.3121316001659, 29.0799874207147, 23.0622526308204, 
        10.4637649622684, 16.1811917313568, 23.3726528333776, 19.4514611992067), .Dim = c(100L, 1L)), y = structure(c(1L, 
        1L, 2L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 1L, 1L, 2L, 2L, 
        1L, 2L, 1L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 1L, 2L, 1L, 2L, 2L, 1L, 2L, 1L, 1L, 1L, 1L, 2L, 1L, 2L, 1L, 2L, 
        1L, 2L, 1L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 2L, 2L, 1L, 2L, 2L, 1L, 1L, 2L, 1L, 1L, 2L, 1L, 1L, 1L, 2L, 1L, 1L, 2L, 2L, 
        2L, 1L, 2L, 1L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 2L), .Label = c("FALSE", "TRUE"), class = "factor")), class = "CVST.data")
    CVST:::CV(data = ns, learner = svm, params = params)
}





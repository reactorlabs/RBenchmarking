

genthat_extracted_call <- function() {
    ff <- genthat::with_env(function(x) dkatojones(x, mu = circular(pi/3), nu = circular(pi), r = 0.7, kappa = 2.3), env = list2env(list(dkatojones = circular::dkatojones, 
        circular = circular::circular), parent = baseenv()))
    circular:::curve.circular(expr = ff, xlim = c(-1, 1), ylim = c(-1.2, 1.2), main = "Density of a KatoJones Distribution", 
        xlab = expression(paste(mu, "=", pi, "/3, ", nu, "=", pi, ", r=0.7, ", kappa, "=2.3")), join = TRUE)
}





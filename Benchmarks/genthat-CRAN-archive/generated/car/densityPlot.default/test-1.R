

genthat_extracted_call <- function() {
    ylab <- "Density"
    xlab <- "income"
    response <- 1L
    mf <- structure(list(income = c(12351L, 25879L, 9271L, 8865L, 8403L, 11030L, 8258L, 14163L, 11377L, 11023L, 5902L, 7059L, 
        8425L, 8049L, 7405L, 6336L, 19263L, 6112L, 9593L, 4686L, 12480L, 5648L, 8034L, 25308L, 14558L, 17498L, 4614L, 3485L, 
        5092L, 10432L, 5180L, 6197L, 7562L, 4036L, 3148L, 4348L, 2448L, 4330L, 4761L, 3016L, 2901L, 5511L, 3739L, 3161L, 
        4741L, 5052L, 6259L, 4075L, 7482L, 8780L, 2594L, 2370L, 8131L, 6992L, 7956L, 8895L, 8891L, 3116L, 3930L, 7869L, 3000L, 
        3472L, 3582L, 1656L, 6860L, 4199L, 5134L, 5134L, 1890L, 4443L, 3485L, 8043L, 6686L, 6565L, 6477L, 5811L, 6573L, 3942L, 
        5449L, 2847L, 5795L, 7716L, 4696L, 8316L, 7147L, 8880L, 5299L, 5959L, 4549L, 6928L, 3910L, 14032L, 8845L, 5562L, 
        4224L, 4753L, 6462L, 3617L), type = structure(c(2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
        2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 3L, 2L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 
        3L, 3L, 3L, 3L, 3L, 1L, 3L, 3L, 3L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 1L, 1L, 1L, 1L, 1L), .Label = c("bc", "prof", 
        "wc"), class = "factor")), terms = income ~ type, row.names = c("gov.administrators", "general.managers", "accountants", 
        "purchasing.officers", "chemists", "physicists", "biologists", "architects", "civil.engineers", "mining.engineers", 
        "surveyors", "draughtsmen", "computer.programers", "economists", "psychologists", "social.workers", "lawyers", "librarians", 
        "vocational.counsellors", "ministers", "university.teachers", "primary.school.teachers", "secondary.school.teachers", 
        "physicians", "veterinarians", "osteopaths.chiropractors", "nurses", "nursing.aides", "physio.therapsts", "pharmacists", 
        "medical.technicians", "commercial.artists", "radio.tv.announcers", "secretaries", "typists", "bookkeepers", "tellers.cashiers", 
        "computer.operators", "shipping.clerks", "file.clerks", "receptionsts", "mail.carriers", "postal.clerks", "telephone.operators", 
        "collectors", "claim.adjustors", "travel.clerks", "office.clerks", "sales.supervisors", "commercial.travellers", 
        "sales.clerks", "service.station.attendant", "insurance.agents", "real.estate.salesmen", "buyers", "firefighters", 
        "policemen", "cooks", "bartenders", "funeral.directors", "launderers", "janitors", "elevator.operators", "farm.workers", 
        "rotary.well.drillers", "bakers", "slaughterers.1", "slaughterers.2", "canners", "textile.weavers", "textile.labourers", 
        "tool.die.makers", "machinists", "sheet.metal.workers", "welders", "auto.workers", "aircraft.workers", "electronic.workers", 
        "radio.tv.repairmen", "sewing.mach.operators", "auto.repairmen", "aircraft.repairmen", "railway.sectionmen", "electrical.linemen", 
        "electricians", "construction.foremen", "carpenters", "masons", "house.painters", "plumbers", "construction.labourers", 
        "pilots", "train.engineers", "bus.drivers", "taxi.drivers", "longshoremen", "typesetters", "bookbinders"), class = "data.frame", 
        na.action = structure(c(34L, 53L, 63L, 67L), names = c("athletes", "newsboys", "babysitters", "farmers"), class = "omit"))
    main <- ""
    legend.title <- "type"
    legend.location <- "topright"
    legend <- list(location = "topright", title = "type")
    isFALSE <- car:::isFALSE
    g <- structure(c(2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
        2L, 2L, 1L, 2L, 2L, 3L, 2L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 1L, 3L, 3L, 
        3L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 1L, 1L, 1L, 1L, 1L), .Label = c("bc", "prof", "wc"), class = "factor")
    car:::densityPlot.default(x = mf[[response]], g = g, kernel = genthat::with_env(structure(function(x) {
        `__genthat_captured_seed` <- get(".Random.seed", envir = globalenv())
        ""
        on.exit({
            if (.Internal(getOption("genthat.tracing"))) {
                .Internal(options(genthat.tracing = FALSE))
                default <- genthat:::`__genthat_default_retv`
                retv <- returnValue(default = default)
                if (!identical(retv, default) && !genthat:::is_exception_returnValue(retv)) {
                  genthat:::record_trace(name = "depan", pkg = "car", args = as.list(match.call())[-1], retv = retv, seed = `__genthat_captured_seed`, 
                    env = parent.frame())
                }
                .Internal(options(genthat.tracing = TRUE))
            }
        })
        {
            ifelse(abs(x) > 1, 0, 0.75 * (1 - x^2))
        }
    }, scale = 0.447213595499958), env = getNamespace("car")), xlab = xlab, ylab = ylab, main = main, legend = if (isFALSE(legend)) 
        FALSE
    else list(title = legend.title, location = legend.location))
}





library(car)

function_to_run <- function() {
    lm <- stats::lm
    Prestige <- carData::Prestige
    x <- structure(list(call = lm(formula = prestige ~ education + income + type, data = Prestige), terms = prestige ~ education + 
        income + type, residuals = structure(c(2.7148030265907, -7.56948270874823, 1.68431437401915, 0.454444961421244, 5.86840882869018, 
        3.56012106109598, 3.3889337904543, 1.6204201449734, 2.82248901759262, -1.55962053494537, 5.09356518272777, 2.25188565744613, 
        -10.9520802394927, -4.41175090826687, 9.23459876193093, -8.93132285717327, -0.559009696915157, -5.48397762934651, 
        -12.7411906462466, 9.37522767871354, 7.87884620221444, -1.56707800206259, -2.84737928431576, -2.48166381453033, -12.0163741736764, 
        -8.77716777912078, 8.84143633117799, -2.71946813973137, 11.4962573871297, -2.55452803524582, 18.6320255825155, 4.7697890721665, 
        6.61245279282859, 2.69891780389679, -0.134050077235532, 6.77455637635848, 4.09737626913096, 4.94586721090955, -4.24658538128829, 
        -11.4042082131215, -1.43086664679488, 0.00986145659289556, -0.216951432789114, -0.3475188572362, -13.1828486037987, 
        8.45916995142175, -9.26570399141656, -5.57342875815586, 1.13549481356851, -6.21801409697555, -9.68338195954682, -14.9528774868382, 
        -0.186839789612651, 2.64050189020233, 5.88417366054626, 0.325693619211263, 3.06692395596819, -1.26448592003524, -14.3808313403748, 
        8.72474712990726, -8.54095743380191, -11.7110880673017, -10.7489273577751, -11.1441467314978, -3.64529035797657, 
        7.57285911320229, -7.44179308352877, 2.15820691647123, -5.34689798638364, 4.8478311297171, 1.13481186101638, -2.08842877257234, 
        5.68812687306809, -0.983278674968427, 6.76900202681164, -0.329526024420409, 5.4128126801275, 15.2519871683694, -5.49483896215957, 
        2.5035688668802, 3.09882986305509, 6.00615372565988, -1.33504341518958, -0.144937807424455, 7.10709885457976, 12.4588857602835, 
        8.73570960477062, 6.54241526501094, -2.77351332193081, 5.90605383665848, -4.46086474655651, 1.39708483174176, 9.37605600741044, 
        3.04495021308687, -7.68500547570365, -8.8371777128052, -0.455985464025703, 0.752639811735551), names = c("gov.administrators", 
        "general.managers", "accountants", "purchasing.officers", "chemists", "physicists", "biologists", "architects", "civil.engineers", 
        "mining.engineers", "surveyors", "draughtsmen", "computer.programers", "economists", "psychologists", "social.workers", 
        "lawyers", "librarians", "vocational.counsellors", "ministers", "university.teachers", "primary.school.teachers", 
        "secondary.school.teachers", "physicians", "veterinarians", "osteopaths.chiropractors", "nurses", "nursing.aides", 
        "physio.therapsts", "pharmacists", "medical.technicians", "commercial.artists", "radio.tv.announcers", "secretaries", 
        "typists", "bookkeepers", "tellers.cashiers", "computer.operators", "shipping.clerks", "file.clerks", "receptionsts", 
        "mail.carriers", "postal.clerks", "telephone.operators", "collectors", "claim.adjustors", "travel.clerks", "office.clerks", 
        "sales.supervisors", "commercial.travellers", "sales.clerks", "service.station.attendant", "insurance.agents", "real.estate.salesmen", 
        "buyers", "firefighters", "policemen", "cooks", "bartenders", "funeral.directors", "launderers", "janitors", "elevator.operators", 
        "farm.workers", "rotary.well.drillers", "bakers", "slaughterers.1", "slaughterers.2", "canners", "textile.weavers", 
        "textile.labourers", "tool.die.makers", "machinists", "sheet.metal.workers", "welders", "auto.workers", "aircraft.workers", 
        "electronic.workers", "radio.tv.repairmen", "sewing.mach.operators", "auto.repairmen", "aircraft.repairmen", "railway.sectionmen", 
        "electrical.linemen", "electricians", "construction.foremen", "carpenters", "masons", "house.painters", "plumbers", 
        "construction.labourers", "pilots", "train.engineers", "bus.drivers", "taxi.drivers", "longshoremen", "typesetters", 
        "bookbinders")), coefficients = structure(c(-0.622929164980146, 3.67316605193644, 0.00101319314602932, 6.03897065089486, 
        -2.73723071823429, 5.22752548769593, 0.640501620437009, 0.000220918466918615, 3.86685509787416, 2.5139324035306, 
        -0.11916329560637, 5.73482710228003, 4.58627637680726, 1.56172664815261, -1.08882431142146, 0.90540301426448, 1.20517662549475e-07, 
        1.40492021768946e-05, 0.121749014310649, 0.279044875998928), .Dim = 5:4, .Dimnames = list(c("(Intercept)", "education", 
        "income", "typeprof", "typewc"), c("Estimate", "Std. Error", "t value", "Pr(>|t|)"))), aliased = structure(c(FALSE, 
        FALSE, FALSE, FALSE, FALSE), names = c("(Intercept)", "education", "income", "typeprof", "typewc")), sigma = 7.09480817074263, 
        df = c(5L, 93L, 5L), r.squared = 0.834857419874378, adj.r.squared = 0.827754513202308, fstatistic = structure(c(117.537433394307, 
            4, 93), names = c("value", "numdf", "dendf")), cov.unscaled = structure(c(0.542888951053195, -0.0635020882794165, 
            1.98589728460218e-06, 0.330516764715918, 0.146981142715042, -0.0635020882794165, 0.00815002893534709, -8.60900518542883e-07, 
            -0.0421938593018902, -0.0219758731185943, 1.98589728460218e-06, -8.60900518542883e-07, 9.69577941499108e-10, 
            -9.90191137355435e-08, 2.6041207986413e-06, 0.330516764715918, -0.0421938593018902, -9.90191137355435e-08, 0.297053368301689, 
            0.135033220114629, 0.146981142715042, -0.0219758731185943, 2.6041207986413e-06, 0.135033220114629, 0.125552647997964), 
            .Dim = c(5L, 5L), .Dimnames = list(c("(Intercept)", "education", "income", "typeprof", "typewc"), c("(Intercept)", 
                "education", "income", "typeprof", "typewc"))), na.action = structure(c(34L, 53L, 63L, 67L), names = c("athletes", 
            "newsboys", "babysitters", "farmers"), class = "omit"), vcov. = "", header = TRUE, resid.summary = FALSE, adj.r2 = FALSE, 
        brief = TRUE, fitstats = structure(c(669.02, 684.52), names = c("AIC", "BIC"))), class = "S.lm")
    car:::print.S.lm(x = x)
}





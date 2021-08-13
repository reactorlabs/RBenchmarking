

genthat_extracted_call <- function() {
    m2 <- structure(list(.Data = structure(c(0.92, 0.92, 0.89, 0.89, 0.12, 0.12, 0.09, 0.09, 0.12, 0.12, 0.11, 0.12, 0.1, 
        0.06, 0.06, 0.05, 0.05, 0.06, 0.06, 0.75, 0.75, 0.84, 0.84, 0.84, 0.84, 0.05, 0.04, 0.07, 0.05, 0.05, 0.03, 0.03, 
        0.05, 0.05, 0.13, 0.13, 0.07, 0.07, 0.04, 0.04, 0.84, 0.84, 0.83, 0.89, 0.89), n_of_classes = 3L, is_cl_hard_partition = FALSE, 
        class = "cl_membership", .Dim = c(15L, 3L), .Dimnames = list(c("grandfather", "grandmother", "granddaughter", "grandson", 
            "brother", "sister", "father", "mother", "daughter", "son", "nephew", "niece", "cousin", "aunt", "uncle"), c("1", 
            "2", "3"))), .Meta = list(n_of_objects = 15L)), class = c("cl_partition_by_memberships", "cl_partition"))
    m1 <- structure(list(.Data = structure(c(0.0400764608050578, 0.0396754056810267, 0.0549175860769281, 0.0544758244630795, 
        0.703449149900951, 0.703890804227808, 0.823385484425159, 0.82297550170484, 0.826184070624403, 0.825739164776562, 
        0.0805027071013442, 0.065621462892969, 0.0960354110930042, 0.071983043320995, 0.0733595841131609, 0.905810911816083, 
        0.906191530844677, 0.871946632834024, 0.870531733282365, 0.158818967451574, 0.160196304662342, 0.11132769207543, 
        0.1117090152677, 0.138183500006592, 0.136764125946613, 0.108933985007829, 0.116399303755331, 0.107412416619248, 0.0469525270457144, 
        0.0475682650561494, 0.0541126273788597, 0.0541330634742965, 0.0731357810890476, 0.0749924422545557, 0.137731882647475, 
        0.135912891109849, 0.0652868234994104, 0.0653154830274599, 0.0356324293690053, 0.0374967092768247, 0.810563307890827, 
        0.8179792333517, 0.796552172287748, 0.881064429633291, 0.87907215083069), n_of_classes = 3L, is_cl_hard_partition = FALSE, 
        meta = list(objval = 6.4315534805315), class = "cl_membership", .Dim = c(15L, 3L), .Dimnames = list(c("grandfather", 
            "grandmother", "granddaughter", "grandson", "brother", "sister", "father", "mother", "daughter", "son", "nephew", 
            "niece", "cousin", "aunt", "uncle"), NULL)), .Meta = list(n_of_objects = 15L)), class = c("cl_partition_by_memberships", 
        "cl_partition"))
    cl_ensemble <- clue::cl_ensemble
    clue:::cl_fuzziness(x = cl_ensemble(m1, m2))
}







genthat_extracted_call <- function() {
    id <- list(method = "mahal", n = 2, cex = 1, col = c("blue", "blue"), labels = c("gov.administrators", "general.managers", 
        "accountants", "purchasing.officers", "chemists", "physicists", "biologists", "architects", "civil.engineers", "mining.engineers", 
        "surveyors", "draughtsmen", "computer.programers", "economists", "psychologists", "social.workers", "lawyers", "librarians", 
        "vocational.counsellors", "ministers", "university.teachers", "primary.school.teachers", "secondary.school.teachers", 
        "physicians", "veterinarians", "osteopaths.chiropractors", "nurses", "physio.therapsts", "pharmacists", "commercial.artists", 
        "pilots"), location = "lr")
    default.col <- "black"
    car:::applyDefaults(args = id, defaults = list(method = "mahal", n = 2, cex = 1, col = default.col, location = "lr"), 
        type = "id")
}





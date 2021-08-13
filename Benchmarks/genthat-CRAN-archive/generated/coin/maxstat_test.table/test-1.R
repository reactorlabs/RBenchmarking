

genthat_extracted_call <- function() {
    jobsatisfaction <- coin::jobsatisfaction
    coin:::maxstat_test.table(object = jobsatisfaction, scores = list(Job.Satisfaction = 1:4, Income = 1:4))
}





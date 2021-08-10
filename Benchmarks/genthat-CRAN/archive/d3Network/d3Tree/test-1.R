library(d3Network)

function_to_run <- function() {
    CanadaPC <- list(name = "Canada", children = list(list(name = "Newfoundland", children = list(list(name = "St. John's"))), 
        list(name = "PEI", children = list(list(name = "Charlottetown"))), list(name = "Nova Scotia", children = list(list(name = "Halifax"))), 
        list(name = "New Brunswick", children = list(list(name = "Fredericton"))), list(name = "Quebec", children = list(list(name = "Montreal"), 
            list(name = "Quebec City"))), list(name = "Ontario", children = list(list(name = "Toronto"), list(name = "Ottawa"))), 
        list(name = "Manitoba", children = list(list(name = "Winnipeg"))), list(name = "Saskatchewan", children = list(list(name = "Regina"))), 
        list(name = "Nunavuet", children = list(list(name = "Iqaluit"))), list(name = "NWT", children = list(list(name = "Yellowknife"))), 
        list(name = "Alberta", children = list(list(name = "Edmonton"))), list(name = "British Columbia", children = list(list(name = "Victoria"), 
            list(name = "Vancouver"))), list(name = "Yukon", children = list(list(name = "Whitehorse")))))
    d3Network:::d3Tree(List = CanadaPC, fontsize = 10, diameter = 500)
}





library(arules)

function_to_run <- function() {
    list <- list(c(2L, 11L, 26L, 33L, 36L, 51L, 60L, 62L, 64L, 66L, 70L, 111L, 114L), c(3L, 10L, 26L, 31L, 39L, 50L, 60L, 
        62L, 63L, 66L, 69L, 111L, 114L), c(2L, 8L, 21L, 29L, 41L, 51L, 60L, 62L, 63L, 66L, 70L, 111L, 114L), c(3L, 8L, 19L, 
        31L, 41L, 50L, 58L, 62L, 63L, 66L, 70L, 111L, 114L), c(2L, 8L, 26L, 31L, 45L, 55L, 58L, 61L, 63L, 66L, 70L, 77L, 
        114L))
    iLabels <- c("age=Young", "age=Middle-aged", "age=Senior", "age=Old", "workclass=Federal-gov", "workclass=Local-gov", 
        "workclass=Never-worked", "workclass=Private", "workclass=Self-emp-inc", "workclass=Self-emp-not-inc", "workclass=State-gov", 
        "workclass=Without-pay", "education=Preschool", "education=1st-4th", "education=5th-6th", "education=7th-8th", "education=9th", 
        "education=10th", "education=11th", "education=12th", "education=HS-grad", "education=Prof-school", "education=Assoc-acdm", 
        "education=Assoc-voc", "education=Some-college", "education=Bachelors", "education=Masters", "education=Doctorate", 
        "marital-status=Divorced", "marital-status=Married-AF-spouse", "marital-status=Married-civ-spouse", "marital-status=Married-spouse-absent", 
        "marital-status=Never-married", "marital-status=Separated", "marital-status=Widowed", "occupation=Adm-clerical", 
        "occupation=Armed-Forces", "occupation=Craft-repair", "occupation=Exec-managerial", "occupation=Farming-fishing", 
        "occupation=Handlers-cleaners", "occupation=Machine-op-inspct", "occupation=Other-service", "occupation=Priv-house-serv", 
        "occupation=Prof-specialty", "occupation=Protective-serv", "occupation=Sales", "occupation=Tech-support", "occupation=Transport-moving", 
        "relationship=Husband", "relationship=Not-in-family", "relationship=Other-relative", "relationship=Own-child", "relationship=Unmarried", 
        "relationship=Wife", "race=Amer-Indian-Eskimo", "race=Asian-Pac-Islander", "race=Black", "race=Other", "race=White", 
        "sex=Female", "sex=Male", "capital-gain=None", "capital-gain=Low", "capital-gain=High", "capital-loss=None", "capital-loss=Low", 
        "capital-loss=High", "hours-per-week=Part-time", "hours-per-week=Full-time", "hours-per-week=Over-time", "hours-per-week=Workaholic", 
        "native-country=Cambodia", "native-country=Canada", "native-country=China", "native-country=Columbia", "native-country=Cuba", 
        "native-country=Dominican-Republic", "native-country=Ecuador", "native-country=El-Salvador", "native-country=England", 
        "native-country=France", "native-country=Germany", "native-country=Greece", "native-country=Guatemala", "native-country=Haiti", 
        "native-country=Holand-Netherlands", "native-country=Honduras", "native-country=Hong", "native-country=Hungary", 
        "native-country=India", "native-country=Iran", "native-country=Ireland", "native-country=Italy", "native-country=Jamaica", 
        "native-country=Japan", "native-country=Laos", "native-country=Mexico", "native-country=Nicaragua", "native-country=Outlying-US(Guam-USVI-etc)", 
        "native-country=Peru", "native-country=Philippines", "native-country=Poland", "native-country=Portugal", "native-country=Puerto-Rico", 
        "native-country=Scotland", "native-country=South", "native-country=Taiwan", "native-country=Thailand", "native-country=Trinadad&Tobago", 
        "native-country=United-States", "native-country=Vietnam", "native-country=Yugoslavia", "income=small", "income=large")
    arules:::decode(x = list, itemLabels = iLabels)
}





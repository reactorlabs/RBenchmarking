library(ergm)

function_to_run <- function() {
    termIndices <- c(1L, 4L)
    t <- 1L
    item <- structure(list(list(structure(list(structure("b1cov(attr)", Rd_tag = "RCODE")), Rd_tag = "\\code"), structure("  (binary) (undirected) (bipartite) (dyad-independent) (quantitative nodalattribute) (frequently-used),\n", 
        Rd_tag = "TEXT"), structure("      ", Rd_tag = "TEXT"), structure(list(structure("b1cov(attr, form=\"sum\")", Rd_tag = "RCODE")), 
        Rd_tag = "\\code"), structure("  (valued)  (undirected) (bipartite) (dyad-independent) (quantitative nodal attribute) (frequently-used)\n", 
        Rd_tag = "TEXT"), structure("    ", Rd_tag = "TEXT")), list(structure(list(structure("Main effect of a covariate for\n", 
        Rd_tag = "TEXT"), structure("\tthe first mode in a bipartite (aka two-mode) network:", Rd_tag = "TEXT")), Rd_tag = "\\emph"), 
        structure("\n", Rd_tag = "TEXT"), structure("      The ", Rd_tag = "TEXT"), structure(list(structure("attr", Rd_tag = "RCODE")), 
            Rd_tag = "\\code"), structure(" argument specifies one or more quantitative attributes (see ", Rd_tag = "TEXT"), 
        structure(list(structure("Specifying Vertex\n", Rd_tag = "TEXT"), structure("\tAttributes and Levels", Rd_tag = "TEXT")), 
            Rd_tag = "\\link", Rd_option = structure("=node-attr", Rd_tag = "TEXT")), structure(" for details).  This term adds a single network statistic for each quantitative attribute or matrix column to the model equaling the total\n", 
            Rd_tag = "TEXT"), structure("      value of ", Rd_tag = "TEXT"), structure(list(structure("attr(i)", Rd_tag = "RCODE")), 
            Rd_tag = "\\code"), structure(" for all edges ", Rd_tag = "TEXT"), structure(list(list(structure("(i,j)", Rd_tag = "VERB"))), 
            Rd_tag = "\\eqn"), structure(" in the network. This\n", Rd_tag = "TEXT"), structure("      term may only be used with bipartite networks. For categorical attributes,\n", 
            Rd_tag = "TEXT"), structure("      see ", Rd_tag = "TEXT"), structure(list(structure("b1factor", Rd_tag = "RCODE")), 
            Rd_tag = "\\code"), structure(".\n", Rd_tag = "TEXT"), structure("\n", Rd_tag = "TEXT"), structure("      ", 
            Rd_tag = "TEXT"), structure("Note that \\code{ergm} versions 3.9.4 and earlier used different arguments for this term. See the above section on versioning for invoking the old behavior.", 
            Rd_tag = "USERMACRO", macro = "\\ThreeNineFour"), structure("Note that ", Rd_tag = "TEXT"), structure(list(structure("ergm", 
            Rd_tag = "RCODE")), Rd_tag = "\\code"), structure(" versions 3.9.4 and earlier used different arguments for this term. See the above section on versioning for invoking the old behavior.", 
            Rd_tag = "TEXT"))), Rd_tag = "\\item")
    ergm:::.extractCats(text = as.character(item[[1]][[termIndices[t] + 1]]))
}





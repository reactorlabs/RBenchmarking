iter <- 1

a <- 1
f <- function() a+a+a+a
f()
f()
# f has rir code baseline verison  register  [ double ]
print("DISASSEMBLE OUTSIDE --------------------------------------------------------------")
rir.disassemble(f)
a <- 1L

execute <- function(n) {
  #print(paste("BEGIN ITERATION ", toString(iter), " -------------------------------------------------------------   "))
 

  
  f()
  # On first iteration,  f has rir code baseline version  register  [ double | int ]
  #print("DISASSEMBLE 1 --------------------------------------------------------------")
  #rir.disassemble(f)

  f() #  On first iteration, f gets compiled for [int | real]
  #print("DISASSEMBLE 2 --------------------------------------------------------------")
  #rir.disassemble(f)

  for (i in 1:n) f()
  
  # On first iteration, using the profiler f gets recompiled to int only
  #print("FINAL DISASSEMBLE --------------------------------------------------------------")
  #rir.disassemble(f)
 
  #print(paste("END ITERATION ", toString(iter), " -------------------------------------------------------------   "))
  iter <<- iter + 1
}
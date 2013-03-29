require(inline)

CPPROOT <- '~/Dropbox/spring13/vis/c++/'

repulse <- cxxfunction(signature(nodesS = "numeric", chargeS = "numeric", threshS = "numeric", alphaS = "numeric"), paste(readLines(paste(CPPROOT, "repulse.cpp", sep="")), collapse = "\n"), plugin = "Rcpp", verbose = F)
repulse2 <- cxxfunction(signature(nodesS = "numeric", chargeS = "numeric", weightS = "numeric", alphaS = "numeric"), paste(readLines(paste(CPPROOT, "repulse2.cpp", sep="")), collapse = "\n"), plugin = "Rcpp", verbose = F)
perturbate <- cxxfunction(signature(nodesS = "numeric", tolS = "numeric"), paste(readLines(paste(CPPROOT, "perturbate.cpp", sep="")), collapse = "\n"), plugin = "Rcpp", verbose = F)
gravity <- cxxfunction(signature(nodesS = "numeric", strengthS = "numeric", centerS = "numeric", alphaS = "numeric"), paste(readLines(paste(CPPROOT, "gravity.cpp", sep="")), collapse = "\n"), plugin = "Rcpp", verbose = F)
homing2 <- cxxfunction(signature(startS = "numeric", currentS = "numeric", thresholdS = "numeric", strengthS = "numeric", alphaS = "numeric"), paste(readLines(paste(CPPROOT, "homing3.cpp", sep="")), collapse = "\n"), plugin = "Rcpp", verbose = F)
nonoverlap <- cxxfunction(signature(nodesS = "numeric", radiiS = "numeric"), paste(readLines(paste(CPPROOT, "nonoverlap.cpp", sep="")), collapse = "\n"), plugin = "Rcpp", verbose = F)

homing2 <- function(start, current, threshold, alpha){
	n <- dim(start)[1]
	disp <- matrix(data = 0, nrow = n, ncol = 2)

	dx <- current[, 1] - start[, 1]
	dy <- current[, 2] - start[, 2]
	
	# springpp <- cxxfunction( signature(), paste( readLines( "spring.cpp"), collapse = "\n" ), plugin = "Rcpp")
	
	for (i in 1:n){
		l <- sqrt(dx[i]^2 + dy[i]^2)
		# one-sided spring
		# want l = 0 if within distance
		if (l > 1e-6){
			l <- alpha * (l - threshold) / l
			disp[i, 1] <- disp[i, 1] - dx[i] * l / 2
			disp[i, 2] <- disp[i, 2] - dy[i] * l / 2
		}
	}
	
	disp
}
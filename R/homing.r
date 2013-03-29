homing <- function(start, current, strength, alpha){
	n <- dim(nodes)[1]
	disp <- matrix(data = 0, nrow = n, ncol = 2)

	dx <- current[, 1] - start[, 1]
	dy <- current[, 2] - start[, 2]
	l <- dx^2 + dy^2
	#idea: only contribute if l > tol (to help avoid just sending nodes right back)
	l <- l * (l > 1e-6)
	for (i in 1:n) {
		if (l[i] != 0){
			k <- alpha * strength / l[i];
			disp[i, 1] <- disp[i, 1] - dx[i] * k
	   	disp[i, 2] <- disp[i, 2] - dy[i] * k
		}
	}
	disp
}
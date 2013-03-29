perturbate <- function(nodes, tol){
	n <- dim(nodes)[1]	
	disp <- matrix(data = 0, nrow = n, ncol = 2)
	
	# d <- dist(nodes)
	# overlaps <- which(as.matrix(d) < 1e-3, arr.ind = T)
	# overlaps <- overlaps[overlaps[, 1] != overlaps[, 2], ]	
	# disp[unique(as.vector(overlaps)), 1]
	
	for (i in 1:(n-1)){
		for (j in (i+1):n){
			dx = nodes[i, 1] - nodes[j, 1]
			dy = nodes[i, 2] - nodes[j, 2]
			l = sqrt(dx^2 + dy^2)
			if (l < tol){
				disp[i, 1] = disp[i, 1] + rnorm(1) * sqrt(tol)
				disp[j, 1] = disp[j, 1] + rnorm(1) * sqrt(tol)
				disp[i, 2] = disp[i, 2] + rnorm(1) * sqrt(tol)
				disp[j, 2] = disp[j, 2] + rnorm(1) * sqrt(tol)
			}
		}
	}
	disp
}
gravity <- function(nodes, strength, center, alpha){
	n = dim(nodes)[1]
	disp = matrix(data = NA, nrow = n, ncol = 2, byrow = FALSE, dimnames = NULL)
	k = alpha * strength
	if (k > 1e-6){
		disp[, 1] <- (center[1] - nodes[, 1]) * k
		disp[, 2] <- (center[2] - nodes[, 2]) * k
	}
	disp
}
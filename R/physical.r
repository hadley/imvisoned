physical <- function(nodes1, nodes2, distance){
	n <- dim(nodes1)[1]
	disp = matrix(data = 0, nrow = n, ncol = 4)
	dx = nodes1[, 1] - nodes2[, 1]
	dy = nodes1[, 2] - nodes2[, 2]
	l <- sqrt(dx^2 + dy^2)
	r <- distance / l
	disp[, 1] <-  dx * r / 2
	disp[, 2] <-  dy * r / 2
	disp[, 3] <- -dx * r / 2
	disp[, 4] <- -dy * r / 2
	disp
}
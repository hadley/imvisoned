repulse <- function(nodes, charge, alpha){
	n = dim(nodes)[1]
	disp = matrix(data = 0, nrow = n, ncol = 2)
	
	for (i in 1:(n-1)){
		for (j in (i+1):n){
			dx = nodes[i, 1] - nodes[j, 1]
			dy = nodes[i, 2] - nodes[j, 2]
			l = sqrt(dx^2 + dy^2)
			# if (l < 1e-6){
			# 	# perturbate same nodes
			# 	dx = runif(1) / 100
			# 	dy = runif(1) / 100
			# 	l = sqrt(dx^2 + dy^2)		
			# }
			k = alpha * charge / l^2;
		   disp[i, 1] = disp[i, 1] - dx * k
		   disp[i, 2] = disp[i, 2] - dy * k
		   disp[j, 1] = disp[j, 1] + dx * k
		   disp[j, 2] = disp[j, 2] + dy * k				
		}
	}
	# for (i in 1:n){
	# 	for (j in 1:n){
	# 		if (i != j){
	# 			dx = nodes[i, 1] - nodes[j, 1]
	# 			dy = nodes[i, 2] - nodes[j, 2]
	# 			l = sqrt(dx^2 + dy^2)
	# 			# if (l < 1e-6){
	# 			# 	# perturbate same nodes
	# 			# 	dx = runif(1) / 100
	# 			# 	dy = runif(1) / 100
	# 			# 	l = sqrt(dx^2 + dy^2)		
	# 			# }
	# 			k = alpha * charge / l^2;
	# 			disp[i, 1] = disp[i, 1] - dx * k
	# 			disp[i, 2] = disp[i, 2] - dy * k		
	# 		}
	# 	}
	# }
	disp
}
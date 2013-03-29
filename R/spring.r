spring <- function(nodes, arcs, distance, alpha){
	n = dim(nodes)[1]
	m = dim(arcs)[1]
	disp = matrix(data = 0, nrow = n, ncol = 2)
	
	# springpp <- cxxfunction( signature(), paste( readLines( "spring.cpp"), collapse = "\n" ), plugin = "Rcpp")
	
	for (i in 1:m){
		id1 = arcs[i, 1]
		id2 = arcs[i, 2]
		indx1 = nodes$id == id1
		indx2 = nodes$id == id2
		info1 = nodes[indx1, ]
		info2 = nodes[indx2, ]
		x1 = info1[, 1] + disp[indx1, 1] 
		y1 = info1[, 2] + disp[indx1, 2]
		x2 = info2[, 1] + disp[indx2, 1]
		y2 = info2[, 2] + disp[indx2, 2]
		dx = x2 - x1
		dy = y2 - y1
		l = sqrt(dx^2 + dy^2)
		l = alpha * (l - distance) / l
		dx = dx * l
		dy = dy * l
		disp[indx1, 1] = disp[indx1, 1] + dx / 2
		disp[indx1, 2] = disp[indx1, 2] + dy / 2
		disp[indx2, 1] = disp[indx2, 1] - dx / 2
		disp[indx2, 2] = disp[indx2, 2] - dy / 2 		
	}
	disp
}
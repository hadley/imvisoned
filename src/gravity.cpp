Rcpp::NumericMatrix nodes(nodesS);
Rcpp::NumericVector center(centerS);
double strength = as<double>(strengthS);
double alpha = as<double>(alphaS);
double tol = 1e-6;

int n = nodes.nrow();

Rcpp::NumericMatrix disp(nodes.nrow(), nodes.ncol());

double k = alpha * strength;

if (k > tol){
	for (int i = 0; i < n; i++) {
		disp(i, 0) = (center[0] - nodes(i, 0)) * k;
		disp(i, 1) = (center[1] - nodes(i, 1)) * k;
	}
} else {
	disp.fill(0.0);
}

return disp;

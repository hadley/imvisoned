#include <Rcpp.h>
using namespace Rcpp;

//' @export
// [[Rcpp::export]]
NumericMatrix homing2 (const NumericMatrix& start, 
											 const NumericMatrix& current, 
											 double threshold, double strength, double alpha) {
	int n = start.nrow();

	NumericMatrix disp(start.nrow(), start.ncol());
	disp.fill(0.0);

	for (int i = 0; i < n; i++) {
					
		double dx = current(i, 0) - start(i, 0);
		double dy = current(i, 1) - start(i, 1);
		double l = sqrt(pow(dx, 2) + pow(dy, 2));
		
		if (l > 1e-6){
			l = alpha * (l - threshold) / l;
			disp(i, 0) -= strength * dx * l / 2;
			disp(i, 1) -= strength * dy * l / 2;
		}
	}

	return disp;
}
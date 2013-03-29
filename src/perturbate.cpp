#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
NumericMatrix perturbate(const NumericMatrix& nodes, 
                         double tol = 1e-6) {

  int n = nodes.nrow();

  NumericMatrix disp(nodes.nrow(), nodes.ncol());

  for (int i = 1; i < n; i++){
    for (int j = i; j < n; j++){
      double dx = nodes(i, 0) - nodes(j, 0);
      double dy = nodes(i, 1) - nodes(j, 1);
      double l = sqrt(pow(dx, 2) + pow(dy, 2));
      if (l < tol){
        disp(i, 0) = disp(i, 0) + (0.5 - drand48()) * 10 * tol;
        disp(j, 0) = disp(j, 0) + (0.5 - drand48()) * 10 * tol;
        disp(i, 1) = disp(i, 1) + (0.5 - drand48()) * 10 * tol;
        disp(j, 1) = disp(j, 1) + (0.5 - drand48()) * 10 * tol;
      }
    }
  }

  return disp;

}


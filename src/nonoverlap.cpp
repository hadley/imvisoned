Rcpp::NumericMatrix nodes(nodesS);
Rcpp::NumericMatrix radii(radiiS);

double current_i, current_j, thresh;
int n = nodes.nrow();

Rcpp::NumericMatrix disp(nodes.nrow(), nodes.ncol());
disp.fill(0.0);

for (int i = 0; i < n; i++) {
  current_i = radii[i];
  for (int j = i+1; j < n; j++) {
        
    double dx = nodes(i, 0) - nodes(j, 0);
    double dy = nodes(i, 1) - nodes(j, 1);
    double l = sqrt(pow(dx, 2) + pow(dy, 2));
    
    current_j = radii[j];
    thresh = current_i + current_j;
    
    if (l < thresh){
      double k = 1 / pow(l, 2);
  
      disp(i, 0) += current_i * dx * k;
      disp(i, 1) += current_i * dy * k;
      disp(j, 0) -= current_j * dx * k;
      disp(j, 1) -= current_j * dy * k;
    }
  }
}
return disp;

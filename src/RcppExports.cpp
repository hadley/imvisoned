// This file was generated by Rcpp::compileAttributes
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// gravity
NumericMatrix gravity(const NumericMatrix& nodes, double strength, const NumericVector& center, double alpha);
RcppExport SEXP imvisoned_gravity(SEXP nodesSEXP, SEXP strengthSEXP, SEXP centerSEXP, SEXP alphaSEXP) {
BEGIN_RCPP
    Rcpp::RNGScope __rngScope;
    NumericMatrix nodes = Rcpp::as<NumericMatrix >(nodesSEXP);
    double strength = Rcpp::as<double >(strengthSEXP);
    NumericVector center = Rcpp::as<NumericVector >(centerSEXP);
    double alpha = Rcpp::as<double >(alphaSEXP);
    NumericMatrix __result = gravity(nodes, strength, center, alpha);
    return Rcpp::wrap(__result);
END_RCPP
}
// homing2
NumericMatrix homing2(const NumericMatrix& start, const NumericMatrix& current, double threshold, double strength, double alpha);
RcppExport SEXP imvisoned_homing2(SEXP startSEXP, SEXP currentSEXP, SEXP thresholdSEXP, SEXP strengthSEXP, SEXP alphaSEXP) {
BEGIN_RCPP
    Rcpp::RNGScope __rngScope;
    NumericMatrix start = Rcpp::as<NumericMatrix >(startSEXP);
    NumericMatrix current = Rcpp::as<NumericMatrix >(currentSEXP);
    double threshold = Rcpp::as<double >(thresholdSEXP);
    double strength = Rcpp::as<double >(strengthSEXP);
    double alpha = Rcpp::as<double >(alphaSEXP);
    NumericMatrix __result = homing2(start, current, threshold, strength, alpha);
    return Rcpp::wrap(__result);
END_RCPP
}
// nonoverlap
NumericMatrix nonoverlap(const NumericMatrix& nodes, const NumericVector& radii);
RcppExport SEXP imvisoned_nonoverlap(SEXP nodesSEXP, SEXP radiiSEXP) {
BEGIN_RCPP
    Rcpp::RNGScope __rngScope;
    NumericMatrix nodes = Rcpp::as<NumericMatrix >(nodesSEXP);
    NumericVector radii = Rcpp::as<NumericVector >(radiiSEXP);
    NumericMatrix __result = nonoverlap(nodes, radii);
    return Rcpp::wrap(__result);
END_RCPP
}
// perturbate
NumericMatrix perturbate(const NumericMatrix& nodes, double tol = 1e-6);
RcppExport SEXP imvisoned_perturbate(SEXP nodesSEXP, SEXP tolSEXP) {
BEGIN_RCPP
    Rcpp::RNGScope __rngScope;
    NumericMatrix nodes = Rcpp::as<NumericMatrix >(nodesSEXP);
    double tol = Rcpp::as<double >(tolSEXP);
    NumericMatrix __result = perturbate(nodes, tol);
    return Rcpp::wrap(__result);
END_RCPP
}
// repulse
NumericMatrix repulse(const NumericMatrix& nodes, double charge, double thresh, double alpha);
RcppExport SEXP imvisoned_repulse(SEXP nodesSEXP, SEXP chargeSEXP, SEXP threshSEXP, SEXP alphaSEXP) {
BEGIN_RCPP
    Rcpp::RNGScope __rngScope;
    NumericMatrix nodes = Rcpp::as<NumericMatrix >(nodesSEXP);
    double charge = Rcpp::as<double >(chargeSEXP);
    double thresh = Rcpp::as<double >(threshSEXP);
    double alpha = Rcpp::as<double >(alphaSEXP);
    NumericMatrix __result = repulse(nodes, charge, thresh, alpha);
    return Rcpp::wrap(__result);
END_RCPP
}
// repulse2
NumericMatrix repulse2(const NumericMatrix& nodes, double charge, const NumericMatrix& weight, double alpha);
RcppExport SEXP imvisoned_repulse2(SEXP nodesSEXP, SEXP chargeSEXP, SEXP weightSEXP, SEXP alphaSEXP) {
BEGIN_RCPP
    Rcpp::RNGScope __rngScope;
    NumericMatrix nodes = Rcpp::as<NumericMatrix >(nodesSEXP);
    double charge = Rcpp::as<double >(chargeSEXP);
    NumericMatrix weight = Rcpp::as<NumericMatrix >(weightSEXP);
    double alpha = Rcpp::as<double >(alphaSEXP);
    NumericMatrix __result = repulse2(nodes, charge, weight, alpha);
    return Rcpp::wrap(__result);
END_RCPP
}

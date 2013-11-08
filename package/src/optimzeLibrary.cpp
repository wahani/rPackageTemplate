// [[Rcpp::depends(RcppArmadillo)]]

#include <RcppArmadillo.h>
using namespace Rcpp;

// [[Rcpp::export]]
arma::mat reSAR1(arma::mat W, double rho) {
   
   int n = W.n_rows;
   
   arma::mat I = arma::eye<arma::mat>(n, n);
   arma::mat S1 = I - rho * W;
   return inv(sympd(S1.t() * S1));
}

// [[Rcpp::export]]
arma::mat matV(double sigma1, arma::mat Ome1, arma::mat A, arma::mat Z1) {
  return sigma1 * Z1 * Ome1 * Z1.t() + A;
}

/*
// [[Rcpp::export]]
arma::mat matA(double sigma2, arma::mat Ome2, int nDomains, int nTime, arma::vev sigmaSamplingError) {
  
  diagTemp <- sigma2 * omega2Diag(Ome2, nDomains)
  diag(diagTemp) <- diag(diagTemp) + sigmaSamplingError
  diagTemp
}*/
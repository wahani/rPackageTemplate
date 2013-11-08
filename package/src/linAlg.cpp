// [[Rcpp::depends(RcppArmadillo)]]

#include <RcppArmadillo.h>
using namespace Rcpp;

// [[Rcpp::export]]
arma::mat cppArmFunc(arma::mat X) {
   
   /*int n = Xr.nrow(), k = Xr.ncol();
   arma::mat X(Xr.begin(), n, k, false);*/
   
   arma::mat Xt = X.t() * X;
   arma::mat xRet = Xt.i() * Xt;
      
   return xRet;
}

// [[Rcpp::export]]
arma::mat cppArmFuncOpt(arma::mat X) {
   
   arma::mat XX = X.t() * X;
   arma::mat xRet = inv(sympd(XX)) * XX;
      
   return xRet;
}

// [[Rcpp::export]]
arma::mat cppArmFuncPseudo(arma::mat X) {
   
   arma::mat XX = X.t() * X;
   arma::mat xRet = pinv(XX) * XX;
      
   return xRet;
}

// [[Rcpp::export]]
arma::mat cppArmFuncChol(arma::mat X) {
   
   arma::mat XX = trans(X) * X;
   arma::mat Rinv = inv(trimatu(chol(XX)));
   arma::mat xRet = Rinv * trans(Rinv) * XX;
      
   return xRet;
}
\name{fitSTEBLUP}
\alias{fitSTEBLUP}
\title{fitSTEBLUP}
\usage{
  fitSTEBLUP(formula, dat, beta, sigma, rho,
    sigmaSamplingError = seSigmaClosure(nDomains, nTime)(),
    nDomains = getNDomains(dat), nTime = getNTime(dat),
    w0 = w0Matrix(nDomains), w = w0/rowSums(w0),
    tol = 0.001, method = "Nelder-Mead", maxIter = 500)
}
\arguments{
  \item{formula}{formula for the fixed effects part}

  \item{dat}{data with dependent and independent variable
  as they are used in formula. The data should contain a
  variable \code{Domain} and \code{Time} indicating the
  domain and time period for each observation respectively}

  \item{beta,}{sigma, rho start values for the parameters}

  \item{sigmaSamplingError}{True variances for the sampling
  errors}

  \item{nDomains}{the number of domains. Will be determined
  by default, see \code{dat}}

  \item{nTime}{the number of time periods. Will be
  determined by default, see \code{dat}}

  \item{w0}{proximity matrix - not needed in the call to
  \code{FitSpatioTemporalFH}}

  \item{w}{at the moment row-standardized proximity matrix}

  \item{tol}{numerical tolerance for algorithm}

  \item{method}{method used by the function
  \code{\link{optim}} - not needed in the call to
  \code{FitSpatioTemporalFH}}

  \item{maxIter}{maximal number of iterations}
}
\description{
  Wrapper function for the estimation of the
  spatio-temporal-FH model as in Marhuenda (2012). Uses the
  function \code{FitSpatioTemporalFH} provided by Sample
  Deliverable 22: Software on Small Area Estimation
}
\examples{
require(spatioTemporalData); require(SAE)
set.seed(3)
setup <- simSetupMarhuenda(nDomains=30, nTime=5, sarCorr=0.5, arCorr=0.5, n = 200)
output <- simRunMarhuenda(setup)
dat <- slot(output[[1]], "data")[[1]]
result <- fitSTEBLUP(y~x, dat, c(0,1), c(1,1), c(0.5,0.5))
summary(result)
}


\name{optimizeParameters}
\alias{optimizeParameters}
\title{optimizeParameters}
\usage{
  optimizeParameters(modelSpecs)
}
\arguments{
  \item{modelSpecs}{list with all necessary components for
  estimation}
}
\description{
  find optimal Parameters coefficients for given variance
  parameters. This is a an "iterative wraper" of
  \code{\link{optimizeBeta}}, \code{\link{optimizeRho}} and
  \code{\link{optimizeSigma}}
}


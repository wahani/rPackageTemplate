\name{getEvalCrit}
\alias{getEvalCrit}
\title{evaluate simulation results}
\usage{
  getEvalCrit(simResults, critFunctionName = "calcRRMSE",
    scenario = "")
}
\arguments{
  \item{simResults}{a simSetup object with simulation
  results}

  \item{critFunctionName}{a function name. Function with
  two arguments. First is the vector of true values, second
  the vector of predicitons.}
}
\description{
  evaluate simulation results
}


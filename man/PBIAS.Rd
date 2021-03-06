% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BIAS.R
\name{PBIAS}
\alias{PBIAS}
\title{Compute bias as a percentage}
\usage{
PBIAS(obs, sim)
}
\arguments{
\item{obs}{Observed values as a numeric vector.}

\item{sim}{Simulated values values as a numeric vector.}
}
\value{
If successful returns the percentage of bias as an integer. If unsuccessful, returns the value \code{FALSE}.
}
\description{
Compute bias as a percentage
}
\examples{
obs <- runif(100)
sim <- runif(100)
PBIAS(obs, sim)
}
\author{
Muluneh A. Mekonnen
}

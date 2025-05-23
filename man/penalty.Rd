% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discovr_data.R
\docType{data}
\name{penalty}
\alias{penalty}
\title{Penalty kicks data}
\format{
A tibble with 75 rows and 5 variables.
}
\source{
\href{https://www.discovr.rocks/csv/penalty.csv}{www.discovr.rocks/csv/penalty.csv}
}
\usage{
penalty
}
\description{
A dataset from Field, A. P. (2026). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
}
\details{
Fictional data set looking at predictors of success of penalty takers in soccer (or whatever sport you enjoy).
The outcome variable is whether a penalty is scored or missed. Based on (imaginary) past research
there are two factors that reliably predict whether a penalty kick will be missed or scored: (1) the extent to which
the penalty taker is prone to worry (measured using the Penn State Worry Questionnaire, PSWQ); and (2) the past success rate of the penalty taker.
State anxiety is also likely detrimental effects on performance so it was also measured. The data contain the following variables:
\itemize{
\item \strong{id}: Penalty taker's id
\item \strong{pswq}: proneness to worry on the Penn State Worry Questionnaire, PSWQ
\item \strong{anxious}: state anxiety
\item \strong{previous}: The percentage of previous penalties scored (to the nearest percent)
}
}
\keyword{datasets}

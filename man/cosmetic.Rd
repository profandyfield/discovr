% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discovr_data.R
\docType{data}
\name{cosmetic}
\alias{cosmetic}
\title{Cosmetic surgery data}
\format{
A tibble with 1376 rows and 7 variables.
}
\source{
\href{https://www.discovr.rocks/csv/cosmetic.csv}{www.discovr.rocks/csv/cosmetic.csv}
}
\usage{
cosmetic
}
\description{
A dataset from Field, A. P. (2026). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
}
\details{
Fictitious example based on quality of life predicted from undergoing cosmetic surgery. Cosmetic surgery is on the increase. For example,
in the USA, there was a 1600\% increase in cosmetic surgical and non-surgical treatments between 1992 and 2002.
There are two main reasons to have cosmetic surgery: (1) to help a physical problem; and (2) to change your external appearance when there is no underlying physical pathology.
This example uses fictitious data looks at the effects of cosmetic surgery on quality of life. The variables in the data are:
\itemize{
\item \strong{id}: The participant id
\item \strong{clinic}: Categorical variable that indicates which of 21 clinics the person attended to have their surgery.
\item \strong{reason}: Categorical variable that indicates whether the person had or is waiting to have surgery purely to change their appearance or because of a physical reason.
\item \strong{base_qol}: Quality of life pre-surgery on a percentage scale (0\% = the worst possible quality of life, 100\% = the best possible quality of life).
\item \strong{post_qol}: Quality of life after cosmetic surgery on a percentage scale (0\% = the worst possible quality of life, 100\% = the best possible quality of life).
\item \strong{days}: The number of days since surgery.
\item \strong{bdi}: Levels of depression using the Beck Depression Inventory (BDI).
}
}
\keyword{datasets}

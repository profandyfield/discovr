% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discovr_data.R
\docType{data}
\name{cetinkaya_2006}
\alias{cetinkaya_2006}
\title{Cetinkaya and Domjan (2006) data}
\format{
A tibble with 59 rows and 6 variables.
}
\source{
\href{https://www.discovr.rocks/csv/cetinkaya_2006.csv}{www.discovr.rocks/csv/cetinkaya_2006.csv}
}
\usage{
cetinkaya_2006
}
\description{
A dataset from Field, A. P. (2026). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
}
\details{
Some quail develop fetishes. Really. In studies where a terrycloth object acts as a sign that a mate will shortly
become available, some quail start to direct their sexuial behaviour towards the terrycloth object.
In evolutionary terms, this fetishistic behaviour seems counterproductive because sexual behaviour becomes directed
towards something that cannot provide reproductive success. However, perhaps this behaviour serves to prepare the
organism for the 'real' mating behaviour.

Cetinkaya and Domjan (2006) sexually conditioned male quail.
All quail experienced the terrycloth stimulus and an opportunity to mate, but for some the terrycloth stimulus
immediately preceded the mating opportunity (paired group) whereas others experienced a 2-hour delay
(this acted as a control group because the terrycloth stimulus did not predict a mating opportunity).
In the paired group, quail were classified as fetishistic or not depending on whether they engaged in sexual
behaviour with the terrycloth object.

During a test trial the quail mated with a female and the researchers measured the percentage of eggs fertilized,
the time spent near the terrycloth object, the latency to initiate copulation, and copulatory efficiency.
If this fetishistic behaviour provides an evolutionary advantage then we would expect the fetishistic quail to
fertilize more eggs, initiate copulation faster and be more efficient in their copulations.
These are the data from that study. The data contains the following variables:
\itemize{
\item \strong{groups}: The group to which each quail belonged (Fetishistics, NonFetishistics, or Control)
\item \strong{paired}: whether the terrycloth predicted a mating opportunity (paired) or not (unpaired)
\item \strong{egg_percent}: percentage of eggs fetilised by male
\item \strong{duration}: Time spent near terrycloth object
\item \strong{latency}: Time taken to initiate copulation
\item \strong{efficiency}: Copulatory efficiancy
}
}
\references{
\itemize{
\item Cetinkaya, H., & Domjan, M. (2006). Sexual fetishism in a quail (\emph{Coturnix japonica}) model system: Test of reproductive success. \emph{Journal of Comparative Psychology}, \emph{120}, 427–432. \doi{10.1037/0735-7036.120.4.427}
}
}
\keyword{datasets}

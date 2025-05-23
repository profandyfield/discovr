% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discovr_data.R
\docType{data}
\name{hill_2007}
\alias{hill_2007}
\title{Hill et al. (2007) data}
\format{
A tibble with 503 rows and 4 variables.
}
\source{
\href{https://www.discovr.rocks/csv/hill_2007.csv}{www.discovr.rocks/csv/hill_2007.csv}
}
\usage{
hill_2007
}
\description{
A dataset from Field, A. P. (2026). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
}
\details{
Hill et al.  (2007) examined whether providing children with a leaflet based on the \emph{theory of planned behaviour} increased their
exercise. There were four different interventions (intervention): a control group, a leaflet, a leaflet and quiz, and a leaflet and a plan.
A total of 503 children from 22 different classrooms were sampled (classroom). The 22 classrooms were randomly assigned to the four different conditions.
Children were asked \emph{On average over the last three weeks, I have exercised energetically for at least 30 minutes ___ times per week} after the intervention (post_exercise).
The data from the study has three variables:
\itemize{
\item \strong{intervention}: The intervention assigned to the classroom (control group, leaflet, leaflet and quiz, leaflet and plan).
\item \strong{classroom}: the classroom to which a child belonged
\item \strong{pre_exercise}: The exercise score pre-intervention (it's unclear to me from the paper how this was derived from the question asked!)
\item \strong{post_exercise}: The exercise score post-intervention (see above)
}
}
\references{
\itemize{
\item Hill, C., Abraham, C., & Wright, D. B. (2007). Can theory-based messages in combination with cognitive prompts promote exercise in classroom settings? \emph{Social Science & Medicine}, 65, 1049–1058. \doi{10.1016/j.socscimed.2007.04.024}
}
}
\keyword{datasets}

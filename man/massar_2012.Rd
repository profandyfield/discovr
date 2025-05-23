% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discovr_data.R
\docType{data}
\name{massar_2012}
\alias{massar_2012}
\title{Massar et al. (2012) data}
\format{
A tibble with 83 rows and 4 variables
}
\source{
\href{https://www.discovr.rocks/csv/massar_2012.csv}{www.discovr.rocks/csv/massar_2012.csv}
}
\usage{
massar_2012
}
\description{
A dataset from Field, A. P. (2026). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
}
\details{
Everyone likes a good gossip from time to time, but apparently it has an evolutionary function.
One school of thought is that gossip is used as a way to derogate sexual competitors – especially
by questioning their appearance and sexual behaviour. Apparently men rate gossiped-about women as
less attractive, and they are more influenced by the gossip if it came from a woman with a high mate value
(i.e. attractive and sexually desirable). Karlijn Massar and her colleagues hypothesized that if this theory
is true then (1) younger women will gossip more because there is more mate competation at younger ages; and
(2) this relationship will be mediated by the mate value of the person (because for those with high mate value
gossiping for the purpose of sexual competition will be more effective). These are the data from that study.

Eighty-three women aged from 20 to 50 (age) completed questionnaire measures of their tendency to gossip (gossip) and their sexual desirability (mate_value). Lambert et al. (2012) found that pornography is related to infidelity. This object contains the data from that study.
\itemize{
\item \strong{id}: participant ID (not from the original data)
\item \strong{age}: participant age in years
\item \strong{gossip}: average response on a tendency to gossip scale. Participants responded to 16 items about their tendency to gossip following the presentation of a scenario. Particpants rated their likelihood to engage in certain behaviours such as 'I would tell negative things about Karen to other people' from 1 (strongly disagree) to 5 (strongly agree). This score is the average response across the 16 items.
\item \strong{mate_value}: average response to items from the Self-Perceived Mating Success Scale (each item ranged from 1 = not at all, 5 = very much, so a high score is a high mate value)
}
}
\references{
\itemize{
\item Massar, K., Buunk, A. P., & Rempt, S. (2012). Age differences in women's tendency to gossip are mediated by their mate value. \emph{Personality and Individual Differences}, 52, 106–109. \doi{10.1016/j.paid.2011.09.013}
}
}
\keyword{datasets}

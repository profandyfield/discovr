% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discovr_data.R
\docType{data}
\name{penalty_shootout}
\alias{penalty_shootout}
\title{Penalty kicks data}
\format{
A tibble with 868 rows and 4 variables.
}
\source{
\href{https://www.discovr.rocks/csv/penalty_shootout.csv}{www.discovr.rocks/csv/penalty.csv}
}
\usage{
penalty_shootout
}
\description{
A dataset from Field, A. P. (2026). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
}
\details{
Fictional data set looking at predictors of success of penalty takers in soccer (or whatever sport you enjoy).
Imagine we wanted to research the factors that affect penalty-taking success. In soccer, games in knockout competitions
are sometimes decided by a penalty shootout. The format is that each team takes five penalties using five different players.
inning team is the one that scores the most goals from the five penalties. If after this initial stage both teams have
the same number of goals it goes to an excitingly named 'sudden death'. Fortunately no one suddenly dies,
but instead each team takes a penalty and if both score or both miss another penalty is taken, but if one team
scores and the other misses the scoring team wins the game. As you might imagine, the pressure ramps up considerably
with each successive penalty. If the first player misses his or her kick, then it's not necessarily a disaster
because there are four more kicks to be taken, and (most important) opportunities for your opponent to miss or to make up for your mistake.
However, if you are the player taking the fifth penalty you are under a lot more pressure because a miss is highly likely to result in your team losing.
The pressure ramps up, the more penalties are taken. A sports scientist wanted to look at whether the position in the penalty shootout did predict success in a shootout.
She collated data from penalty shootouts across various worldwide men's and women's soccer leagues as well as getting coaches'
ratings of players. The outcome variable is whether a penalty is scored or missed.

The data contain the following variables:
\itemize{
\item \strong{id}: Penalty taker's id
\item \strong{ability}: Each player was rated against all other players the coaches had coached using a scale from 1 to 10, where 1 is 'their penalties are in the bottom 10\% of players I've coached', 2 is 'their penalties are in the bottom 10–20\% of players I've coached', and 10 is 'their penalties are in the top 10\% of players I've coached'.
\item \strong{position}: position in the shootout (1 = first penalty, 5 = fifth penalty).
\item \strong{scored}: Whether the penalty was missed or scored
}
}
\keyword{datasets}

#' Method of teaching data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' The data show the score (out of 20) for 20 different students, some of whom are male and some female,
#' and some of whom were taught using positive reinforcement (being nice) and others who were taught using punishment (electric shock)
#'
#' @format A tibble with 20 rows and 3 variables:
#' \describe{
#'   \item{method}{The type of teaching method used}
#'   \item{sex}{Biological sex of the individual}
#'   \item{mark}{The score out of 20 on a test}
#' }
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}

"teaching"

#' Oxoby (2008) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' AC/DC are one one of the best-selling hard rock bands in history, with around 100 million certified sales, and an estimated 200 million actual sales.
#' In 1980 their original singer Bon Scott died of alcohol poisoning and choking on his own vomit. He was replaced by Brian Johnson who has been their singer ever since.
#' Debate rages with unerring frequency within the rock music press over who is the better frontman. The conventional wisdom is that Bon Scott was better although personally, and I seem to be somewhat in the minority here, I prefer Brian Johnson.
#' Anyway, Robert Oxoby in a playfull paper decided to put this argument to bed once and for all (Oxoby, 2008).
#' Using a task from experimental economics called the ultimatum game, individuals are assigned the role of either proposer or responder and paired randomly.
#' Proposers are allocated $10 from which they have to make a financial offer to the responder (i.e., $2). The responder can accept or reject this offer. If the offer is rejected neither party gets any money,
#' but if the offer is accepted the responder keeps the offered amount (e.g., $2), and the proposer keeps the original amount minus what they offered (e.g., $8). For half of the participants the song
#' ‘It’s a long way to the top’ sung by Bon Scott was playing in the background, for the remainder ‘Shoot to thrill’ sung by Brian Johnson was playing. Oxoby measured the offers made by proposers,
#' and the minimum offers that responders accepted (called the minimum acceptable offer). He reasoned that people would accept lower offers and propose higher offers when listening to something they like
#' (because of the ‘feel-good factor’ the music creates). Therefore, by comparing the value of offers made and the minimum acceptable offers in the two groups he could see whether people have more of a feel
#' good factor when listening to Bon or Brian. There were 18 people per group.
#'
#' These data are approximated from graphs within his paper:
#' Oxoby, R. J. (2008). On the efficiency of AC/DC: Bon Scott versus Brian Johnson. *Economic Enquiry*, *47(3)*, 598-602. [doi](10.1111/j.1465-7295.2008.00138.x)
#'
#' @format A tibble with 36 rows and 2 variables:
#' \describe{
#'   \item{singer}{The type of teaching method used}
#'   \item{offer}{Offer made (in dollars)}
#'   \item{mao}{The minimum acceptable offer, MAO, in dollars}
#' }
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}

"acdc"

#' Shopping and exercise data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' According to some highly unscientific research done by a UK department store chain and reported in [Marie Claire magazine](http://ow.ly/9Dxvy), shopping is good for you.
#' They found that the average woman spends 150 minutes and walks 2.6 miles when she shops, burning off around 385 calories. In contrast, men spend only about 50 minutes shopping, covering 1.5 miles.
#' This was based on strapping a pedometer on a mere 10 participants. Although I don’t have the actual data, some simulated data based on these means are in this file.
#'
#' @format A tibble with 10 rows and 3 variables:
#' \describe{
#'   \item{sex}{Biological sex of the individual}
#'   \item{distance}{The distance travelled in miles}
#'   \item{time}{The time spent shopping in minutes}
#' }
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}

"shopping"



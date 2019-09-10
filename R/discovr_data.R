<<<<<<< HEAD
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
#' These data are approximated from graphs within Oxoby (2008). The object contains the following variables:
#'
#' \itemize{
#'   \item \strong{singer}: the type of teaching method used
#'   \item \strong{offer}: offer made (in dollars)
#'   \item \strong{mao}: the minimum acceptable offer, MAO, in dollars
#' }
#' @docType data
#' @format A tibble with 36 rows and 2 variables.
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}
#' @references
#' \itemize{
#'    \item Oxoby, R. J. (2008). On the efficiency of AC/DC: Bon Scott versus Brian Johnson. \emph{Economic Enquiry}, \emph{47}, 598-602. \url{https://doi.org/10.1111/j.1465-7295.2008.00138.x}
#'}

"acdc"

#' Exam anxiety data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' a psychologist was interested in the effects of exam stress on exam performance. She devised and validated a questionnaire to assess
#' state anxiety relating to exams (called the Exam Anxiety Questionnaire, or EAQ). This scale produced a measure of anxiety scored out of 100.
#' Anxiety was measured before an exam, and the percentage mark of each student on the exam was used to assess the exam performance. These data are fictional.
#' The object contains the following variables:
#'
#' \itemize{
#'   \item \strong{id}: participant id
#'   \item \strong{revise}: the time spent revising for the exam (hours)
#'   \item \strong{exam_grade}: the percentage score of each student on the exam
#'   \item \strong{anxiety}: anxiety score on the EAQ out of 100
#'   \item \strong{sex}: biological sex of the participant
#'
#' }
#' @docType data
#' @format A tibble with 103 rows and 5 variables.
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}

"exam_anxiety"
=======
>>>>>>> 6a2adff7e9b12384dc4c29f43d98f870f6b23049

#' Goat or dog data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictitious data inspired by two news stories that I enjoyed. The first was about a Sudanese man who was forced to marry a goat (\url{http://ow.ly/9DyyP})
#' after being caught having sex with it. I’m not sure he treated the goat to a nice dinner in a posh restaurant before taking advantage of her, but either way you have to feel sorry for the goat.
#' I’d barely had time to recover from that story when another appeared about an Indian man forced to marry a dog(\url{http://ow.ly/9DyFn}) to atone for stoning two dogs and stringing them up in a tree 15 years earlier.
#' Why anyone would think it’s a good idea to enter a dog into matrimony with a man with a history of violent behaviour towards dogs is beyond me.
#' Still, I wondered whether a goat or dog made a better spouse. I found (but not really) some other people who had been forced to marry goats and dogs and measured their life satisfaction and, also, how much they like animals.
#' The data contains the following variables:
#'
#' \itemize{
<<<<<<< HEAD
#'   \item \strong{wife}: whether the person married a goat or a dog
#'   \item \strong{animal}: how much the person likes animals
#'   \item \strong{life_satisfaction}: the person's life satisfaction score
=======
#'   \item \strong{wife}: Whether the person married a goat or a dog
#'   \item \strong{animal}: How much the person likes animals
#'   \item \strong{life_satisfaction}: The person's life satisfaction score
>>>>>>> 6a2adff7e9b12384dc4c29f43d98f870f6b23049
#' }
#' @format A tibble with 20 rows and 3 variables.
#' @docType data
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}

"animal_bride"

<<<<<<< HEAD
#' Jiminy Cricket data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictitious data inspired by my honeymoon at Disney in Orlando. The one blip in my tolerance of Disney, was their obsession with dreams coming true and wishing upon a star.
#' Dreams are good, but a completely blinkered view that they’ll come true without any work on your part is not. I think it highly unlikely that merely ‘wishing upon a star’ will make my dream come true.
#' I wonder if the seismic increase in youth internalizing disorders (Twenge, 2000, 2011) is, in part, caused by millions of Disney children reaching the rather depressing realization that ‘wishing upon a star’ didn’t work.
#' Anyway, imagine that I collected some data from 250 people on their level of success using a composite measure involving their salary, quality of life and how closely their life matches their aspirations.
#' This gave me a score from 0 (complete failure) to 100 (complete success). I then implemented an intervention: I told people that for the next 5 years they should either wish upon a star for their dreams to come true or work as hard as they could to make their dreams come true.
#' I measured their success again 5 years later. People were randomly allocated to these two instructions.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      .
#' The data contains the following variables:
#'
#' \itemize{
#'   \item \strong{id}: participant id
#'   \item \strong{strategy}: whether the person was allocated to the 'hard work' or 'wish upon a star' intervention
#'   \item \strong{success_pre}: the person's success from 0 (complete failure) to 100 (complete success) before the intervention using my dodgy composite measure.
#'   \item \strong{success_post}: the person's success from 0 (complete failure) to 100 (complete success) after 5 years of the intervention (again using my dodgy composite measure).
#' }
#' @format A tibble with 250 rows and 4 variables.
#' @docType data
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}

"jiminy_cricket"


=======
>>>>>>> 6a2adff7e9b12384dc4c29f43d98f870f6b23049
#' Johns et al. (2012) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' It is believed that males have a biological predispoition towards the colour red because it is sexually salient.
#' The theory suggests that women use the colour red as a proxy signal for genital colour to indicate ovulation and sexual proceptivity.
#' If this hypothesis is true then using the colour red in this way would have to attract men (otherwise it’s a pointless strategy).
#' In a novel study, Johns, Hargrave, and Newton-Fisher (2012) tested this idea by manipulating the colour of four pictures of female
#' geneitalia to make them increasing shades of red (pale pink, light pink, dark pink, red). Heterosexual males rated the resulting 16
#' pictures from 0 (unattractive) to 100 (attractive). These are the data from that study. The data contains the following variables:
#'
#' \itemize{
<<<<<<< HEAD
#'   \item \strong{partners}: sexual experience coded as a factor ('Very little' and 'Some")
#'   \item \strong{pale_pink}: male rating of the attractiveness of pale pink coloured female geneitalia from 0 to 100
#'   \item \strong{light_pink}: male rating of the attractiveness of light pink coloured female geneitalia from 0 to 100
#'   \item \strong{dark_pink}: male rating of the attractiveness of dark pink coloured female geneitalia from 0 to 100
#'   \item \strong{red}: male rating of the attractiveness of red coloured female geneitalia from 0 to 100
=======
#'   \item \strong{partners}: Sexual experience coded as a factor ('Very little' and 'Some")
#'   \item \strong{pale_pink}: Male rating of the attractiveness of pale pink coloured female geneitalia from 0 to 100
#'   \item \strong{light_pink}: Male rating of the attractiveness of light pink coloured female geneitalia from 0 to 100
#'   \item \strong{dark_pink}: Male rating of the attractiveness of dark pink coloured female geneitalia from 0 to 100
#'   \item \strong{red}: Male rating of the attractiveness of red coloured female geneitalia from 0 to 100
>>>>>>> 6a2adff7e9b12384dc4c29f43d98f870f6b23049
#' }
#' @format A tibble with 40 rows and 5 variables.
#' @docType data
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}

"johns_2012"


#' Metallica data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' The data show various pieces of information about past and present members of the band Metallica that may or may not be accurate at the time of writing (2019).
#' The data contains the following variables:
#'
#' \itemize{
<<<<<<< HEAD
#'   \item \strong{name}: the band member's name
#'   \item \strong{birth_date}: the band member's date of birth
#'   \item \strong{death_date}: the band member's date of death (where applicable)
#'   \item \strong{instrument}: the instrument played by the band member
#'   \item \strong{current_member}: is the member currently in the band? (True or False)
#'   \item \strong{songs_written}: the number of songs the band member has contributed to
#'   \item \strong{net_worth}: the band member's net worth as of 2019 according to some dodgy website
#'   \item \strong{worth_per_song}: the members net worth per song contributed to
=======
#'   \item \strong{name}: The band member's name
#'   \item \strong{birth_date}: The band member's date of birth
#'   \item \strong{death_date}: The band member's date of death (where applicable)
#'   \item \strong{instrument}: The instrument played by the band member
#'   \item \strong{current_member}: Is the member currently in the band? (True or False)
#'   \item \strong{songs_written}: The number of songs the band member has contributed to
#'   \item \strong{net_worth}: The band member's net worth as of 2019 according to some dodgy website
#'   \item \strong{worth_per_song}: The members net worth per song contributed to
>>>>>>> 6a2adff7e9b12384dc4c29f43d98f870f6b23049
#' }
#' @format A tibble with 7 rows and 8 variables.
#' @docType data
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}

"metallica"

<<<<<<< HEAD
#' The notebook data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictitious data about the film The Notebook. Imagine that a film company director was interested in whether there was really such a thing as a ‘chick flick’
#' (a film that has the stereotype of appealing to women more than to men). He took 20 men and 20 women and showed half of each sample a film that was supposed to be a ‘chick flick’ (The Notebook).
#' The other half watched a documentary about notebooks as a control. In all cases the company director measured participants’ arousal  as an indicator of how much they enjoyed the film.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     .
#' The data contains the following variables:
#'
#' \itemize{
#'   \item \strong{sex}: biological sex of the participant
#'   \item \strong{film}: whether the person watched The Notebook or a documentary about notebooks
#'   \item \strong{arousal}: the person's average physiological arousal (e.g., emotional response) during the film.
#' }
#' @format A tibble with 40 rows and 3 variables.
#' @docType data
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}

"notebook"


#' Ong et al. (2011) data: wide/messy format
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' A study by Ong et al., (2011) examining the relationship between a person's narcissism and other people’s ratings of their profile picture on Facebook.
#' The pictures were rated on each of four dimensions: coolness, glamour, fashionableness, and attractiveness. In addition, each person was measures on introversion/extroversion and narcissism.
#' These data are in messy/wide format. The data contains the following variables:
#'
#' \itemize{
#'   \item \strong{id}: a number identifying he participant
#'   \item \strong{age}: participant's age in years
#'   \item \strong{sex}: biological sex of the participant
#'   \item \strong{status}: frequency of changing ones Facebook status per week
#'   \item \strong{attractiveness}: rating of profile picture along the dimension of physical attractiveness (1 = not attractive, 5 = very attractive)
#'   \item \strong{fashionable}: rating of profile picture along the dimension of fashionable of profile picture (1 = not fashionable, 5 = very fashionable)
#'   \item \strong{glamour}: rating of profile picture along the dimension of glamour (1 = not glamourous, 5 = very glamourous)
#'   \item \strong{cool}: rating of profile picture along the dimension of cool (1 = not cool, 5 = very cool)
#'   \item \strong{profile}: sum of profile picture ratings
#'   \item \strong{extraversion}: score on the NEO Five-Factor Inventory (NEO-FFI) extraversion scale
#'   \item \strong{narcissism}: score on the Narcissistic Personality Questionnaire for Children-Revised (NPQC-R)
#' }
#' @format A tibble with 275 rows and 11 variables.
#' @docType data
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}
#' @references
#' \itemize{
#'    \item Ong, E. Y. L., Ang, R. P., Ho, J. C. M., Lim, J. C. Y., Goh, D. H., Lee, C. S., & Chua, A. Y. K. (2011). Narcissism, extraversion and adolescents’ self-presentation on Facebook. *Personality and Individual Differences*, 50, 180–185. [https://doi.org/10.1016/j.paid.2010.09.022](https://doi.org/10.1016/j.paid.2010.09.022)
#'}

"ong_2011"

#' Ong et al. (2011) data: tidy format
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' A study by Ong et al., (2011) examining the relationship between a person's narcissism and other people’s ratings of their profile picture on Facebook.
#' The pictures were rated on each of four dimensions: coolness, glamour, fashionableness, and attractiveness. In addition, each person was measures on introversion/extroversion and narcissism.
#' These data are in tidy format. The data contains the following variables:
#'
#' \itemize{
#'   \item \strong{id}: a number identifying he participant
#'   \item \strong{age}: participant's age in years
#'   \item \strong{sex}: biological sex of the participant
#'   \item \strong{status}: frequency of changing ones Facebook status per week
#'   \item \strong{profile}: sum of profile picture ratings
#'   \item \strong{extraversion}: score on the NEO Five-Factor Inventory (NEO-FFI) extraversion scale
#'   \item \strong{narcissism}: score on the Narcissistic Personality Questionnaire for Children-Revised (NPQC-R)
#'   \item \strong{rating_type}: the dimension along which profile pictures were rated (Attractiveness, Fashionable, Cool, Glamour)
#'   \item \strong{rating}: rating of the profile picture from 1 (not attractive/cool/fashionable/glamourous) to 5 (very attractive/cool/fashionable/glamourous)
#' }
#' @format A tibble with 1100 rows and 9 variables.
#' @docType data
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}
#' @references
#' \itemize{
#'    \item Ong, E. Y. L., Ang, R. P., Ho, J. C. M., Lim, J. C. Y., Goh, D. H., Lee, C. S., & Chua, A. Y. K. (2011). Narcissism, extraversion and adolescents’ self-presentation on Facebook. *Personality and Individual Differences*, 50, 180–185. [https://doi.org/10.1016/j.paid.2010.09.022](https://doi.org/10.1016/j.paid.2010.09.022)
#'}

"ong_tidy"



#' Method of teaching data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' The data show the score (out of 20) for 20 different students, some of whom are male and some female,
#' and some of whom were taught using positive reinforcement (being nice) and others who were taught using punishment (electric shock)
#'
#' \itemize{
#'   \item \strong{method}: the type of teaching method used
#'   \item \strong{sex}: biological sex of the individual
#'   \item \strong{mark}: the score out of 20 on a test
#' }
#' @format A tibble with 20 rows and 3 variables.
#' @docType data
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}

"teaching"
=======
#' Method of teaching data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' The data show the score (out of 20) for 20 different students, some of whom are male and some female,
#' and some of whom were taught using positive reinforcement (being nice) and others who were taught using punishment (electric shock)
#'
#' \itemize{
#'   \item \strong{method}: The type of teaching method used
#'   \item \strong{sex}: Biological sex of the individual
#'   \item \strong{mark}: The score out of 20 on a test
#' }
#' @format A tibble with 20 rows and 3 variables.
#' @docType data
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
#' These data are approximated from graphs within Oxoby (2008). The object contains the following variables:
#'
#' \itemize{
#'   \item \strong{singer}: The type of teaching method used
#'   \item \strong{offer}: Offer made (in dollars)
#'   \item \strong{mao}: The minimum acceptable offer, MAO, in dollars
#' }
#' @docType data
#' @format A tibble with 36 rows and 2 variables.
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}
#' @references
#' \itemize{
#'    \item Oxoby, R. J. (2008). On the efficiency of AC/DC: Bon Scott versus Brian Johnson. \emph{Economic Enquiry}, \emph{47}, 598-602. \url{https://doi.org/10.1111/j.1465-7295.2008.00138.x}
#'}

"acdc"
>>>>>>> 6a2adff7e9b12384dc4c29f43d98f870f6b23049

#' Shopping and exercise data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' According to some highly unscientific research done by a UK department store chain and reported in Marie Claire magazine (\url{http://ow.ly/9Dxvy}), shopping is good for you.
#' They found that the average woman spends 150 minutes and walks 2.6 miles when she shops, burning off around 385 calories. In contrast, men spend only about 50 minutes shopping, covering 1.5 miles.
#' This was based on strapping a pedometer on a mere 10 participants. Although I don’t have the actual data, some simulated data based on these means are in this file.
#'
#' \itemize{
<<<<<<< HEAD
#'   \item \strong{sex}: biological sex of the individual
#'   \item \strong{distance}: the distance travelled in miles
#'   \item \strong{time}: the time spent shopping in minutes
=======
#'   \item \strong{sex}: Biological sex of the individual
#'   \item \strong{distance}: The distance travelled in miles
#'   \item \strong{time}: The time spent shopping in minutes
>>>>>>> 6a2adff7e9b12384dc4c29f43d98f870f6b23049
#' }
#' @format A tibble with 10 rows and 3 variables.
#' @docType data
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}

"shopping"

#' Tea data (small sample)
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' One of my favourite activities, especially when trying to do brain-melting things like writing statistics books, is drinking tea. I am English, after all.
#' Fortunately, tea improves your cognitive function – well, it does in old Chinese people at any rate (Feng, Gwee, Kua, & Ng, 2010).
#' I may not be Chinese and I’m not that old, but I nevertheless enjoy the idea that tea might help me think. Here are some (fictional) data based on Feng et al.’s
#' study that measured the number of cups of tea drunk per day and cognitive functioning (out of 80) in 15 people.
#'

#' \itemize{
<<<<<<< HEAD
#'   \item \strong{tea}: the number of cups of tea a person drinks per day
#'   \item \strong{cog_fun}: cognitive functioning (out of 80)
=======
#'   \item \strong{tea}: The number of cups of tea a person drinks per day
#'   \item \strong{cog_fun}: Cognitive functioning (out of 80)
>>>>>>> 6a2adff7e9b12384dc4c29f43d98f870f6b23049
#' }
#' @format A tibble with 15 rows and 2 variables:
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}
#' @references
#' \itemize{
#'    \item Feng, L., Gwee, X., Kua, E. H., & Ng, T. P. (2010). Cognitive function and tea consumption in community dwelling older Chinese in Singapore. \emph{Journal of Nutrition Health & Aging}, \emph{14}, 433-438.
#'}

"tea15"

#' Zhang et al. (2013) (subsample)
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Statistics and maths anxiety are common and affect people’s performance on maths and stats assignments; women in particular can lack confidence in mathematics (Field, 2010).
#' Zhang, Schmader and Hall (2013) did an intriguing study in which students completed a maths test in which some put their own name on the test booklet,
#' whereas others were given a booklet that already had either a male or female name on. Participants in the latter two conditions were told that they would use this other person’s name for the purpose of the test.
#' Women who completed the test using a different name performed significantly better than those who completed the test using their own name. (There were no such significant effects for men.)
#' The data are a random subsample of Zhang et al.’s data with the following variables:
#'
#' \itemize{
<<<<<<< HEAD
#'   \item \strong{id}: participant ID
#'   \item \strong{sex}: participant's biological sex
#'   \item \strong{name_type}: the booklet condition to which the participant was allocated: Female fake name, Male fake name or Own name
#'   \item \strong{accuracy}: the participant's score on the maths test
=======
#'   \item \strong{id}: Participant ID
#'   \item \strong{sex}: Participant's biological sex
#'   \item \strong{name_type}: The booklet condition to which the participant was allocated: Female fake name, Male fake name or Own name
#'   \item \strong{accuracy}: The participant's score on the maths test
>>>>>>> 6a2adff7e9b12384dc4c29f43d98f870f6b23049
#' }
#' @format A tibble with 52 rows and 4 variables
#' @docType data
#' @source \url{https://www.discoveringstatistics.com/books/discovering-statistics-using-r/}
#' @references
#' \itemize{
#'    \item Field, A. P. (2010). Teaching Statistics. In D. Upton & A. Trapp (Eds.), \emph{Teaching Psychology in Higher Education} (pp. 134-163). Chichester, UK: Wiley-Blackwell.
#'    \item Zhang, S., Schmader, T., & Hall, W. M. (2013). L'eggo My Ego: Reducing the Gender Gap in Math by Unlinking the Self from Performance. \emph{Self and Identity}, \emph{12}, 400-412. \url{https://doi.org/10.1080/15298868.2012.687012}
#'}

"zhang_sample"

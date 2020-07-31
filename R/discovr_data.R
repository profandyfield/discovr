
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
#'   * **singer**: the type of teaching method used
#'   * **offer**: offer made (in dollars)
#'   * **mao**: the minimum acceptable offer, MAO, in dollars
#'
#' @docType data
#' @format A tibble with 36 rows and 2 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Oxoby, R. J. (2008). On the efficiency of AC/DC: Bon Scott versus Brian Johnson. *Economic Enquiry*, *47*, 598-602. [https://doi.org/10.1111/j.1465-7295.2008.00138.x](https://doi.org/10.1111/j.1465-7295.2008.00138.x)
#'

"acdc"

#' Album sales data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictitious data that imagines a world where I have a cool job in the music industry. Except, it's not *that* cool because
#' my job is to predict album sales (broadly defined in some way that accounts for physical sales, streams and digital sales). In my
#' little fantasy I collect data from 200 releasures (albums). For each one, I have information about the amount spent
#' advertising the album, the number of sales, the number of plays on radio songs from the album had per week, and a rating of the image of the band.
#' The (fictional) data contains the following variables:
#'
#' * **album_id**: album identifier.
#' * **adverts**: advertising budget in thousands of whatever currency is used in your country.
#' * **sales**: the number of album sales (physical, digital, streams)
#' * **airplay**: the number of times songs from the album were played on radio thew eek before release
#' * **image**: a rating of the band's image from scale from 0 (dad dancing at a disco) to 10 (sicker than a dog that’s eaten a bag of onions)
#'
#' @format A tibble with 200 rows and 5 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"album_sales"

#' Animal bride data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictitious data inspired by two news stories that I enjoyed. The first was about a Sudanese man who was forced to marry a goat ([http://ow.ly/9DyyP](http://ow.ly/9DyyP))
#' after being caught having sex with it. I’m not sure he treated the goat to a nice dinner in a posh restaurant before taking advantage of her, but either way you have to feel sorry for the goat.
#' I’d barely had time to recover from that story when another appeared about an Indian man forced to marry a dog to atone for stoning two dogs and stringing them up in a tree 15 years earlier.
#' Why anyone would think it’s a good idea to enter a dog into matrimony with a man with a history of violent behaviour towards dogs is beyond me.
#' Still, I wondered whether a goat or dog made a better spouse. I found (but not really) some other people who had been forced to marry goats and dogs and measured their life satisfaction and, also, how much they like animals.
#' The data contains the following variables:
#'
#'   * **wife**: whether the person married a goat or a dog
#'   * **animal**: how much the person likes animals
#'   * **life_satisfaction**: the person's life satisfaction score
#'   * **wife**: Whether the person married a goat or a dog
#'   * **animal**: How much the person likes animals
#'   * **life_satisfaction**: The person's life satisfaction score
#'
#' @format A tibble with 20 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"animal_bride"

#' Beckham (1929) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' During my psychology degree I spent a lot of time reading about the civil rights movement in the USA. Instead of reading psychology,
#' I read about Malcolm X and Martin Luther King Jr. For this reason I find Beckham’s 1929 study of black Americans
#' a fascinating historical piece of research. Beckham was a black American who founded the psychology laboratory
#' at Howard University, Washington, DC and his wife Ruth was the first black woman ever to be awarded a PhD
#' (also in psychology) at the University of Minnesota. To put some context on the study, it was published
#' 36 years before the Jim Crow laws were finally overthrown by the Civil Rights Act of 1964, and in a time when
#' black Americans were segregated, openly discriminated against and victims of the most abominable violations of
#' civil liberties and human rights (I recommend James Baldwin’s superb The fire next time for an insight into the times).
#' The language of the study and the data from it are an uncomfortable reminder of the era in which it was conducted.
#'
#' Beckham sought to measure the psychological state of 3443 black Americans with three questions. He asked them to
#' answer yes or no to whether they thought black Americans were happy, whether they personally were happy as a black
#' American, and whether black Americans should be happy. Beckham did no formal statistical analysis of his data
#' (Fisher’s article containing the popularized version of the chi-square test was published only 7 years earlier
#' in a statistics journal that would not have been read by psychologists).
#' I love this study, because it demonstrates that you do not need elaborate methods to answer important and far-reaching questions;
#' with just three questions, Beckham told the world an enormous amount about very real and important psychological and sociological phenomena.
#' These are the data from that study. The data contains the following variables:
#'
#'
#'   * **profession**: Profession of respondents
#'   * **response**: response to the question as yes or no
#'   * **happy**: frequencies of reponses to a question about whether black Americans were happy
#'   * **you_happy**: frequencies of reponses to a question about whether they personally were happy
#'   * **should_be_happy**: frequencies of reponses to a question about whether black Americans should be happy
#'
#' @format A tibble with 16 rows and 5 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Beckham, A. S. (1929). Is the Negro happy? A psychological analysis. *Journal of Abnormal and Social Psychology*, 24, 186–190. [doi.org/10.1037/h0072938](https://doi.org/10.1037/h0072938).


"beckham_1929"

#' The biggest liar data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictional data based on the World’s Biggest Liar competition held annually at the Santon Bridge Inn in Wasdale (in the Lake District, UK).
#' Each year locals are encouraged to attempt to tell the biggest lie in the world. I wanted to test a theory that more creative people will be able to create taller tales.
#' I gathered together 68 past contestants from this competition and noted where they were placed in the competition (first, second, third, etc.);
#' I also gave them a creativity questionnaire (maximum score 60). The data set has four variables
#'
#'   * **id**: Participant id
#'   * **creativity**: Creativity score (maximum score 60)
#'   * **position**: position in competition as a numeric variable from 1 (first place) to 5 (fifth place)
#'   * **novice**: factor coding whether this was the participant's first time in the competition (*first time*) or if they had entered before (*previous entrant*).
#'
#' @docType data
#' @format A tibble with 68 rows and 4 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"biggest_liar"

#' Big hairy spider data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Is arachnophobia (fear of spiders) specific to real spiders or will pictures of spiders evoke similar levels
#' of anxiety? Twelve arachnophobes were asked to play with a big hairy tarantula with big fangs and an evil
#' look in its eight eyes and at a different point in time were shown only photos of the same spider.
#' The participants’ anxiety was measured in each case. The (fictional) data contains the following variables:
#'
#' * **id**: the participant's first name
#' * **spider_type**: whether the spider stimulus was a real spider or a photo of a spider
#' * **anxiety**: the participant's anxiety after exposure to the stimulus
#'
#' @format A tibble with 24 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"big_hairy_spider"

#' Bronstein et al. (2019) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#'  The rapid increase in ‘fake news’ and misinformation is a worrying trend in recent years.
#'  Perhaps more worrying is how widely some of this news is taken as fact. Researchers have started to look at what
#'  characteristics predict susceptibility to fake news. Bronstein et al. (2019) hypothesised that delusion-prone individuals
#'  may be more likely to believe fake news because of their tendency to engage in less analytic and open-minded thinking.
#'  They conducted two online studies that got merged into a single analysis to test this hypothesis. This object is a subset of variables from
#'  their data (I have changed the variable names to match the constructs measured rather than the scales used to measure them).
#'  The full dataset is available at [https://doi.org/10.1016/j.jarmac.2018.09.005](https://doi.org/10.1016/j.jarmac.2018.09.005).
#'
#'   * **id** (ResponseID in the original dataset): participant ID
#'   * **fake_newz** (ZBelief_Fake in the original dataset): participants viewed 12 fake news headlines, each with a brief description and photo, and rated their accuracy (1 = Not at all accurate, 4 = Very accurate). This variable is the average rating converted to a z-score.
#'   * **delusionz** (ZPDI_Total in the original dataset): Peter's et al Delusion Inventory (PDI), which uses statements such as “Do you ever feel as if there is a conspiracy against you?” to gauge a person’s propensity for delusion-like thinking. Again, scores were converted to z-scores.
#'   * **thinkz_open** (ZAOT_Total in the original dataset):  open minded thinking was assessed with the Actively Open-minded Thinking (AOT) scale, on which people endorse statements such as “A person should always consider new possibilities” using a six-point scale (1 = strongly disagree, 6 = strongly agree). The total score was again converted to z.
#'   * **thinkz_anal** (ZRF_Total in the original dataset): Analytic thinking was assessed using the Cognitive Reflection Test (CRT), which uses several problems that have intuitive-but-incorrect responses. Participants must override their intuition to get the correct answer. Over 7 items, higher scores (converted to z-scores again) indicate a greater tendency to use an analytic cognitive style.
#'
#' @format A tibble with 947 rows and 5 variables
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Bronstein, M. V., Pennycook, G., Bear, A., Rand, D. G., & Cannon, T. D. (2019). Belief in fake news is associated with delusionality, dogmatism, religious fundamentalism, and reduced analytic thinking. *Journal of Applied Research in Memory and Cognition*, 8(1), 108–117. [https://doi.org/10.1016/j.jarmac.2018.09.005](https://doi.org/10.1016/j.jarmac.2018.09.005)

"bronstein_2019"

#' Bronstein et al. (2019) data with missing values inserted
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' A version of the Bronstein et al. (2019) fake news data ([bronstein_2019]) but with missing values inserted using MCAR amputation (with the help of the `mice` package and `ampute()` function).
#' For details of variables see [bronstein_2019].
#'
#'
#' @format A tibble with 947 rows and 5 variables
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Bronstein, M. V., Pennycook, G., Bear, A., Rand, D. G., & Cannon, T. D. (2019). Belief in fake news is associated with delusionality, dogmatism, religious fundamentalism, and reduced analytic thinking. *Journal of Applied Research in Memory and Cognition*, 8(1), 108–117. [https://doi.org/10.1016/j.jarmac.2018.09.005](https://doi.org/10.1016/j.jarmac.2018.09.005)

"bronstein_miss_2019"

#' Catterplot data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictional data for plotting a catterplot. The object contains the following variables:
#'
#'   * **dinner_time**: the time (hours) since the cat was last fed
#'   * **meow**: How loud the cat's purr is
#'
#' @docType data
#' @format A tibble with 78 rows and 2 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"catterplot"

#' Cat regression data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictional data illustrating how the chi-square test is a linear model. It's about line dancing cats. The object contains the following variables:
#'
#'   * **reward**: whether the cat was trained using food (0) of affection (1) as a reward
#'   * **dance**: Whether the cat danced (1) or not (0)
#'   * **interaction**: the interaction of dance and reward (i.e. dance multiplied by reward)
#'   * **observed**: the observed frequency for the combination of dance and reward
#'   * **expected**: the expected frequency for the combination of dance and reward
#'   * **lmobserved**: the natural logarithm of the observed frequency for the combination of dance and reward
#'   * **lmexpected**: the natural logarithm of the expected frequency for the combination of dance and reward
#'
#' @docType data
#' @format A tibble with 200 rows and 7 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"cat_reg"

#' Dancing cats data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictional data about dancing cats. A researcher was interested in whether animals could be trained to dance.
#' He took 200 cats and tried to train them to line-dance by giving them either food or affection as a reward for dance-like behaviour.
#' At the end of the week he counted how many animals could line-dance and how many could not.
#' The object contains the following variables:
#'
#'   * **reward**: factor describing whether the cat was trained using food of affection as a reward
#'   * **dance**: factor describing whether the cat danced or not
#'
#' @docType data
#' @format A tibble with 200 rows and 2 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"cat_dance"

#' Cetinkaya and Domjan (2006) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Some quail develop fetishes. Really. In studies where a terrycloth object acts as a sign that a mate will shortly
#' become available, some quail start to direct their sexuial behaviour towards the terrycloth object.
#' In evolutionary terms, this fetishistic behaviour seems counterproductive because sexual behaviour becomes directed
#' towards something that cannot provide reproductive success. However, perhaps this behaviour serves to prepare the
#' organism for the ‘real’ mating behaviour.
#'
#' Cetinkaya and Domjan (2006) sexually conditioned male quail.
#' All quail experienced the terrycloth stimulus and an opportunity to mate, but for some the terrycloth stimulus
#' immediately preceded the mating opportunity (paired group) whereas others experienced a 2-hour delay
#' (this acted as a control group because the terrycloth stimulus did not predict a mating opportunity).
#' In the paired group, quail were classified as fetishistic or not depending on whether they engaged in sexual
#' behaviour with the terrycloth object.
#'
#' During a test trial the quail mated with a female and the researchers measured the percentage of eggs fertilized,
#' the time spent near the terrycloth object, the latency to initiate copulation, and copulatory efficiency.
#' If this fetishistic behaviour provides an evolutionary advantage then we would expect the fetishistic quail to
#' fertilize more eggs, initiate copulation faster and be more efficient in their copulations.
#' These are the data from that study. The data contains the following variables:
#'
#'   * **groups**: The group to which each quail belonged (Fetishistics, NonFetishistics, or Control)
#'   * **paired**: whether the terrycloth predicted a mating opportunity (paired) or not (unpaired)
#'   * **egg_percent**: percentage of eggs fetilised by male
#'   * **duration**: Time spent near terrycloth object
#'   * **latency**: Time taken to initiate copulation
#'   * **efficiency**: Copulatory efficiancy
#'
#' @format A tibble with 59 rows and 6 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Cetinkaya, H., & Domjan, M. (2006). Sexual fetishism in a quail (*Coturnix japonica*) model system: Test of reproductive success. *Journal of Comparative Psychology*, *120*, 427–432. [doi.org/10.1037/0735-7036.120.4.427](https://doi.org/10.1037/0735-7036.120.4.427)

"cetinkaya_2006"

#' Chamorro-Premuzic, et al. (2008) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' There is some evidence that students tend to pick courses of lecturers they perceive to be enthusastic and good communicators.
#' In a fascinating study, Tomas Chamorro-Premuzic and his colleagues (Chamorro-Premuzic, Furnham, Christopher, Garwood, & Martin, 2008)
#' tested the hypothesis that students tend to like lecturers who are like themselves. The authors measured students’ own personalities
#' using a very well-established measure (the NEO-FFI) which measures five fundamental personality traits: neuroticism, extroversion,
#' openness to experience, agreeableness and conscientiousness. Students also completed a questionnaire in which they were given descriptions
#' (e.g., ‘warm: friendly, warm, sociable, cheerful, affectionate, outgoing’) and asked to rate how much they wanted to see this in a lecturer
#' from -5 (I don’t want this characteristic at all) through 0 (the characteristic is not important) to +5 (I really want this characteristic in my lecturer).
#' The characteristics were the same as those measured by the NEO-FFI. As such, the authors had a measure of how much a student had each of the
#' five core personality characteristics, but also a measure of how much they wanted to see those same characteristics in their lecturer.
#' These are the data from that study. The data contains the following variables:
#'
#'   * **age**: participant age (years)
#'   * **sex**: participant's biological sex
#'   * **stu_neurotic**: Student neuroticism score on the NEO-FFI
#'   * **stu_extro**: Student extroversion score on the NEO-FFI
#'   * **stu_open**: Student openness to experience score on the NEO-FFI
#'   * **stu_agree**: Student agreeableness  score on the NEO-FFI
#'   * **stu_consc**: Student conscientiousness score on the NEO-FFI
#'   * **lec_neurotic**: Student rating of how much they wanted the characteristic of neuroticism in their lecturers from -5 (I don’t want this characteristic at all) through 0 (the characteristic is not important) to +5 (I really want this characteristic in my lecturer)
#'   * **lec_extro**: Student rating of how much they wanted the characteristic of extroversion in their lecturers from -5 (I don’t want this characteristic at all) through 0 (the characteristic is not important) to +5 (I really want this characteristic in my lecturer)
#'   * **lec_open**: Student rating of how much they wanted the characteristic of openness to experience in their lecturers from -5 (I don’t want this characteristic at all) through 0 (the characteristic is not important) to +5 (I really want this characteristic in my lecturer)
#'   * **lec_agree**: Student rating of how much they wanted the characteristic of agreeableness in their lecturers from -5 (I don’t want this characteristic at all) through 0 (the characteristic is not important) to +5 (I really want this characteristic in my lecturer)
#'   * **lec_consc**: Student rating of how much they wanted the characteristic of conscientiousness in their lecturers from -5 (I don’t want this characteristic at all) through 0 (the characteristic is not important) to +5 (I really want this characteristic in my lecturer)
#'
#' @format A tibble with 430 rows and 12 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Chamorro-Premuzic, T., Furnham, A., Christopher, A. N., Garwood, J., & Neil Martin, G. (2008). Birds of a feather: Students’ preferences for lecturers’ personalities as predicted by their own personality and learning approaches. *Personality and Individual Differences*, 44(4), 965–976. [https://doi.org/10.1016/j.paid.2007.10.032](https://doi.org/10.1016/j.paid.2007.10.032).


"chamorro_premuzic"

#' Child aggression data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' A study was carried out to explore the relationship between aggression and several potential predicting
#' factors in 666 children who had an older sibling. Variables measured were **parenting_style** (high score = bad parenting practices),
#' **computer_games** (high score = more time spent playing computer games), **television** (high score = more time spent watching television),
#' **diet** (high score = the child has a good diet low in harmful additives), and **sibling_aggression** (high score = more aggression seen in their older sibling).
#' Past research indicated that parenting style and sibling aggression were good predictors of the level of aggression in the younger child.
#' The data contain the following variables:
#'
#'   * **aggression**: The child's aggression
#'   * **television**: Time spent watching television (high score = more time spent watching television)
#'   * **computer_games**: Time spent playing video games (high score = more time spent playing video games)
#'   * **sibling_aggression**: Agression in older sibling (high score = more aggression seen in their older sibling).
#'   * **diet**: The child's diet (high score = the child has a good diet low in harmful additives).
#'   * **parenting_style**: the parent's parenting style (high score = bad parenting practices).
#'
#' @docType data
#' @format A tibble with 666 rows and 6 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"child_aggression"

#' Coldwell, Pike and Dunn (2006) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Coldwell, Pike and Dunn (2006) investigated whether household chaos predicted children’s problem behaviour
#' over and above parenting. From 118 families they recorded the age and gender of the youngest child
#' (**child_age** and **child_gender**). They measured dimensions of the child’s perceived relationship with
#' their mum: (1) warmth/enjoyment (**child_warmth**), and (2) anger/hostility (**child_anger**). Higher scores
#' indicate more warmth/enjoyment and anger/hostility respectively. They measured the mum’s perceived relationship
#' with her child, resulting in dimensions of positivity (**mum_pos**) and negativity (**mum_neg**).
#' Household chaos (**chaos**) was assessed. The outcome variable was the child’s adjustment (**sdq**): the higher the score,
#' the more problem behaviour the child was reported to be displaying. These data are from this study. The data contain the following variables:
#'
#'   * **family_id**: The family id
#'   * **child_age**: Age of the youngest child
#'   * **child_gender**: Gender of the youngest child
#'   * **child_warmth**: Perceived warmth of the child to the mother.
#'   * **child_anger**: Perceived agnger of the child towards to the mother.
#'   * **mum_pos**: the mother's perceived positivity towards her child.
#'   * **mum_neg**: the mother's perceived negativity towards her child.
#'   * **chaos**: household chaos.
#'   * **sdq**: the child's adjustment on the strengths and difficulties questionnaire (SDQ).
#'
#' @docType data
#' @format A tibble with 118 rows and 9 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"coldwell_2006"


#' Daniels (2012) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Women (and increasingly men) are bombared with ‘idealized’ images in the media and there is a growing concern
#' about how these images affect our perceptions of ourselves. Daniels (2012) showed young women images of successful
#' female athletes (e.g., Anna Kournikova) in which they were either playing sport (performance athlete images) or posing
#' in bathing suits (sexualized images). Participants completed a short writing exercise after viewing these images.
#' Each participant saw only one type of image, but several examples. Daniels then coded these written exercises and
#' identified themes, one of which was whether women self-objectified (i.e., commented on their own appearance/attractiveness).
#' Daniels hypothesized that women who viewed the sexualized images (*n* = 140) would self-objectify
#' (i.e., this theme would be present in what they wrote) more than those who viewed the performance athlete pictures (*n* = 117,
#' despite what the participants Section of the paper implies).  These are the data from that study. The data contains the following variables:
#'
#'   * **picture**: Whether the pictur was of a performance athlete or a sexualized athlete
#'   * **theme_present**: whether a particular theme was present or absent from the participant's writing exercise
#'   * **athletes_body**: frequencies for the theme of the athlete's body
#'   * **admiration**: frequencies for the theme of admiration for the athlete
#'   * **role_model**: frequencies for the theme of the athlete being a role model
#'   * **self_evaluation**: frequencies for the theme of self-evaluation
#'   * **self_physical_activity**: frequencies for the theme of self physical activity
#'
#' @format A tibble with 4 rows and 7 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Daniels, E. (2012). Sexy versus strong: What girls and women think of female athletes. *Journal of Applied Developmental Psychology*, 33, 79–90. [doi.org/10.1016/j.appdev.2011.12.002](https://doi.org/10.1016/j.appdev.2011.12.002).
#'

"daniels_2012"

#' Subliminal messages data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Both Ozzy Osbourne and Judas Priest have been accused of putting backward masked messages on their albums
#' that subliminally influence poor unsuspecting teenagers into doing things like blowing their heads off with
#' shotguns. A psychologist was interested in whether backward masked messages could have an effect. He created
#' a version of Britney Spears’ ‘Baby one more time’ that contained the masked message ‘deliver your soul to the
#' dark lord’ repeated in the chorus. He took this version, and the original, and played one version (randomly)
#' to a group of 32 people. Six months later he played them whatever version they hadn’t heard the time before.
#' So, each person heard both the original and the version with the masked message, but at different points in time.
#' The psychologist measured the number of satanic intrusions the person had in the week after listening to each
#' version. The (fictional) data contains the following variables:
#'
#' * **id**: the participant's id
#' * **message**: whether the song had a subliminal satanic message or not
#' * **intrusions**: number of satanic intrusions in the week after hearing the song
#'
#' @format A tibble with 64 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"dark_lord"

#' DF beta data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictitious data to illustrate the DF Beta statistic. The tibble contains the following variables:
#'
#' * **case**: a number from 0-30 indicating the entity (case)
#' * **x**: Imaginatively named predictor variable
#' * **y**: The creativity was flowing the day I generated these data - another imaginatively named variable. This time it's the outcome variable.
#'
#' @format A tibble with 30 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"df_beta"

#' Download festival data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictional data about people stinking at music festivals. A biologist was worried about the potential health effects of
#' music festivals. She went to the Download Music Festival and measured the hygiene of 810 concert-goers over the three days of the festival.
#' She tried to measure every person on every day but, because it was difficult to track people down, there were missing data on days 2 and 3.
#' Hygiene was measured using a standardized technique that results in a score ranging between 0 (you smell like a corpse that’s been left to rot up a skunk’s arse)
#' and 4 (you smell of sweet roses on a fresh spring day). I know from bitter experience that sanitation is not always great at these places and so the biologist
#' predicted that personal hygiene would go down dramatically over the three days of the festival. The object contains the following variables:
#'
#'   * **ticket_no**: the ticket number of the participant as a factor
#'   * **gender**: The gender with which the participant self-identifies as a factor (male, female, non-binary)
#'   * **day1**: the hygiene score from 0 (eau de toilet) to 4 (eau de toilette) on day 1 of the festival
#'   * **day2**: the hygiene score from 0 (eau de toilet) to 4 (eau de toilette) on day 2 of the festival
#'   * **day3**: the hygiene score from 0 (eau de toilet) to 4 (eau de toilette) on day 3 of the festival
#'
#' @docType data
#' @format A tibble with 810 rows and 5 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"download"

#' Essay mark data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictional data about essay marks. A student was interested in whether there was a positive relationship between the time spent doing an essay and the mark received.
#' He got 45 of his friends and timed how long they spent writing an essay (hours) and the percentage they got in the essay (essay).
#' He also translated these grades into their degree classifications (grade): in the UK, a student can get a first-class mark (the best), an upper-second-class mark,
#' a lower second, a third, a pass or a fail (the worst).
#' The data set has four variables
#'
#'   * **id**: Student id
#'   * **essay**: Percentage mark on the essay
#'   * **hours**: hours spend writing the essay
#'   * **grade**: factor that converts the essay percentage to the degree classification of the essay (see general description)
#'
#' @docType data
#' @format A tibble with 45 rows and 4 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"essay_marks"

#' Exam anxiety data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' a psychologist was interested in the effects of exam stress on exam performance. She devised and validated a questionnaire to assess
#' state anxiety relating to exams (called the Exam Anxiety Questionnaire, or EAQ). This scale produced a measure of anxiety scored out of 100.
#' Anxiety was measured before an exam, and the percentage mark of each student on the exam was used to assess the exam performance. These data are fictional.
#' The object contains the following variables:
#'
#'   * **id**: participant id
#'   * **revise**: the time spent revising for the exam (hours)
#'   * **exam_grade**: the percentage score of each student on the exam
#'   * **anxiety**: anxiety score on the EAQ out of 100
#'   * **sex**: whether the participant self-identified as male or female
#'
#' @docType data
#' @format A tibble with 103 rows and 5 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"exam_anxiety"

#' Gelman & Weakliem (2009) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' It’s something of a wonder how evolution managed to produce such a monstrosity as the human penis.
#' One theory is sperm competition: the human penis has an unusually large glans (the ‘bell-end’) compared to other primates,
#' and this may have evolved so that the penis can displace seminal fluid from other males by ‘scooping it out’ during intercourse.
#' Armed with various devices from Hollywood Exotic Novelties, an artificial vagina from California Exotic Novelties, and some water and cornstarch
#' Gallup et al. (2003) put this theory to the test. They loaded the artificial vagina with 2.6 ml of fake sperm and inserted one
#' of three female sex toys into it before withdrawing it: a control phallus that had no coronal ridge (i.e., no bell-end),
#' a phallus with a minimal coronal ridge (small bell-end) and a phallus with a coronal ridge. They measured sperm displacement as a percentage:
#' 100% means that all the sperm was displaced, and 0% means that none of the sperm was displaced. If the human penis evolved as a sperm displacement
#' device then Gallup et al. predicted: (1) that having a bell-end would displace more sperm than not; and
#' (2) that the phallus with the larger coronal ridge would displace more sperm than the phallus with the minimal coronal ridge. The data from the study has three variables:
#'
#' * **id**: The participant's id (these do not come from the study data file)
#' * **phallus**: the type of phallus used (No coronal ridge, minimal coronal ridge and coronal ridge)
#' * **displace**: percentage of sperm displaced by the phallus
#'
#' @format A tibble with 15 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#' * Gallup, G. G. J., Burch, R. L., Zappieri, M. L., Parvez, R., Stockwell, M., & Davis, J. A. (2003). The human penis as a semen displacement device. *Evolution and Human Behavior*, *24*, 277–289. [doi.org/10.1016/S1090-5138(03)00016-3](https://doi.org/10.1016/S1090-5138(03)00016-3)

"gallup_2003"

#' Gelman & Weakliem (2009) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Apparently there are more beautiful women in the world than there are handsome men. Satoshi Kanazawa explains this finding
#' in terms of good-looking parents being more likely to have a baby daughter as their first child than a baby son.
#' Perhaps more controversially, he suggests that, from an evolutionarily perspective, beauty is a more valuable trait for women than
#' for men (Kanazawa, 2007). In a playful and very informative paper, Andrew Gelman and David Weakliem discuss various
#' statistical errors and misunderstandings, some of which have implications for Kanazawa’s claims.
#' The ‘playful’ part of the paper is that to illustrate their point they collected data on the 50 most beautiful celebrities
#' (as listed by People magazine) of 1995-2000. They counted how many male and female children they had as of 2007.
#' If Kanazawa is correct, these beautiful people would have produced more girls than boys.
#' These are the data from that study. The data contains the following variables:
#'
#' * **person**: The name of the celebrity
#' * **child**: whether children are sons or daughters
#' * **number**: the number of sons/daughters (depending on the value of child) the celebrity has (at the time of the study)
#'
#' @format A tibble with 548 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#' * Gelman, A., & Weakliem, D. (2009). Of beauty, sex and power: Too little attention has been paid to the statistical challenges in estimating small effects. *American Scientist*, 97, 310–316. [https://www.jstor.org/stable/27859361](https://www.jstor.org/stable/27859361)

"gelman_2009"

#' Glastonbury festival data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' More fictional data about people stinking at music festivals. The same biologist who was worried about the potential health effects of music festivals and
#' collected data at a heavy metal festival (Download Festival), was worried that her findings might not generalize. To find out whether the type of music a person
#' likes predicts whether hygiene decreases over the festival the biologist measured hygiene over the three days of the Glastonbury Music Festival, which has an eclectic clientele.
#' Her hygiene measure ranged between 0 (you smell like you’ve bathed in sewage) and 4 (you smell like you’ve bathed in freshly baked bread).
#' The biologist coded the festival-goer’s musical affiliations into the categories ‘hipster’ (people who mainly like alternative music), ‘metalhead’ (people who like heavy metal), and ‘raver’ (people who like dance/ambient stuff).
#' Anyone not falling into these categories was labelled ‘no subculture’. The object contains the following variables:
#'
#'   * **ticket_no**: the ticket number of the participant as a factor
#'   * **subculture**: The musical subculture with which the participant self-identifies as a factor (no subculture, hipster, metalhead, raver)
#'   * **day1**: the hygiene score from 0 (eau de toilet) to 4 (eau de toilette) on day 1 of the festival
#'   * **day2**: the hygiene score from 0 (eau de toilet) to 4 (eau de toilette) on day 2 of the festival
#'   * **day3**: the hygiene score from 0 (eau de toilet) to 4 (eau de toilette) on day 3 of the festival
#'   * **change**: the change in hygiene score from day 1 to day 3 of the festival
#'
#' @docType data
#' @format A tibble with 810 rows and 5 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"glastonbury"

#' Grades data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictional data about stats grades. As a statistics lecturer I am interested in the factors that determine whether a
#' student will do well on a statistics course. Imagine I took 25 students and looked at their grades for my statistics
#' module at the end of their first year at university:  first class, upper second class, lower second class, third class, pass and fail.
#' I also asked these students what grade they got in their high school maths exams. In the UK GCSEs are school exams taken at age 16
#' that are graded A, B, C, D, E or F (an A grade is the best). The data set has three variables
#'
#'   * **id**: Student id
#'   * **stats**: Degree classification for a statistics module
#'   * **gcse**: GCSE mathematics classification at age 16
#'
#' @docType data
#' @format A tibble with 25 rows and 3 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"grades"

#' Social media and grammar data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Imagine we conducted an experiment in which a group of 25 people were encouraged to message their friends and
#' post on social media using their mobiles over a six-month period. A second group of 25 people were banned from
#' messaging and social media for the same period by being given armbands that administered painful shocks in the
#' presence of microwaves (like those emitted from phones).  The outcome was a percentage score on a grammatical test
#' that was administered both before and after the intervention. The first independent variable was, therefore, social
#' media use (encouraged or banned) and the second was the time at which grammatical ability was assessed (baseline or
#' after 6 months). These data are fictional. The object contains the following variables:
#'
#'   * **id**: participant id
#'   * **media_use**: Whether the participant was encouraged to use social media or banned from using it
#'   * **time**: the time at which the grammar test was taken: before social media use was manipulated (baseline) and 6 months later
#'   * **grammar**: the score on a grammar test (as a percentage)
#'
#' @docType data
#' @format A tibble with 100 rows and 4 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"social_media"

#' Hiccups data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' People have many methods for stopping hiccups (a surprise, holding your breath), and medical science has
#' put its collective mind to the task too. The official treatment methods include tongue-pulling manoeuvres,
#' massage of the carotid artery, and, believe it or not, digital rectal massage (Fesmire, 1988).
#' Let’s say we wanted to put digital rectal massage to the test (erm, as a cure for hiccups).
#' We took 15 hiccup sufferers, and during a bout of hiccups administered each of the three procedures
#' (in random order and at intervals of 5 minutes) after taking a baseline of how many hiccups they had per minute.
#' We counted the number of hiccups in the minute after each procedure. These data are fictional.
#' The object contains the following variables:
#'
#'   * **id**: participant id
#'   * **intervention**: the 4 interventions that each participant tried
#'   * **hiccups**: the number of hiccups during the minute after the intervention
#'
#' @docType data
#' @format A tibble with 60 rows and 3 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"hiccups"

#' Honesty lab data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictional data about the honesty lab. Imagine we were interested in how people evaluated dishonest acts.
#' Participants evaluate the dishonesty of acts based on watching videos of people confessing to those acts.
#' Imagine we took 100 people and showed them a random dishonest act described by the perpetrator.
#' They then evaluated the honesty of the act (from 0 = appalling behaviour to 10 = it’s OK really)
#' and how much they liked the person (0 = not at all, 10 = a lot). The data set has three variables
#'
#'   * **id**: Participant's id
#'   * **deed**: evaluation of the honesty of the act (from 0 = appalling behaviour to 10 = it’s OK really)
#'   * **likeableness**: evaluation of the perpetrator (0 = not at all, 10 = a lot)
#'
#' @docType data
#' @format A tibble with 100 rows and 3 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"honesty_lab"


#' Ice bucket challenge data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' AGoogle data relating to the ice bucket challenge from 2014. Golfer Chris Kennedy tipped a bucket of iced water on his head to raise awareness of the disease amyotrophic lateral sclerosis (ALS, also known as Lou Gehrig's disease).
#' The idea is that you are challenged and have 24 hours to post a video of you having a bucket of iced water poured over your head in this video you also challenge at least three other people.
#' If you fail to complete the challenge your forfeit is to donate to charity (in this case ALS). The data show the the number of days after Chris Kennedy’s initial ice bucket challenge that each of 2,323,452 ice bucket challenge video was uploaded to YouTube.
#'
#'   * **upload_days**: the number of days after Chris Kennedy’s initial ice bucket challenge that an ice bucket challenge video was uploaded to YouTube
#'
#' @docType data
#' @format A tibble with 2,323,452 rows and 1 variable.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"ice_bucket"


#' Invisibility data (independent design)
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' I got very excited by two news stories implying that scientists had made Harry Potter’s cloak of invisibility. Although the newspapers overstated the case,
#' I imagined a future in which we have cloaks of invisibility to test out. Given my slightly mischievous streak, the future me is interested in the effect
#' that wearing a cloak of invisibility has on the tendency for mischief. I take 24 participants and place them in an enclosed community.
#' The community is riddled with hidden cameras so that we can record mischievous acts. Half of the participants are given cloaks of invisibility;
#' they are told not to tell anyone else about their cloak and that they can wear it whenever they liked. I measure how many mischievous acts they performed in one week.
#' The object contains the following variables:
#'
#'   * **id**: participant id
#'   * **cloak**: whether the participant was assigned a cloak of invisibility
#'   * **mischief**: the number of mischievous acts committed during a week
#'
#' @docType data
#' @format A tibble with 24 rows and 3 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"invisibility_cloak"

#' Invisibility data (repeated measures design)
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' I got very excited by two news stories implying that scientists had made Harry Potter’s cloak of invisibility. Although the newspapers overstated the case,
#' I imagined a future in which we have cloaks of invisibility to test out. Given my slightly mischievous streak, the future me is interested in the effect
#' that wearing a cloak of invisibility has on the tendency for mischief. I take 12 participants and place them in an enclosed community.
#' The community is riddled with hidden cameras so that we can record mischievous acts. For one week the participants are given cloaks of invisibility, during a different week they are not.
#' I measure how many mischievous acts they performed in each week. These data are the same as in **invisibility_cloak** but arranged in a repeated measures design.
#' The object contains the following variables:
#'
#'   * **id**: participant id
#'   * **cloak**: whether the participant had access to a cloak of invisibility
#'   * **mischief**: the number of mischievous acts committed during a week
#'
#' @docType data
#' @format A tibble with 24 rows and 3 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)


"invisibility_rm"

#' Jiminy Cricket data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictitious data inspired by my honeymoon at Disney in Orlando. The one blip in my tolerance of Disney, was their obsession with dreams coming true and wishing upon a star.
#' Dreams are good, but a completely blinkered view that they’ll come true without any work on your part is not. I think it highly unlikely that merely ‘wishing upon a star’ will make my dream come true.
#' I wonder if the seismic increase in youth internalizing disorders (Twenge, 2000, 2011) is, in part, caused by millions of Disney children reaching the rather depressing realization that ‘wishing upon a star’ didn’t work.
#' Anyway, imagine that I collected some data from 250 people on their level of success using a composite measure involving their salary, quality of life and how closely their life matches their aspirations.
#' This gave me a score from 0 (complete failure) to 100 (complete success). I then implemented an intervention: I told people that for the next 5 years they should either wish upon a star for their dreams to come true or work as hard as they could to make their dreams come true.
#' I measured their success again 5 years later. People were randomly allocated to these two instructions.
#' The data contains the following variables:
#'
#'   * **id**: participant id
#'   * **strategy**: whether the person was allocated to the 'hard work' or 'wish upon a star' intervention
#'   * **time**: whether the measure of success was taken before the intervention (pre-intervention) aor after it (post-intervention)
#'   * **success**: the person's success from 0 (complete failure) to 100 (complete success) using my dodgy composite measure.
#'
#' @format A tibble with 500 rows and 4 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"jiminy_cricket"

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
#'   * **id**: participant id
#'   * **partners**: sexual experience coded as a factor ('Very little' and 'Some")
#'   * **colour**: colour of the female geneitalia in image
#'   * **attractiveness**: male rating of the attractiveness of the female geneitalia from 0 to 100
#'
#' @format A tibble with 160 rows and 4 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Johns, S. E., Hargrave, L. A., & Newton-Fisher, N. E. (2012). Red is not a proxy signal for female genitalia in humans. *PLoS One*, 7, e34669. [doi.org/10.1371/journal.pone.0034669]( https://doi.org/10.1371/journal.pone.0034669).

"johns_2012"

#' Lambert et al. (2012) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#'  Lambert et al. (2012) found that pornography is related to infidelity. This object contains the data from that study.
#'
#'   * **id**: participant ID (not from the original data)
#'   * **consumption**: pornography consumption on a scale from 0 (low) to 8 (high)
#'   * **ln_porn**: log transformed values of consumption
#'   * **commit**: commitment to the participant's current relationship on a scale from 1 (low) to 5 (high)
#'   * **phys_inf**: whether the person had committed a physical act that they or their partner would consider to be unfaithful (0 = no, 1 = one of them would consider it unfaithful, 2 = both of them would consider it unfaithful)
#'   * **hook_up**: the number of people they had ‘hooked up’ with in the previous year. (A ‘hook-up’ was defined to participants as ‘when two people get together for a physical encounter and don’t necessarily expect anything further')
#'
#' @format A tibble with 240 rows and 6 variables
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Lambert, N. M., Negash, S., Stillman, T. F., Olmstead, S. B., & Fincham, F. D. (2012). A love that doesn’t last: Pornography consumption and weakened commitment to one’s romantic partner. *Journal of Social and Clinical Psychology*, 31, 410–438. [doi.org/10.1521/jscp.2012.31.4.410](https://doi.org/10.1521/jscp.2012.31.4.410)

"lambert_2012"

#' Massar et al. (2012) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Everyone likes a good gossip from time to time, but apparently it has an evolutionary function.
#' One school of thought is that gossip is used as a way to derogate sexual competitors – especially
#' by questioning their appearance and sexual behaviour. Apparently men rate gossiped-about women as
#' less attractive, and they are more influenced by the gossip if it came from a woman with a high mate value
#' (i.e. attractive and sexually desirable). Karlijn Massar and her colleagues hypothesized that if this theory
#' is true then (1) younger women will gossip more because there is more mate competation at younger ages; and
#' (2) this relationship will be mediated by the mate value of the person (because for those with high mate value
#' gossiping for the purpose of sexual competition will be more effective). These are the data from that study.
#'
#' Eighty-three women aged from 20 to 50 (age) completed questionnaire measures of their tendency to gossip (gossip) and their sexual desirability (mate_value). Lambert et al. (2012) found that pornography is related to infidelity. This object contains the data from that study.
#'
#'   * **id**: participant ID (not from the original data)
#'   * **age**: participant age in years
#'   * **gossip**: average response on a tendency to gossip scale. Participants responded to 16 items about their tendency to gossip following the presentation of a scenario. Particpants rated their likelihood to engage in certain behaviours such as ‘I would tell negative things about Karen to other people’ from 1 (strongly disagree) to 5 (strongly agree). This score is the average response across the 16 items.
#'   * **mate_value**: average response to items from the Self-Perceived Mating Success Scale (each item ranged from 1 = not at all, 5 = very much, so a high score is a high mate value)
#'
#' @format A tibble with 83 rows and 4 variables
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Massar, K., Buunk, A. P., & Rempt, S. (2012). Age differences in women’s tendency to gossip are mediated by their mate value. *Personality and Individual Differences*, 52, 106–109. [https://doi.org/10.1016/j.paid.2011.09.013](https://doi.org/10.1016/j.paid.2011.09.013)

"massar_2012"


#' McNulty et al. (2008) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' McNulty et al. (2008) found a relationship between a person’s attractiveness and how much support they give their partner among newlywed heterosexual couples.
#' These data simulate the results of that study. The object contains the following variables:
#'
#'   * **id**: participant ID
#'   * **attractiveness**: attractiveness of participant
#'   * **support**: support given to partner
#'   * **satisfaction**: relationship satisfaction
#'   * **spouse**: whether the participant is a husband or wife
#'
#' @format A tibble with 164 rows and 5 variables
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * McNulty, J. K., Neff, L. A., & Karney, B. R. (2008). Beyond initial attraction: Physical attractiveness in newlywed marriage. *Journal of Family Psychology*, 22, 135–143. [https://doi.org/10.1037/0893-3200.22.1.135](https://doi.org/10.1037/0893-3200.22.1.135)

"mcnulty_2008"

#' Are men like dogs data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' A psychologist was interested in the cross-species differences between men and dogs. She observed a group
#' of dogs and a group of men in a naturalistic setting (20 of each). She classified several behaviours as being
#' dog-like (urinating against trees and lampposts, attempts to copulate with anything that moved, and attempts to
#' lick their own genitals). For each man and dog she counted the number of dog-like behaviours displayed in a
#' 24-hour period.  The (fictional) data contains the following variables:
#'
#' * **id**: the participant's id
#' * **species**: whether the participant was a man or a dog
#' * **behaviour**: number of dog-like behaviours exhibited by the participant in 24 hours
#'
#' @format A tibble with 40 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"men_dogs"

#' Metal health
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Lacourse et al. (2001) conducted a study to see whether suicide risk was related to listening to heavy metal music.
#' They devised a scale to measure preference for bands falling into the category of heavy metal.
#' This scale included heavy metal bands (Black Sabbath, Iron Maiden), speed metal bands (Slayer, Metallica),
#' death/black metal bands (Obituary, Burzum) and gothic bands (Marilyn Manson, Sisters of Mercy).
#' They then used this (and other variables) as predictors of suicide risk based on a scale measuring suicidal ideation etc.
#' These data are from a fictitious replication. There are two variables representing scores on the scales described above:
#'
#'   * **hm**: the extent to which the person listens to heavy metal music
#'   * **suicide**: the extent to which someone has suicidal ideation
#'
#' @format A tibble with 2506 rows and 2 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Lacourse, E., Claes, M., & Villeneuve, M. (2001). Heavy metal music and adolescent suicidal risk. *Journal of Youth and Adolescence*, *30*, 321–332. [doi.org/10.1023/A:1010492128537](https://doi.org/10.1023/A:1010492128537).

"metal_health"


#' Metallica data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' The data show various pieces of information about past and present members of the band Metallica that may or may not be accurate at the time of writing (2019).
#' The data contains the following variables:
#'
#'   * **name**: the band member's name
#'   * **birth_date**: the band member's date of birth
#'   * **death_date**: the band member's date of death (where applicable)
#'   * **instrument**: the instrument played by the band member
#'   * **current_member**: is the member currently in the band? (True or False)
#'   * **songs_written**: the number of songs the band member has contributed to
#'   * **net_worth**: the band member's net worth as of 2019 according to some dodgy website
#'   * **albums**: the number of studio albums each member played on (up to 2020)
#'   * **worth_per_song**: the members net worth per song contributed to
#'
#' @format A tibble with 7 rows and 9 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"metallica"

#' Murder in the streets data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictitious data about murder. A sociologist wanted to compare murder rates (murder) each month in a year at
#' three high-profile locations in London (street). The data contains the following variables:
#'
#'   * **month**: The month for the reported crime statistics
#'   * **street**: The street location (Ruskin Avenue, Acacia Avenue and Rue Morgue)
#'   * **murder**: the number of reported murders during each month
#'
#' @format A tibble with 36 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"murder"

#' The notebook data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictitious data about the film The Notebook. Imagine that a film company director was interested in whether there was really such a thing as a ‘chick flick’
#' (a film that has the stereotype of appealing to women more than to men). He took 20 people who mostly self identify as men and 20 who mostly self identify as women and showed half of each sample a film that was supposed to be a ‘chick flick’ (The Notebook).
#' The other half watched a documentary about notebooks as a control. In all cases the company director measured participants’ arousal  as an indicator of how much they enjoyed the film.
#' The data contains the following variables:
#'
#'   * **sex**: sex to which the participant mostly self-identifies
#'   * **film**: whether the person watched The Notebook or a documentary about notebooks
#'   * **arousal**: the person's average physiological arousal (e.g., emotional response) during the film.
#'
#' @format A tibble with 40 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"notebook"


#' Ong et al. (2011) data: wide/messy format
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' A study by Ong et al., (2011) examining the relationship between a person's narcissism and other people’s ratings of their profile picture on Facebook.
#' The pictures were rated on each of four dimensions: coolness, glamour, fashionableness, and attractiveness. In addition, each person was measures on introversion/extroversion and narcissism.
#' These data are in messy/wide format. The data contains the following variables:
#'
#'   * **id**: a number identifying he participant
#'   * **grade**: participants grade at school (Sec 1, Sec 2 or Sec 3)
#'   * **age**: participant's age in years
#'   * **sex**: biological sex of the participant
#'   * **status**: frequency of changing ones Facebook status per week
#'   * **attractiveness**: rating of profile picture along the dimension of physical attractiveness (1 = not attractive, 5 = very attractive)
#'   * **fashionable**: rating of profile picture along the dimension of fashionable of profile picture (1 = not fashionable, 5 = very fashionable)
#'   * **glamour**: rating of profile picture along the dimension of glamour (1 = not glamourous, 5 = very glamourous)
#'   * **cool**: rating of profile picture along the dimension of cool (1 = not cool, 5 = very cool)
#'   * **profile**: sum of profile picture ratings
#'   * **extraversion**: score on the NEO Five-Factor Inventory (NEO-FFI) extraversion scale
#'   * **narcissism**: score on the Narcissistic Personality Questionnaire for Children-Revised (NPQC-R)
#'
#' @format A tibble with 275 rows and 12 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#' * Ong, E. Y. L., Ang, R. P., Ho, J. C. M., Lim, J. C. Y., Goh, D. H., Lee, C. S., & Chua, A. Y. K. (2011). Narcissism, extraversion and adolescents’ self-presentation on Facebook. *Personality and Individual Differences*, 50, 180–185. [https://doi.org/10.1016/j.paid.2010.09.022](https://doi.org/10.1016/j.paid.2010.09.022)


"ong_2011"

#' Ong et al. (2011) data: tidy format
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' A study by Ong et al., (2011) examining the relationship between a person's narcissism and other people’s ratings of their profile picture on Facebook.
#' The pictures were rated on each of four dimensions: coolness, glamour, fashionableness, and attractiveness. In addition, each person was measures on introversion/extroversion and narcissism.
#' These data are in tidy format. The data contains the following variables:
#'
#'   * **id**: a number identifying he participant
#'   * **age**: participant's age in years
#'   * **sex**: biological sex of the participant
#'   * **status**: frequency of changing ones Facebook status per week
#'   * **profile**: sum of profile picture ratings
#'   * **extraversion**: score on the NEO Five-Factor Inventory (NEO-FFI) extraversion scale
#'   * **narcissism**: score on the Narcissistic Personality Questionnaire for Children-Revised (NPQC-R)
#'   * **rating_type**: the dimension along which profile pictures were rated (Attractiveness, Fashionable, Cool, Glamour)
#'   * **rating**: rating of the profile picture from 1 (not attractive/cool/fashionable/glamourous) to 5 (very attractive/cool/fashionable/glamourous)
#'
#' @format A tibble with 1100 rows and 9 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Ong, E. Y. L., Ang, R. P., Ho, J. C. M., Lim, J. C. Y., Goh, D. H., Lee, C. S., & Chua, A. Y. K. (2011). Narcissism, extraversion and adolescents’ self-presentation on Facebook. *Personality and Individual Differences*, 50, 180–185. [https://doi.org/10.1016/j.paid.2010.09.022](https://doi.org/10.1016/j.paid.2010.09.022)

"ong_tidy"

#' Puppy therapy data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Despite the increase in puppies on my campus (which can only be a good thing) to reduce stress,
#' the evidence base is pretty mixed. Imagine we wanted to contribute to this literature by running a
#' study in which we randomized people into three groups (dose): (1) a control group, which could be
#' a treatment as usual, a no treatment (no puppies) or ideally some kind of placebo group (we could
#' give people in this group a cat disguised as a dog); (2) 15 minutes of puppy therapy (a low-dose
#' group); and (3) 30 minutes of puppy contact (a high-dose group). The dependent variable was a
#' measure of happiness ranging from 0 (as unhappy as I can possibly imagine) to 10 (as happy as I can
#' possibly imagine). The design of this study mimics a very simple randomized controlled trial (as used
#' in pharmacological, medical and psychological intervention trials) because people are randomized into
#'  a control group or groups containing the active intervention (in this case puppies, but in other cases
#'  a drug or a surgical procedure). The tibble contains the following variables:
#'
#' * **id**: Participant id
#' * **dose**: Treatment group to which the participant was randomly assigned (No puppies (control), 15 minutes of puppy therapy, 30 minutes of puppy therapy)
#' * **happiness**: Self-reported happiness from 0 (as unhappy as I can possibly imagine being) to 10 (as happy as I can possibly imagine being)
#'
#' @format A tibble with 15 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"puppies"


#' Pub data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Data illustrating the difference between an outlier and an influencial case. The data came to me via David Hitchin, and he in turn got it from Dr Richard Roberts.
#' I have no idea whether it's real or fictitious. The tibble contains the following variables:
#'
#' * **pubs**: The number of pubs in a particular district of London
#' * **mortality**: The mortality rate in that district
#'
#' @format A tibble with 8 rows and 2 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"pubs"

#' R exam data data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictitious data relating to an R exam at two universities. The tibble contains the following variables:
#'
#' * **id**: The student's id
#' * **exam**: first-year R exam scores as a percentage
#' * **computer**: a measure of computer literacy as a percentage
#' * **lecture**: percentage of statistics lectures attended
#' * **numeracy**: a measure of numerical ability out of 15
#' * **uni**: The university attended (Sussex University or Duncetown University)
#'
#' @format A tibble with 100 rows and 6 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"r_exam"

#' Roaming cats data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Fictional data about roaming cats. I was interested in the relationship between the sex of a cat and how much time it spent away from home.
#' I had heard that male cats disappeared for substantial amounts of time on long-distance roams around the neighbourhood (something about hormones driving them to find mates) whereas female cats tended to be more homebound.
#' The data set has four variables
#'
#'   * **id**: Cat id
#'   * **time**: Time spent away from home per week
#'   * **sex**: biological sex of the cat as a factor
#'
#' @docType data
#' @format A tibble with 60 rows and 4 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"roaming_cats"

#' Self-help book data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' ‘Pop psychology’ books sometimes spout nonsense that is unsubstantiated by science. I took 20 people in
#' relationships and randomly assigned them to one of two groups. One group read the famous popular psychology
#' book *Women are from Bras and men are from Penis*, and the other read *Marie Claire*. The outcome variable was
#' their relationship happiness after their assigned reading. The (fictional) data contains the following variables:
#'
#' * **id**: the participant's id
#' * **book**: whether the participants read *Women are from bras and men are from penis* or *Marie Claire*
#' * **happy**: the participant's relationship happiness after reading the book assigned to them
#'
#' @format A tibble with 20 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"self_help"

#' Self-help book vs statistics book data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Twaddle and Sons, the publishers of Women are from Bras and men are from Penis, were upset about my claims
#' that their book was as useful as a paper umbrella. They ran their own experiment (N = 500) in which relationship
#' happiness was measured after participants had read their book and after reading the book you are currently reading.
#' (Participants read the books in counterbalanced order with a six-month delay.)  The (fictional) data contains the following variables:
#'
#' * **id**: the participant's id
#' * **book**: whether relationship happiness was measured after reading *Women are from bras and men are from penis* or after reading *Discovering statistics using R*
#' * **happy**: the participant's relationship happiness after reading each book
#'
#' @format A tibble with 1000 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"self_help_dsur"

#' Shopping and exercise data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' According to some highly unscientific research done by a UK department store chain and reported in Marie Claire magazine ([http://ow.ly/9Dxvy](http://ow.ly/9Dxvy)), shopping is good for you.
#' They found that the average woman spends 150 minutes and walks 2.6 miles when she shops, burning off around 385 calories. In contrast, men spend only about 50 minutes shopping, covering 1.5 miles.
#' This was based on strapping a pedometer on a mere 10 participants. Although I don’t have the actual data, some simulated data based on these means are in this file.
#'
#'   * **sex**: biological sex of the individual
#'   * **distance**: the distance travelled in miles
#'   * **time**: the time spent shopping in minutes
#'
#' @format A tibble with 10 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"shopping"

#' Social anxiety data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Anxiety disorders take on different shapes and forms, and each disorder is believed to be distinct and have unique causes.
#' We can summarize the disorders and some popular theories as follows:
#'
#' * Social Anxiety: Social anxiety disorder is a marked and persistent fear of 1 or more social or performance situations in which the person is exposed to unfamiliar people or possible scrutiny by others. This anxiety leads to avoidance of these situations. People with social phobia are believed to feel elevated feelings of shame.
#' * Obsessive Compulsive Disorder (OCD): OCD is characterized by the everyday intrusion into conscious thinking of intense, repetitive, personally abhorrent, absurd and alien thoughts (Obsessions), leading to the endless repetition of specific acts or to the rehearsal of bizarre and irrational mental and behavioural rituals (compulsions).
#'
#' Social anxiety and obsessive compulsive disorder are seen as distinct disorders having different causes. However, there are some similarities.
#' They both involve some kind of attentional bias: attention to bodily sensation in social anxiety and attention to things that could have negative consequences in OCD.
#' They both involve repetitive thinking styles: social phobics ruminate about social encounters after the event (known as post-event processing), and people with OCD
#' have recurring intrusive thoughts and images. They both involve safety behaviours (i.e. trying to avoid the thing that makes you anxious).
#'
#' This might lead us to think that, rather than being different disorders, they are manifestations of the same core processes (Field & Cartwright-Hatton, 2008). One way to research
#' this possibility would be to see whether social anxiety can be predicted from measures of other anxiety disorders. If social anxiety disorder and OCD are distinct we should expect
#' that measures of OCD will not predict social anxiety. However, if there are core processes underlying all anxiety disorders, then measures of OCD should predict social anxiety.
#' The data contains three variables:
#'
#'   * **spai**: The Social Phobia and Anxiety Inventory (SPAI), which measures levels of social anxiety.
#'   * **iii**: The Interpretation of Intrusions Inventory (III).
#'   * **obq**: Obsessive Beliefs Questionnaire (OBQ), which measures the degree to which people experience obsessive beliefs like those found in OCD.
#'   * **tosca**: The Test of Self-Conscious Affect (TOSCA), which measures shame.
#'
#' @format A tibble with 134 rows and 4 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Field, A. P., & Cartwright-Hatton, S. (2008). Shared and unique cognitive factors in social anxiety. *International Journal of Cognitive Therapy*, *1*, 206–222. [doi.org/10.1521/ijct.2008.1.3.206](https://doi.org/10.1521/ijct.2008.1.3.206).

"social_anxiety"

#' Soya and sperm counts data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' I read a story in a newspaper (yes, back when they existed) claiming that the chemical genistein, which is
#' naturally occurring in soya, was linked to lowered sperm counts in Western males. When you read the actual study,
#' it had been conducted on rats, it found no link to lowered sperm counts, but there was evidence of abnormal sexual
#' development in male rats (probably because genistein acts like oestrogen). As journalists tend to do, a study showing no
#' link between soya and sperm counts was used as the scientific basis for an article about soya being the cause of declining
#' sperm counts in Western males. Imagine the rat study was enough for us to want to test this idea in humans.
#' We recruit 80 males and split them into four groups that vary in the number of soya ‘meals’ (a dinner containing 75g of soya)
#' they ate per week over a year: no soya meals (i.e., none in the whole year), one per week (52 over the year),
#' four per week (208 over the year), and seven per week (364 over the year). At the end of the year, participants
#' produced some sperm that I could count (when I say ‘I’, I mean someone else in a laboratory as far away from me as humanly possible).
#' The fictitious data contain the following variables:
#'
#'   * **id**: The participant's id
#'   * **soya**: How many soya meals per week consumed over a year (none, 1, 4 and 7)
#'   * **sperm**: number of sperm cells per milliliter of semen in millions (yes, I did have to Google that)
#'
#' @docType data
#' @format A tibble with 80 rows and 3 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"soya"

#' Students and lecturers data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Some fictional data about students and lecturers.
#' The object contains the following variables:
#'
#'   * **name**: Name of person
#'   * **birth_date**: Date of birth (Year-month-day)
#'   * **group**: whether the person is a student or lecturer
#'   * **friends**: how many friends the person has. That's actual friends, not social media friends.
#'   * **alcohol**: Units of alcohol consumed per week
#'   * **income**: income (per anum)
#'   * **neurotic**: Score on a neuroticism scale
#'
#' @docType data
#' @format A tibble with 10 rows and 7 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"students"

#' Superhero data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Children wearing superhero costumes are more likely to harm themselves because of the unrealistic impression of
#' invincibility that these costumes could create. For example, children have reported to hospital with severe injuries
#' because of trying ‘to initiate flight without having planned for landing strategies’ (Davies, Surridge, Hole, & Munro-Davies, 2007).
#' I can relate to the imagined power that a costume bestows upon you; indeed, I have been known to dress up as Fisher by donning a
#' beard and glasses and trailing a goat around on a lead in the hope that it might make me more knowledgeable about statistics.
#' These fictional data contain the severity of injury (on a scale from 0, no injury, to 100, death) for children reporting to the accident
#' and emergency department at hospitals, and information on which superhero costume they were wearing (hero):
#' Spiderman, Superman, the Hulk or a teenage mutant ninja turtle. The fictitious data contain the following variables:
#'
#'   * **id**: The participant's id
#'   * **hero**: The costume being worn at the time of injury (Spiderman, Superman, the Hulk or a teenage mutant ninja turtle)
#'   * **injury**: the severity of injury (on a scale from 0, no injury, to 100, death)
#'
#' @docType data
#' @format A tibble with 30 rows and 3 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"superhero"

#' Supermodel data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' A fashion student was interested in factors that predicted the salaries of male and female catwalk models.
#' She collected data from 231 models (supermodel.csv). For each model she asked them their salary per day (salary),
#' their age (age), their length of experience as models (years), and their industry status as a model as their
#' percentile position rated by a panel of experts (status). The fictitious data contain the following variables:
#'
#'   * **salary**: The model's salary
#'   * **age**: The model's age (years)
#'   * **years**: The model's experience (years in the industry)
#'   * **status**: Model's status as their percentile position (%) rated by a panel of experts.
#'
#' @docType data
#' @format A tibble with 231 rows and 4 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"supermodel"

#' Tablet sales data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' A company owner was interested in how to make his brand of (computer) tablets more desirable.
#' He collected data on how cool people perceived a product’s advertising to be, how cool they thought the product was,
#' and how desirable they found the product. Am I showing my age by using the word ‘cool’? The fictitious data contain the following variables:
#'
#'   * **id**: Participant ID
#'   * **advert_cool**: Perceived 'coolness' of the advertising campaign from 0 (as cool as Andy Field) to 5 (as cool as something that makes you go 'wow, that's sick', or whatever it is that people under the age of 25 say these days)
#'   * **desirability**: The desirability of the product from (0 as desirable as Andy Field) to 10 (I *really* want one of those)
#'   * **product_cool**: Perceived 'coolness' of the product from from 0 (designed by Andy Field) to 5 (Designed by Apple).
#'
#' @docType data
#' @format A tibble with 240 rows and 4 variables.
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"tablets"

#' Method of teaching data (2 groups)
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' The data show the score (out of 20) for 20 different students, some of whom are biologically male and others biologically female,
#' and some of whom were taught using positive reinforcement (being nice) and others who were taught using punishment (electric shock)
#'
#'   * **method**: The type of teaching method used
#'   * **sex**: Biological sex of the individual
#'   * **mark**: The score out of 20 on a test
#'
#' @format A tibble with 20 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"teaching"

#' Method of teaching data (3 groups)
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' To test how different teaching methods affected students’ knowledge I took three statistics modules where
#' I taught the same material. For one module I wandered around with a large cane and beat anyone who asked
#' daft questions or got questions wrong (punish). In the second I encouraged students to discuss things that
#' they found difficult and gave anyone working hard a nice sweet (reward). In the final course I neither
#' punished nor rewarded students’ efforts (indifferent). I measured the students’ exam marks (percentage).
#' This fictional data contains the following variables
#'
#'   * **id**: participant's id
#'   * **group**: The type of teaching method used (Punish, Reward, Indifferent)
#'   * **exam**: The exam mark (%)
#'
#' @format A tibble with 30 rows and 3 variables.
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"teach_method"

#' Tea data (small sample)
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' One of my favourite activities, especially when trying to do brain-melting things like writing statistics books, is drinking tea. I am English, after all.
#' Fortunately, tea improves your cognitive function – well, it does in old Chinese people at any rate (Feng, Gwee, Kua, & Ng, 2010).
#' I may not be Chinese and I’m not that old, but I nevertheless enjoy the idea that tea might help me think. Here are some (fictional) data based on Feng et al.’s
#' study that measured the number of cups of tea drunk per day and cognitive functioning (out of 80) in 15 people.
#'
#'   * **id**: participant ID
#'   * **tea**: the number of cups of tea a person drinks per day
#'   * **cog_fun**: cognitive functioning (out of 80)
#'
#' @format A tibble with 15 rows and 3 variables:
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Feng, L., Gwee, X., Kua, E. H., & Ng, T. P. (2010). Cognitive function and tea consumption in community dwelling older Chinese in Singapore. *Journal of Nutrition Health & Aging*, *14*, 433-438.

"tea_15"

#' Tea data (large sample)
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' One of my favourite activities, especially when trying to do brain-melting things like writing statistics books, is drinking tea. I am English, after all.
#' Fortunately, tea improves your cognitive function – well, it does in old Chinese people at any rate (Feng, Gwee, Kua, & Ng, 2010).
#' I may not be Chinese and I’m not that old, but I nevertheless enjoy the idea that tea might help me think. Here are some (fictional) data based on Feng et al.’s
#' study that measured the number of cups of tea drunk per day and cognitive functioning (out of 80) in 716 people.
#'
#'   * **id**: participant ID
#'   * **tea**: the number of cups of tea a person drinks per day
#'   * **cog_fun**: cognitive functioning (out of 80)
#'
#' @format A tibble with 716 rows and 3 variables:
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Feng, L., Gwee, X., Kua, E. H., & Ng, T. P. (2010). Cognitive function and tea consumption in community dwelling older Chinese in Singapore. *Journal of Nutrition Health & Aging*, *14*, 433-438.

"tea_716"

#' Tuk et al. (2011) data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Visceral factors that require us to engage in self control (such as a filling bladder) can affect our inhibtory
#' abilities in unrelated domains. In a fascinating study by Tuk, Trampe, and Warlop (2011) participants were given
#' five cups of water: one group was asked to drink them all, whereas another was asked to take a sip from each.
#' This manipulation led one group to have full bladders and the other group relatively empty (urgency).
#' Later on, these participants were given eight trials on which they had to choose between a small financial
#' reward that they would receive soon (SS) or a large financial reward for which they would wait longer (LL).
#' They counted how many trials participants choose the LL reward as an indicator of inhibitory control (ll_sum). The data contains three variables:
#'
#'   * **id**: participant ID
#'   * **urgency**: whether participants were in a high urination urgency condition (they drank everything) or a low urgency condition (they took sips of water)
#'   * **ll_sum**: the total number of LL rewards
#'
#' @format A tibble with 102 rows and 3 variables
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Tuk, M. A., Trampe, D., & Warlop, L. (2011). Inhibitory spillover: increased urination urgency facilitates impulse control in unrelated domains. *Psychological Science*, 22, 627–633. [doi.org/10.1177/0956797611404901](https://doi.org/10.1177/0956797611404901)

"tuk_2011"

#' Mobile phone use and brain tumour data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Mobile phones emit microwaves, and so holding one next to your brain for large parts of the day is a bit like
#' sticking your brain in a microwave oven and pushing the ‘cook until well done’ button. If we wanted to test this
#' experimentally, we could get six groups of people and strap a mobile phone on their heads, then by remote control
#' turn the phones on for a certain amount of time each day. After six months, we measure the size of any tumour (in mm^3)
#'  close to the site of the phone antenna (just behind the ear). The six groups experienced 0, 1, 2, 3, 4 or 5 hours per
#'  day of phone microwaves for six months. The fictitious data contains three variables:
#'
#'   * **id**: participant ID
#'   * **usage**: how many hours per day were the phones active for (0, 1, 2, 3, 4, or 5 hours)
#'   * **tumour**: Size of any tumour (in mm^3)
#'
#' @format A tibble with 102 rows and 3 variables
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"tumour"

#' Video game and aggression data
#'
#' A dataset from Field, A. P. (2020). Discovering statistics using R and RStudio (2nd ed.). London: Sage.
#'
#' Video games are among the favourite online activities for young people. These games have been linked to increased aggression in youths.
#' Another predictor of aggression and conduct problems is callous-unemotional traits such as lack of guilt, lack of empathy, callous use of others for personal gain.
#' Imagine that a scientist explored the relationship between playing violent video games and aggression. She measured aggressive behaviour, callous-traits, and the
#' number of hours per week they play video games in 442 youths. These fictitious data contains three variables:
#'
#'   * **id**: participant ID
#'   * **agress**: a measure of aggressive behaviour from 0 (no aggression at all) to 100 (extremely aggressive)
#'   * **vid_game**: number of hours per week spent playing video games
#'   * **caunts**: callous unemotional traits measured on the Inventory of Callous-Unemotional Traits (ICU), ranging from 0 (none) to 72 (extreme)
#'
#' @format A tibble with 442 rows and 4 variables
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)

"video_games"



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
#'   * **id**: participant ID
#'   * **sex**: participant's biological sex
#'   * **name_type**: the booklet condition to which the participant was allocated: Female fake name, Male fake name or Own name
#'   * **accuracy**: the participant's score on the maths test
#'
#' @format A tibble with 52 rows and 4 variables
#' @docType data
#' @source [www.discovr.rocks](https://www.discovr.rocks)
#' @references
#'
#'    * Field, A. P. (2010). Teaching Statistics. In D. Upton & A. Trapp (Eds.), *Teaching Psychology in Higher Education* (pp. 134-163). Chichester, UK: Wiley-Blackwell.
#'    * Zhang, S., Schmader, T., & Hall, W. M. (2013). L'eggo My Ego: Reducing the Gender Gap in Math by Unlinking the Self from Performance. *Self and Identity*, *12*, 400-412. [https://doi.org/10.1080/15298868.2012.687012](https://doi.org/10.1080/15298868.2012.687012)


"zhang_sample"

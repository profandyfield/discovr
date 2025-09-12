#' discovr: Resources for Discovering Statistics Using R and RStudio (Field, 2023)
#'
#' @description
#'
#' The \code{discovr} package contains interactive \code{learnr} tutorials and datasets that accompany my textbook [Discovering Statistics Using R and RStudio](https://www.discovr.rocks/).
#'
#' @section Who is the package aimed at?:
#'
#' Anyone teaching from or reading [Discovering Statistics Using R and RStudio](https://www.discovr.rocks/) should find these resources useful.
#'
#'
#' @section Interactive tutorials:
#'
#' **Getting started**:
#'
#' I recommend working through [this tutorial](https://milton-the-cat.rocks/learnr/r/r_getting_started/) on how to install, set up and work within R and RStudio before starting the interactive tutorials.
#'
#' **Running a tutorial**:
#'
#' To run each tutorial execute
#'
#' \code{learnr::run_tutorial("name_of_tutorial", package = "discovr")}
#'
#' Replacing \code{name_of_tutorial} with the name in bold below. For example, to load the tutorial \code{discovr_02} execute:
#'
#' \code{learnr::run_tutorial("discovr_02", package = "discovr")}
#'
#' * **discovr_01**: Introducing R, RStudio and Quarto: What is R, tour of RStudio and Quarto, getting help, installing packages, coding style and loading packages
#' * **discovr_02**: Code fundamentals: Functions and objects, packages and functions, style, data types.
#' * **discovr_03**: The tidyverse: tidy and messy data, tibbles, adding and selecting variables, filtering cases.
#' * **discovr_04**: Summarizing data: mean, median, variance, standard deviation, interquartile range,  normal and bootstrap confidence intervals, tables of summary statistics. Includes an interactive app demonstrating what a confidence interval is.
#' * **discovr_05**: Visualizing data. The \code{ggplot2} package, boxplots, plotting means, violin plots, scatterplots, grouping by colour, grouping using facets, adjusting scales, adjusting positions.
#' * **discovr_06**: The beast of bias. Restructuring data from messy to tidy format (and back). Spotting outliers using histograms and boxplots. Calculating \emph{z}-scores (standardizing scores). Writing your own function. Using \emph{z}-scores to detect outliers. Q-Q plots. Calculating skewness, kurtosis and the number of valid cases. Grouping summary statistics by multiple categorical/grouping variables.
#' * **discovr_07**: Associations. Plotting data with \code{GGally}. Pearson's \emph{r}, Spearman's Rho, Kendall's tau, robust correlations. Using \code{display()} to round output more flexibly.
#' * **discovr_08**: The general linear model (GLM). Visualizing the data, fitting GLMs with one and two predictors. Viewing model parameters with \code{broom}, model parameters, standard errors, confidence intervals, fit statistics, significance.
#' * **discovr_09**: Categorical predictors with two categories (comparing two means). Comparing two independent means, comparing two related means, effect sizes, robust comparisons of means (independent and related), Bayes factors and estimation (independent and related means).
#' * **discovr_10**: Moderation and mediation. Centring variables (grand mean centring), specifying interaction terms, moderation analysis, simple slopes analysis, Johnson-Neyman intervals, mediation with one predictor, direct and indirect effects, mediation using lavaan.
#' * **discovr_11**: Comparing several means. Essentially 'One-way independent ANOVA' but taught using a general linear model framework. Covers setting contrasts (dummy coding, contrast coding, and linear and quadratic trends), the *F*-statistic and Welch's robust *F*, robust parameter estimation, heteroscedasticity-consistent tests of parameters, robust tests of means based on trimmed data, *post hoc* tests.
#' * **discovr_12**: Linear models involving continuous and categorical predictors. The example explores comparing means adjusted for other variables (a parallel slopes model or 'Analysis of Covariance (ANCOVA)'). The tutorial covers setting contrasts, fitting the models, evaluating effects using *F*-statistics based on Type III sums of squares and diagnostic plots, and interpretting the model using heteroscedasticity-consistent tests of parameters and *post hoc* tests.
#' * **discovr_13**: Factorial designs. Fitting models for two-way factorial designs (independent measures) using lm(). This tutorial builds on previous ones to show how models can be fit with two categorical predictors to look at the interaction between them. We look at fitting the models, setting contrasts for the two categorical predictors, obtaining interaction plots, simple effects analysis, diagnostic plots and robust models.
#' * **discovr_13_afex**: Factorial designs. Fitting models for two-way factorial designs (independent measures) using the `afex` package. This tutorial takes an ANOVA approach to factorical designs. We look at fitting the models, interaction plots, simple effects analysis, diagnostic plots, partial omega-squared and robust models.
#' * **discovr_14**: Multilevel models. This tutorial looks at fitting multilevel models using the \code{glmmTMB} package (all code will also work with \code{lme4}). It begins with an optional section on checking and coding categorical variables before moving on to show you how to fit and interpret a multilevel model. We also look briefly at the \code{purrr} package.
#' * **discovr_14_lme**: Multilevel models. This tutorial looks at fitting multilevel models using the \code{nlme} package. It begins with an optional section on checking and coding categorical variables before moving on to show you how to fit and interpret a multilevel model.
#' * **discovr_15**: Repeated measures designs. Fitting models for one- and two-way repeated measures designs using the \code{afex} package. This tutorial builds on previous ones to show how models can be fit with one or two categorical predictors when these variables have been manipulated within the same entities. We look at fitting the models, setting contrasts for the categorical predictors, obtaining estimated marginal means, interaction plots, simple effects analysis, diagnostic plots, robust models and Bayes factors.
#' * **discovr_15_growth**: Modelling change over time. Growth models using multilevel modelling and the \code{glmmTMB} package. (All code will also work with \code{lme4}.) First we explore growth over time by building up a model to include a random intercept and slope for time. We then model non-linear change using both an exponential effect of time and a polynomials. We then extend the model to an example based on a clinical trial in which a fixed effect of an intervention moderates change over time.
#' * **discovr_16**: "Mixed designs. Fitting models for mixed designs using the \code{afex} package. This tutorial builds on previous ones to show how models can be fit with one or two categorical predictors when at least one of these variables has been manipulated within the same entities and at least one other has been manipulated using different entities. We look at fitting the models, setting contrasts for the categorical predictors, obtaining estimated marginal means, and interaction plots.
#' * **discovr_17**: Exploratory Factor Analysis (EFA). Applying factor analysis using the \code{psych} package.
#' * **discovr_18**: Categorical variables. Entering categorical data, contingency tables, associations between categorical variables, the chi-square test, standardized residuals, Fisher's exact test.
#' * **discovr_19**: Categorical outcomes (logistic regression). This tutorial builds on previous ones to show how the general linear model model extends to situations where you want to predict a binary outcome (logistic regression). We look at fitting the models and interpreting the odds ratio.
#' * **discovr_bayes**: Bayesian taster tutorial. This tutorial offers a taster of Bayesian statistics by showing how to conduct various analyses from other tutorials within a Bayesian framework (mainly using default priors). We also look at Bayes factors".
#'
#' **Workflow**:
#'
#' The tutorials are self-contained (you practice code in code boxes) so you don't need to use RStudio at the
#' same time. However, to get the most from them I would recommend that you create an RStudio project and within that open (and save) a new
#' R Markdown file each time to work through a tutorial. Within that Markdown file, replicate parts of the code from the tutorial (in code chunks)
#' and use Markdown to write notes about what you have done, and to reflect on things that you have struggled with, or note useful tips to help you
#' remember things. Basically, write a learning journal. This workflow has the advantage of not just teaching you the code that you need to do certain things,
#'  but also provides practice in using RStudio itself.
#'
#'
#' @section Datasets:
#'
#' See the book or data descriptions for more details. This is a list of available datasets within the package. Raw CSV files are available from the book's website.
#'
#' * [acdc]: Data about whether Bon Scott or Brian Johnson is the best singer of AC/DC.
#' * [album_sales]: Fictitious data about predicting album sales from advertising, airplay and the band's image.
#' * [alien_scents]: Fictitious data about training sniffer dogs to detect alien space lizards when they try to mask their identity with different scents. See also [sniffer_dogs].
#' * [angry_pigs]: fictitious data about whether playing the video game angry pigs makes people more aggressive towards pigs. See also [angry_real].
#' * [angry_real]: fictitious data about whether playing the video game angry pigs makes people more aggressive in everyday life. See also [angry_pigs].
#' * [animal_bride]: Fictitious data about life satisfaction when married to a dog or a goat.
#' * [animal_dance]: Fictitious data about training cats and dogs to dance.
#' * [beckham_1929]: Data from a study by Beckham (1929).
#' * [big_hairy_spider]: Fictitious data about whether anxiety is greater after exposure to real spiders or pictures of spiders.
#' * [biggest_liar]: Fictitious data about creativity and telling lies.
#' * [bronstein_2019]: Data about whether delusion proneness predicts belief in fake news because of less analytic thinking.
#' * [bronstein_miss_2019]: The data in [bronstein_2019] but with missing values inserted using MCAR amputation.
#' * [catterplot]: Fictitious data for plotting a catterplot.
#' * [cat_dance]: Fictitious data about training cats to dance.
#' * [cat_reg]: Fictitious data about training cats to dance.
#' * [cetinkaya_2006]: data from a study by Cetinkaya and Domjan (2006) about quails with sexual fetishes. Seriously.
#' * [chamorro_premuzic]: Data about what students want (personality wise) from their lecturers.
#' * [child_aggression]: Fictitious data (based on real research) about predicting aggression in children.
#' * [coldwell_2006]: Data predicting childhood adjustment from various parenting variables.
#' * [cosmetic]: Fictitious multilevel data predicting quality of life from cosmetic surgery.
#' * [daniels_2012]: Data about the effects of sexualised sports images on self-image.
#' * [dark_lord]: Fictitious data about the subliminal messages in songs.
#' * [davey_2003]: Data about the effects mood and stop rules on checking behaviour.
#' * [dog_training]: Data about the training dogs to vocalise when they sniff alien life forms.
#' * [download]: Fictitious data about the download music festival and being smelly.
#' * [df_beta]: Fictitious data used to illustrate the DF Beta statistic.
#' * [eel]: Fictitious data about a randomized control trial to test whether eel therapy is an effective treatment of constipation.
#' * [elephooty]: Fictitious data about elephants playing football (soccer).
#' * [escape]: Fictitious data about whether I'm a better songwriter than my school bandmate Malcolm.
#' * [essay_marks]: Fictitious data about essay marking.
#' * [exam_anxiety]: Fictitious data about exam performance, anxiety and revision.
#' * [exercise]: Fictitious data from a randomised control trial of the effect of exercise on emotional well-being.
#' * [field_2006]: Data that tests a hypothesis that threat information affects children's avoidance of novel animals.
#' * [gallup_2003]: Data that tests a hypothesis about why penises have a bell end.
#' * [gelman_2009]: Data used to critically evaluate the explanations (and claim) that there are more beautiful women than men in the world.
#' * [glastonbury]: More fictitious data about music festivals and being smelly.
#' * [goggles]: Fictitious data about whether alcohol affects perception of physical attractiveness.
#' * [goggles_lighting]: fictitious data about the moderating effect of lighting on the ratings of attractivenesses of faces after different doses of alcohol.
#' * [grades]: Fictitious data about statistics grades.
#' * [ice_bucket]: Data about the ice bucket challenge.
#' * [invisibility_base]: Fictitious data about how much mischief people would get up to if they had an invisibility cloak using a pre-post study design.
#' * [invisibility_cloak]: Fictitious data about how much mischief people would get up to if they had an invisibility cloak using an independent design.
#' * [invisibility_rm]: Fictitious data about how much mischief people would get up to if they had an invisibility cloak but using a repeated measures design.
#' * [hangover]: fictitious data about the efficacy of different drinks as cures for a hangover.
#' * [hiccups]: Fictitious data on digital rectal stimulation and hiccups.
#' * [hill_2007]: Data from Hill et al. (2007) testing the effect of different forms of psychoeducation on exercise behaviour.
#' * [honesty_lab]: Fictitious data about perceptions of honesty.
#' * [jiminy_cricket]: Fictitious data about whether wishing on a star makes you successful.
#' * [johns_2012]: Data about whether the colour red is a mating signal to men.
#' * [lambert_2012]: Data about whether pornography use is related to relationship commitment and infidelity.
#' * [massar_2012]: Data about whether gossiping has an evolutionary function.
#' * [mcnulty_2008]: Simulated data to match the results of a study about whether attractiveness is linked to the support given within a relationship.
#' * [men_dogs]: Fictitious data about whether men exhibit dog-like behaviours (compared to dogs).
#' * [metal]: Fictitious data about whether listening to metal music makes you angry.
#' * [metal_health]: Fictitious data about whether listening to heavy metal negatively affects mental health.
#' * [metallica]: Data about thrash metal band Metallica.
#' * [miller_2007]: Data from Miller et al. (2007) testing the hidden-estrus theory.
#' * [mixed_attitude]: Fictitious data about whether different type of imagery in advertising affect ratings of different types of drinks based on the gender identity of the participant.
#' * [murder]: Fictitious data about the number of murder each month at three street locations (Ruskin Avenue, Acacia Avenue and Rue Morgue).
#' * [muris_2008]: Data about whether you can train children to interpret ambiguous situations in a particular way.
#' * [nichols_2004]: Data from the development of the Internet Addiction Scale, IAS (Nichols & Nicki, 2004).
#' * [notebook]: Fictitious data about whether watching the film the notebook is emotionally arousing.
#' * [ocd]: Fictitious data about interventions for obsessive compulsive disorder.
#' * [ong_2011]: Data about social media profile pictures and personality traits.
#' * [ong_tidy]: Data about social media profile pictures and personality traits.
#' * [penalty_shootout]: Fictitious data about predictors of penalty kick success in soccer (or whatever sport you enjoy).
#' * [profile_pic]: Fictitious data related to whether the number of friend requests from random people on social media is affected by whether your profile picture depicts you as single or part of a romantic couple.
#' * [pubs]: Data illustrating the difference between an outlier and an influential case.
#' * [puppies]: Fictitious data related to whether puppy therapy works.
#' * [puppy_ancova]: Fictitious data related to whether puppy therapy works when you adjust for a person's baseline happiness.
#' * [puppy_love]: Fictitious data related to whether puppy therapy works when you adjust for a person's love of puppies.
#' * [raq]: Fictitious data relating to a fictional questionnaire about R anxiety that is not an actual questionnaire.
#' * [r_exam]: Fictitious data relating to an R exam at two universities.
#' * [reality_tv]: Fictitious data relating to whether being on a reality TV show exacerbates personality disorder traits.
#' * [roaming_cats]: Fictitious data about how far cats roam from their homes.
#' * [rollercoaster]: Fictitious data about how roller-coaster induced fear affects attractiveness ratings.
#' * [santas_log]: Fictitious data related to whether the type and quantity of treat consumed on Christmas night affects whether elves successfully deliver presents.
#' * [self_help]: Fictitious data about whether self-help books improve relationship satisfaction.
#' * [self_help_dsur]: Fictitious data about whether self-help books improve relationship satisfaction compared to statistics books.
#' * [sharman_2015]: Data from Sharman & Dingle (2015) about whether listening to metal music increases anger.
#' * [shopping]: Fictitious data about shopping.
#' * [sniffer_dogs]: Fictitious data about training sniffer dogs to detect alien space lizards when they try to mask their identity with different scents. See also [alien_scents].
#' * [social_anxiety]: Fictitious (I think) data about whether social anxiety symptoms are specific to social anxiety.
#' * [social_media]: Fictitious data about the effects of social media on grammar.
#' * [soya]: fictitious data about the effects of eating soya on sperm count.
#' * [speed_date]: Fictitious data related to the extent to which interest in dating someone is affected by their looks, personality or the dating strategy they adopt.
#' * [stalker]: fictitious data about therapy for stalking.
#' * [students]: I can't even remember what this data file contains.
#' * [superhero]: fictitious data about whether wearing different superhero costumes leads to more severe physical injuries.
#' * [supermodel]: Fictitious data about supermodel salaries.
#' * [switch]: Fictitious data relating to whether injuries from playing video console games can be mitigated by a warm up.
#' * [tablets]: Fictitious data about predicting the desirability of computing tablets.
#' * [tea_15]: Fictitious data based on real data about cognitive functioning and drinking tea.
#' * [tea_716]: Fictitious data based on real data about cognitive functioning and drinking tea.
#' * [teaching]: Fictitious data about the success of different methods of teaching.
#' * [teach_method]: More fictitious data about the success of different methods of teaching.
#' * [text_messages]: fictitious data about whether use of messaging apps ruins your grammar.
#' * [tosser]: Fictitious data relating to a fictional questionnaire about The Teaching of Statistics for Scientific Experiments, which is fictional.
#' * [tuk_2011]: Data about whether needing to urinate helps decision making.
#' * [tumour]: fictitious data about mobile phone use and brain tumours.
#' * [tutor_marks]: fictitious data comparing 4 tutors marks of the same essays.
#' * [van_bourg_2020]: Data from van Bourg et al (2020) relating to whether dogs would release their distressed owners from a box.
#' * [video_games]: Fictitious data about the relationship between video game use, callous unemotional traits and aggression.
#' * [williams]: Data relating to the development of a questionnaire to measure organizational ability.
#' * [xbox]: Fictitious data relating injuries to the type of video console game played and the console it was played on.
#' * [tuk_2011]: Data about whether needing to urinate helps decision making.
#' * [zhang_sample]: Data about whether performing a maths test under a different name assists performance.
#' * [zibarras_2008]: Data from Zibarras, Port, and Woods (2008) relating to the relationship between personality and creativity.
#' * [zombie_growth]: fictitious data that mimics a randomised control trial over time testing an intervention to transform zombies back to their pre-zombified state.
#' * [zombie_rehab]: fictitious data that mimics a randomised control trial testing an intervention to transform zombies back to their pre-zombified state in different clinics.
#'
#' @section Smart Alex solutions:
#'
#'Solutions for end of chapter tasks are available at [www.discovr.rocks/solutions/alex/](https://www.discovr.rocks/solutions/alex/).
#'
#' @section Labcoat Leni solutions:
#'
#'Solutions for the Labcoat Leni tasks are available at [www.discovr.rocks/solutions/leni/](https://www.discovr.rocks/solutions/leni/).
#'
#' @section Chapter code:
#'
#'Although I recommend working through the interactive solutions, each book Chapter has online code and a downloadable R Markdown file available from [www.discovr.rocks/solutions/leni/](https://www.discovr.rocks/solutions/code/).
#'
#' @section Colour palettes:
#'
#' ## Colour palettes
#'
#'  Colour blind accessible pallettes based on [Okabe and Ito](https://jfly.uni-koeln.de/color/) and [Paul Tol's muted palette](https://sronpersonalpages.nl/~pault/data/colourschemes.pdf). Also colour themes based around the studio albums of my favourite band [Iron Maiden](https://www.ironmaiden.com).
#'  If you're wondering why some albums are missing, here's the explanation: X Factor (would basically be 8 shades of grey), Fear of the Dark (terrible album), The Book of Souls (would be 8 shades of black).
#'  The following palettes exist.
#'
#' * [amolad_pal]: Colour palette (8 colour) based on Iron Maiden's [A Matter of Life and Death](https://www.ironmaiden.com/studio-album/a-matter-of-life-and-death/) album sleeve. In \code{ggplot2} use [scale_color_amolad] and [scale_fill_amolad].
#' * [bnw_pal]: Colour palette (8 colour) based on Iron Maiden's [Brave New World](https://www.ironmaiden.com/studio-album/brave-new-world/) album sleeve. In \code{ggplot2} use [scale_color_bnw] and [scale_fill_bnw].
#' * [dod_pal]: Colour palette (8 colour) based on Iron Maiden's [Dance of Death](https://www.ironmaiden.com/studio-album/dance-of-death/) album sleeve. In \code{ggplot2} use [scale_color_dod] and [scale_fill_dod].
#' * [frontier_pal]: Colour palette (8 colour) based on Iron Maiden's [The Final Frontier](https://www.ironmaiden.com/studio-album/the-final-frontier/) album sleeve. In \code{ggplot2} use [scale_color_frontier] and [scale_fill_frontier].
#' * [im_pal]: Colour palette (8 colour) based on Iron Maiden's [eponymous](https://www.ironmaiden.com/studio-album/iron-maiden/) album sleeve. In \code{ggplot2} use [scale_color_im] and [scale_fill_im].
#' * [killers_pal]: Colour palette (8 colour) based on Iron Maiden's [Killers](https://www.ironmaiden.com/studio-album/killers/) album sleeve. In \code{ggplot2} use [scale_color_killers] and [scale_fill_killers].
#' * [nob_pal]: Colour palette (8 colour) based on Iron Maiden's [The Number of the Beast](https://www.ironmaiden.com/studio-album/the-number-of-the-beast/) album sleeve. In \code{ggplot2} use [scale_color_nob] and [scale_fill_nob].
#' * [okabe_ito_pal]: Colourblind-friendly palette (8 colour) from [Okabe and Ito](https://jfly.uni-koeln.de/color/). In \code{ggplot2} use [scale_color_oi] and [scale_fill_oi].
#' * [pom_pal]: Colour palette (8 colour) based on Iron Maiden's [Piece of Mind](https://www.ironmaiden.com/studio-album/piece-of-mind/) album sleeve. In \code{ggplot2} use [scale_color_pom] and [scale_fill_pom].
#' * [power_pal]: Colour palette (8 colour) based on Iron Maiden's [Powerslave](https://www.ironmaiden.com/studio-album/powerslave/) album sleeve. In \code{ggplot2} use [scale_color_power] and [scale_fill_power].
#' * [prayer_pal]: Colour palette (8 colour) based on Iron Maiden's [No Prayer for the Dying](https://www.ironmaiden.com/studio-album/no-prayer-for-the-dying/) album sleeve. Use [scale_color_prayer] and [scale_fill_prayer].
#' * [senjutsu_pal]: Colour palette (10 colour) based on the inner gatefold image of Iron Maiden's [Senjutsu album](https://www.ironmaiden.com/studio-album/senjutsu/) album sleeve. In \code{ggplot2} use [scale_color_senjutsu] and [scale_fill_senjutsu].
#' * [sit_pal]: Colour palette (8 colour) based on Iron Maiden's [Somewhere in Time](https://www.ironmaiden.com/studio-album/somewhere-in-time/) album sleeve. In \code{ggplot2} use [scale_color_sit] and [scale_fill_sit].
#' * [ssoass_pal]: Colour palette (8 colour) based on Iron Maiden's [Seventh Son of a Seventh Son](https://www.ironmaiden.com/studio-album/seventh-son-of-a-seventh-son/) album sleeve. In \code{ggplot2} use [scale_color_ssoass] and [scale_fill_ssoass].
#' * [tol_muted_pal]: Palette (9 colour) used in the book from [Paul Tol](https://sronpersonalpages.nl/~pault/data/colourschemes.pdf). In \code{ggplot2} use [scale_color_tol] and [scale_fill_tol].
#' * [virtual_pal]: Colour palette (8 colour) based on Iron Maiden's [Virtual IX](https://www.ironmaiden.com/studio-album/virtual-xi/) album sleeve. In \code{ggplot2} use [scale_color_virtual] and [scale_fill_virtual].
#'
#' @section References:
#'
#' * Field, A. P. (2023). *Discovering statistics using R and RStudio* (2nd ed.). London: Sage.
#'
#' @import learnr
#' @name discovr
#'
#'
#'
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end
NULL

#' discovr: Resources for Discovering Statistics Using R and RStudio (Field, 2021)
#'
#' @description
#'
#' The `discovr`` package contains resources for my 2021 textbook [Discovering Statistics Using R and RStudio](https://www.discovr.rocks/).
#' There are tutorials written using learnr, datasets, solutions to tasks and so on.
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
#' I recommend working through [this tutorial](http://milton-the-cat.rocks/learnr/r/r_getting_started/) on how to install, set up and work within R and RStudio before starting the interactive tutorials.
#'
#' **Running a tutorial**:
#'
#' To run each tutorial execute
#'
#' ```
#' learnr::run_tutorial("name_of_tutorial", package = "discovr")
#' ```
#'
#' Replacing `name_of_tutorial` with the name in bold below. For example, to load the tutorial `discovr_02` execute:
#'
#' ```
#' learnr::run_tutorial("discovr_02", package = "discovr")
#' ```
#'
#' * **discovr_01**: Key concepts in R (functions and objects, packages and functions, style, data types, tidyverse, tibbles)
#' * **discovr_02**: Summarizing data (frequency distributions, grouped frequency distributions, relative frequencies, histograms, mean, median, variance, standard deviation, interquartile range)
#' * **discovr_03**: Confidence intervals: interactive app demonstrating what a confidence interval is, computing normal and bootstrap confidence intervals using R, adding confidence intervals to data summaries
#' * **discovr_05**: Visualizing data. The ggplot2 package, boxplots, plotting means, violin plots, scatterplots, grouping by colour, grouping using facets, adjusting scales, adjusting positions.
#' * **discovr_06**: The beast of bias. Restructuring data from messy to tidy format (and back). Spotting outliers using histograms and boxplots. Calculating z-scores (standardizing scores). Writing your own function. Using z-scores to detect outliers. Q-Q plots. Calculating skewness, kurtosis and the number of valid cases. Grouping summary statistics by multiple categorical/grouping variables.
#' * **discovr_07**: Associations. Plotting data with GGally. Pearson's r, Spearman's Rho, Kendall's tau, robust correlations.
#' * **discovr_08**: The general linear model (GLM). Visualizing the data, fitting GLMs with one and two predictors. Viewing model parameters with broom, model parameters, standard errors, confidence intervals, fit statistics, significance.
#' * **discovr_09**: Categorical predictors with two categories (comparing two means). Comparing two independent means, comparing two related means, effect sizes.
#' * **discovr_10**: Moderation and mediation. Centring variables (grand mean centring), specifying interaction terms, moderation analysis, simple slopes analysis, Johnson-Neyman intervals, mediation with one predictor, direct and indirect effects, mediation using lavaan.
#' * **discovr_11**: Comparing several means. Essentially 'One-way independent ANOVA' but taught using a general linear model framework. Covers setting contrasts (dummy coding, contrast coding, and linear and quadratic trends), the *F*-statistic and Welch's robust *F*, robust parameter estimation, heteroscedasticity-consistent tests of parameters, robust tests of means based on trimmed data, *post hoc* tests, Bayes factors.
#'
#' **Workflow**:
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
#' * [animal_bride]: Fictitious data about life satisfaction when married to a dog or a goat.
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
#' * [daniels_2012]: Data about the effects of sexualised sports images on self-image.
#' * [dark_lord]: Fictitious data about the subliminal messages in songs.
#' * [download]: Fictitious data about the download music festival and being smelly.
#' * [df_beta]: Fictitious data used to illustrate the DF Beta statistic.
#' * [elephooty]: Fictitious data about elephants playing football (soccer).
#' * [essay_marks]: Fictitious data about essay marking.
#' * [exam_anxiety]: Fictitious data about exam performance, anxiety and revision.
#' * [gallup_2003]: Data that tests a hypothesis about why penises have a bell end.
#' * [gelman_2009]: Data used to critically evaluate the explanations (and claim) that there are more beautiful women than men in the world.
#' * [glastonbury]: More fictitious data about music festivals and being smelly.
#' * [grades]: Fictitious data about statistics grades.
#' * [ice_bucket]: Data about the ice bucket challenge.
#' * [invisibility_base]: Fictitious data about how much mischief people would get up to if they had an invisibility cloak using a pre-post study design.
#' * [invisibility_cloak]: Fictitious data about how much mischief people would get up to if they had an invisibility cloak using an independent design.
#' * [invisibility_rm]: Fictitious data about how much mischief people would get up to if they had an invisibility cloak but using a repeated measures design.
#' * [hangover]: fictitious data about the efficacy of different drinks as cures for a hangover.
#' * [hiccups]: Fictitious data on digital rectal stimulation and hiccups.
#' * [honesty_lab]: Fictitious data about perceptions of honesty.
#' * [jiminy_cricket]: Fictitious data about whether wishing on a star makes you successful.
#' * [johns_2012]: Data about whether the colour red is a mating signal to men.
#' * [lambert_2012]: Data about whether pornography use is related to relationship commitment and infidelity.
#' * [massar_2012]: Data about whether gossiping has an evolutionary function.
#' * [mcnulty_2008]: Simulated data to match the results of a study about whether attractiveness is linked to the support given within a relationship.
#' * [men_dogs]: Fictitious data about whether men exhibit dog-like behaviours (compared to dogs).
#' * [metal_health]: Fictitious data about whether listening to heavy metal negatively affects mental health.
#' * [metallica]: Data about thrash metal band Metallica.
#' * [murder]: Fictitious data about the number of murder each month at three street locations (Ruskin Avenue, Acacia Avenue and Rue Morgue).
#' * [muris_2008]: Data about whether you can train children to interpret ambiguous situations in a particular way.
#' * [notebook]: Fictitious data about whether watching the film the notebook is emotionally arousing.
#' * [ong_2011]: Data about social media profile pictures and personality traits.
#' * [ong_tidy]: Data about social media profile pictures and personality traits.
#' * [pubs]: Data illustrating the difference between an outlier and an influential case.
#' * [puppies]: Fictitious data related to whether puppy therapy works.
#' * [puppy_love]: Fictitious data related to whether puppy therapy works when you adjust for a person's love of puppies.
#' * [r_exam]: Fictitious data relating to an R exam at two universities.
#' * [roaming_cats]: Fictitious data about how far cats roam from their homes.
#' * [self_help]: Fictitious data about whether self-help books improve relationship satisfaction.
#' * [self_help_dsur]: Fictitious data about whether self-help books improve relationship satisfaction compared to statistics books.
#' * [shopping]: Fictitious data about shopping.
#' * [social_anxiety]: Fictitious (I think) data about whether social anxiety symptoms are specific to social anxiety.
#' * [social_media]: Fictitious data about the effects of social media on grammar.
#' * [soya]: fictitious data about the effects of eating soya on sperm count.
#' * [stalker]: fictitious data about therapy for stalking.
#' * [students]: I can't even remember what this data file contains.
#' * [superhero]: fictitious data about whether wearing different superhero costumes leads to more severe physical injuries.
#' * [supermodel]: Fictitious data about supermodel salaries.
#' * [tablets]: Fictitious data about predicting the desirability of computing tablets.
#' * [tea_15]: Fictitious data based on real data about cognitive functioning and drinking tea.
#' * [tea_716]: Fictitious data based on real data about cognitive functioning and drinking tea.
#' * [teaching]: Fictitious data about the success of different methods of teaching.
#' * [teach_method]: More fictitious data about the success of different methods of teaching.
#' * [tumour]: fictitious data about mobile phone use and brain tumours.
#' * [video_games]: Fictitious data about the relationship between video game use, callous unemotional traits and aggression.
#' * [tuk_2011]: Data about whether needing to urinate helps decision making.
#' * [zhang_sample]: Data about whether performing a maths test under a different name assists performance.
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
#'
#' @section References:
#'
#' * Field, A. P. (2021). *Discovering statistics using R and RStudio* (2nd ed.). London: Sage.
#'
#' @import learnr
#' @docType package
#' @name discovr
#'
#'
#'
NULL
#' discovr: Resources for Discovering Statistics Using R and RStudio (Field, 2021)
#'
#' @description
#'
#' The `discovr`` package contains resources for my 2021 textbook [Discovering Statistics Using R and RStudio](https://www.discoveringstatistics.com/books/discovering-statistics-using-r/).
#' There are tutorials written using learnr, datasets, solutions to tasks and so on.
#'
#' @section Who is the package aimed at?:
#'
#' Anyone teaching from or reading [Discovering Statistics Using R and RStudio](https://www.discoveringstatistics.com/books/discovering-statistics-using-r/) should find these resources useful.
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
#' * [acdc]: Data about whether Bon Scott or Brian Johnson is the best singer of AC/DC. (Also in the file *acdc.csv*.)
#' * [album_sales]: Fictitious data about predicting album sales from advertising, airplay and the band's image. (Also in the file *album_sales.csv*.)
#' * [animal_bride]: Fictitious data about life satisfaction when married to a dog or a goat. (Also in the file *animal_bride.csv*.)
#' * [beckham_1929]: Data from a study by Beckham (1929). (Also in the file *beckham_1929.csv*.)
#' * [big_hairy_spider]: Fictitious data about whether anxiety is greater after exposure to real spiders or pictures of spiders. (Also in the file *big_hairy_spider.csv*.)
#' * [biggest_liar]: Fictitious data about creativity and telling lies. (Also in the file *biggest_liar.csv*.)
#' * [bronstein_2019]: Data about whether delusion proneness predicts belief in fake news because of less analytic thinking. (Also in the file *bronstein_2019.csv*.)
#' * [bronstein_miss_2019]: The data in [bronstein_2019] but with missing values inserted using MCAR amputation. (Also in the file *bronstein_miss_2019.csv*.)
#' * [catterplot]: Fictitious data for plotting a catterplot. (Also in the file *catterplot.csv*.)
#' * [cat_dance]: Fictitious data about training cats to dance. (Also in the file *cat_dance.csv*.)
#' * [cat_reg]: Fictitious data about training cats to dance. (Also in the file *cat_reg.csv*.)
#' * [chamorro_premuzic]: Data about what students want (personality wise) from their lecturers. (Also in the file *chamorro_premuzic.csv*.)
#' * [child_aggression]: Fictitious data (based on real research) about predicting aggression in children. (Also in the file *child_aggression.csv*.)
#' * [coldwell_2006]: Data predicting childhood adjustment from various parenting variables. (Also in the file *coldwell_2006.csv*.)
#' * [daniels_2012]: Data about the effects of sexualised sports images on self-image. (Also in the file *daniels_2012.csv*.)
#' * [dark_lord]: Fictitious data about the subliminal messages in songs. (Also in the file *dark_lord.csv*.)
#' * [download]: Fictitious data about the download music festival and being smelly. (Also in the file *download_festival.csv*.)
#' * [df_beta]: Fictitious data used to illustrate the DF Beta statistic. (Also in the file *df_beta.csv*.)
#' * [essay_marks]: Fictitious data about essay marking. (Also in the file *essay_marks.csv*.)
#' * [exam_anxiety]: Fictitious data about exam performance, anxiety and revision. (Also in the file *exam_anxiety.csv*.)
#' * [gelman_2009]: Data used to critically evaluate the explanations (and claim) that there are more beautiful women than men in the world. (Also in the file *gelman_2009.csv*.)
#' * [glastonbury]: More fictitious data about music festivals and being smelly. (Also in the file *glastonbury.csv*.)
#' * [grades]: Fictitious data about statistics grades. (Also in the file *grades.csv*.)
#' * [ice_bucket]: Data about the ice bucket challenge. (Also in the file *ice_bucket.csv*.)
#' * [invisibility_cloak]: Fictitious data about how much mischief peopel would get up to if they had an invisibility cloak. (Also in the file *invisibility.csv*.)
#' * [invisibility_rm]: Fictitious data about how much mischief peopel would get up to if they had an invisibility cloak but using a repeated measures design. (Also in the file *invisibility_rm.csv*.)
#' * [hiccups]: Fictitious data on digital rectal stimulation and hiccups. (Also in the file *hiccups.csv*.)
#' * [honesty_lab]: Fictitious data about perceptions of honesty. (Also in the file *honesty_lab.csv*.)
#' * [jiminy_cricket]: Fictitious data about whether wishing on a star makes you successful. (Also in the file *jiminy_cricket.csv*.)
#' * [johns_2012]: Data about whether the colour red is a mating signal to men. (Also in the file *johns_2012.csv*.)
#' * [lambert_2012]: Data about whether pornography use is related to relationhsip commitment and infidelity. (Also in the file *lambert_2012.csv*.)
#' * [massar_2012]: Data about whether gossiping has an evolutionary function. (Also in the file *massar_2012.csv*.)
#' * [mcnulty_2008]: Simulated data to match the results of a study about whether attractivenes sis linked to the support given within a relationship. (Also in the file *mcnulty_2008.csv*.)
#' * [men_dogs]: Fictitious data about whether men exhibit dog-like behaviours (compared to dogs). (Also in the file *men_dog.csv*.)
#' * [metal_health]: Fictitious data about whether listening to heavy metal negatively affects mental health. (Also in the file *metal_health.csv*.)
#' * [metallica]: Data about thrash metal nband, Metallica. (Also in the file *metallica.csv*.)
#' * [notebook]: Fictitious data about whether watching the film the notebook is emotionally arousing. (Also in the file *notebook.csv*.)
#' * [ong_2011]: Data about social media profile pictures and personality traits. (Also in the file *ong_2011.csv*.)
#' * [ong_tidy]: Data about social media profile pictures and personality traits. (Also in the file *ong_tidy.csv*.)
#' * [pubs]: Data illustrating the difference between an outlier and an influential case. (Also in the file *pubs.csv*.)
#' * [puppies]: Fictitious data related to whether puppy therapy works. (Also in the file *puppies.csv*.)
#' * [r_exam]: Fictitious data relating to an R exam at two universities. (Also in the file *r_exam.csv*.)
#' * [roaming_cats]: Fictitious data about how far cats roam from their homes (Also in the file *roaming_cats.csv*.)
#' * [self_help]: Fictitious data about whether self-help books improve relationship satisfaction. (Also in the file *self_help.csv*.)
#' * [self_help_dsur]: Fictitious data about whether self-help books improve relationship satisfaction compared to statistics books. (Also in the file *self_help_dsur.csv*.)
#' * [social_anxiety]: Fictitious (I think) data about whether social anxiety symptoms are specific to social anxiety. (Also in the file *social_anxiety.csv*.)
#' * [social_media]: Fictitious data about the effects of social media on grammar. (Also in the file *social_media.csv*.)
#' * [shopping]: Fictitious data about shopping (Also in the file *shopping_exercise.csv*.)
#' * [students]: I can't even remember what this data file contains. (Also in the file *student.csv*.)
#' * [supermodel]: Fictitious data about supermodel salaries. (Also in the file *supermodel.csv*.)
#' * [tablets]: Fictitious data about predicting the desirability of computing tablets. (Also in the file *tablets.csv*.)
#' * [tea_15]: Fictitious data based on real data about cognitive functioning and drinking tea. (Also in the file *tea_makes_you_brainy_15.csv*.)
#' * [tea_716]: Fictitious data based on real data about cognitive functioning and drinking tea. (Also in the file *tea_makes_you_brainy_716.csv*.)
#' * [teaching]: Fictitious data about the success of different methods of treaching. (Also in the file *method_of_teaching.csv*.)
#' * [video_games]: Fictitious data about the relationship between video game use, callous unemotional traits and aggression. (Also in the file *video_games.csv*.)
#' * [tuk_2011]: Data about whether needing to urinate helps decision making. (Also in the file *tuk_2011.csv*.)
#' * [zhang_sample]: Data about whether performing a maths test under a different name assists performance. (Also in the file *zhang_2013_subsample.csv*.)
#'
#' @section Smart Alex solutions:
#'
#'Solutions for end of chapter tasks are available at [www.discovr.rocks](https://www.discovr.rocks/solutions/alex/).
#'
#' @section Labcoat Leni solutions:
#'
#'Solutions for the Labcoat Leni tasks are available at [www.discovr.rocks](https://www.discovr.rocks/solutions/leni/).
#'
#' @section Chapter code:
#'
#'Although I recommend working through the interactive solutions, each book Chapter has online code and a downloadable R Markdown file available from [www.discovr.rocks](https://www.discovr.rocks/solutions/code/).
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
# discovr (development version)

## General

* Added dataset about exercise and emotional well-being (`exercise`)
* Fixed typos in documentation.

## Changes to tutorials

### General changes

* More reliance on `easystats` and an emphasis on a consistent workflow for all statistical models. I've incorporated a general 5-step process to model fitting throughout. This process is introduced in `discovr_08` and referred to in subsequent tutorials.
* Use of `datawizard::describe_distribution()` in place of lengthy bespoke summary tables using `dplyr::summarize()`.
* The functions `performance::model_performance()`, `performance::test_lrt()` and `parameters::model_parameters()` replace `broom::glance()`, `anova()` and `broom::tidy()` respectively.
* Use `display()` rather than `kable()` to control rendered tables.
* Reduced length of most tutorials (by, typically around 10-25%).
* Material on Bayesian methods has been moved from individual tutorials into a self contained tutorial called `discovr_bayes`
* Re-styled tutorials to match the book


### Specific changes

* `discovr_01` now covers orientation to R and Quarto and links to various videos.
* The former `discovr_01` has been split across two tutorials. `discovr_02` covers basic code fundamentals and data types whereas `discovr_03` contains the material about tibbles and `dplyr` functions.
* `discovr_04` (which didn't previously exist) covers summarizing data and confidence intervals (formerly in `discovr_03`). It basically combines material from the old `discovr_02` and `discovr_03` but in more condensed form. Uses `display()` instead of `kable()`.
* `discovr_12` has changed fairly substantially. I removed a lot of the optional material on showing the difference between Type I and Type III sums of squares because my students find it confusing! Also, approach the topic very differently by talking in terms of when we do/do not expect an interaction between categorical and continuous predictors. As such, things like testing homogeneity of regressions slops is done *before* the model is fitted not as the final step.
* `discovr_13` has been split across two tutorials, one sticks with the model fitting approach of other tutorials (`discovr_13`), whereas the other focusses on an ANOVA style approach using the `afex` package (`discovr_13_afex`)
* `discovr_14` uses the `glmmTMB` package rather than `lme4` (although all code will work with `lme4`)
* `discovr_18` (Exploratory factor analysis) is now `discovr_17`
* `discovr_19` (Categorical variables) is now `discovr_18`
* `discovr_20` (Categorical outcome/logistic regression) is now `discovr_19`

## Changes to datasets

* Change variable name `personality` to `charisma` in `speed_date` data to match SPSS book.
* Add variable `cat_id` to `cat_dance` and randomise rows
* Change variable names (`ln_expected` and `ln_observed`) in `cat_reg` to match SPSS book.
* `penalty` data replaced with `penalty_shootout` to match SPSS book.

# discovr 0.2.1

* Initial CRAN submission.

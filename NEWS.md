# discovr (development version)

## General

* Added dataset about exercise and emotional well-being (`exercise`)
* Fixed typos in documentation.

## Changes to tutorials

### General changes

* More reliance on `easystats` and an emphasis on a consistent workflow for all statistical models.
* Use of `datawizard::describe_distribution()` in place of lengthy bespoke summary tables using `dplyr::summarize()`.
* The functions `performance::model_performance()`, `performance::test_lrt()` and `parameters::model_parameters()` replace `broom::glance()`, `anova()` and `broom::tidy()` respectively.
* Use `display()` rather than `kable()` to control rendered tables.
* Reduced length of most tutorials (by, typically around 20%).

### Specific changes

* `discovr_01` now covers orientation to R and Quarto and links to various videos.
* The former `discovr_01` has been split across two tutorials. `discovr_02` covers basic code fundamentals and data types whereas `discovr_03` contains the material about tibbles and `dplyr` functions.
* `discovr_04` (which didn't previously exist) covers summarizing data and confidence intervals (formerly in `discovr_03`). It basically combines material from the old `discovr_02` and `discovr_03` but in more condensed form. Uses `display()` instead of `kable()`.

## Changes to datasets

* Change variable name `personality` to `charisma` in `speed_date` data to match SPSS book.
* Add variable `cat_id` to `cat_dance` and randomise rows
* Change variable names (`ln_expected` and `ln_observed`) in `car_reg` to match SPSS book.
* `penalty` data replaced with `penalty_shootout` to match SPSS book.

# discovr 0.2.1

* Initial CRAN submission.

# discovr: Resources for Discovering Statistics Using R and RStudio (Field, 2020)

The `discovr` package contains resources for my 2020 textbook [Discovering Statistics Using R and RStudio](https://www.discoveringstatistics.com/books/discovering-statistics-using-r/). There are tutorials written using [learnr](https://rstudio.github.io/learnr/). Once a tutorial is running it's a bit like reading a book but with places where you can practice the R code that you have just been taught. The `discovr` package is free and offered to support tutors and students using my textbook who want to learn R.
 
## Contents of `discovr`
### Interactive tutorials

I recommend working through [this tutorial](http://milton-the-cat.rocks/learnr/r/r_getting_started/) on how to install, set up and work within R and RStudio before starting the interactive tutorials.

* **discovr_01**: Key concepts in R (functions and objects, packages and functions, style, data types, tidyverse, tibbles)
* **discovr_02**: Summarizing data (frequency distributions, grouped frequency distributions, relative frequencies, histograms, mean, median, variance, standard deviation, interquartile range)
* **discovr_05**: Visualizing data. The ggplot2 package, boxplots, plotting means, violin plots, scatterplots, grouping by colour, grouping using facets, adjusting scales, adjusting positions."
* **discovr_06**:
* **discovr_07**: Associations. Plotting data with GGally. Pearson's r, Spearman's Rho, Kendall's tau, robust correlations.
* **discovr_08**: The general linear model (GLM). Visualizing the data, fitting GLMs with one and two predictors. Viewing model parameters with broom, model parameters, standard errors, confidence intervals, fit statistics, significance.
* **discovr_09**: Categorical predictors with two cartegories (comparing two means). Comparing two independent means, comparing two related means, effect sizes.
* **discovr_10**: 


### Datasets

See the book or data descriptions for more details. This is a list of available datasets within the package. Raw CSV files are available from the book's website.

* **acdc**: Data from the file *acdc.csv*. For more information execute `?acdc`
* **animal_bride**: Data from the file *animal_bride.csv*. For more information execute `?animal_bride`
* **exam_anxiety**: Data from the file *exam_anxiety.csv*. For more information execute `?exam_anxiety`
* **ice_bucket**: Data from the file *ice_bucket.csv*. For more information execute `?ice_bucket`
* **invisibility_cloak**: Data from the file *invisibility.csv*. For more information execute `?invisibility_cloak`
* **invisibility_rm**: Data from the file *invisibility_rm.csv*. For more information execute `?invisibility_rm`
* **jiminy_cricket**: Data from the file *jiminy_cricket.csv*. For more information execute `?jiminy_cricket`
* **johns_2012**: Data from the file *johns_2012.csv*. For more information execute `?johns_2012`
* **metallica**: Data from the file *metallica.csv*. For more information execute `?metallica`
* **notebook**: Data from the file *notebook.csv*. For more information execute `?notebook`
* **ong_2011**: Data from the file *ong_2011.csv*. For more information execute `?ong_2011`
* **ong_tidy**: Data from the file *ong_tidy.csv*. For more information execute `?ong_tidy`
* **shopping**: Data from the file *shopping_exercise.csv*. For more information execute `?shopping`
* **tea15**: Data from the file *tea_makes_you_brainy_15.csv*. For more information execute `?tea15`
* **teaching**: Data from the file *method_of_teaching.csv*. For more information execute `?teaching`
* **zhang_sample**: Data from the file *zhang_2013_subsample.csv*. For more information execute `?zhang_sample`


## Using `discovr`

### Installing `discovr`

To use `discovr` you first need to install **R** and **RStudio** and familiarise yourself with R, RStudio and good workflow practice. You can do this using [this interactive tutorial](http://milton-the-cat.rocks/learnr/r/r_getting_started/). Once you have installed **R** and **RStudio** you can install `discovr`. The package is in development so you have to install it from github. To install the package execute (in **RStudio**):

```{r, eval = FALSE}
install.packages("remotes") #if you don’t already have it installed
library(remotes)
install_github("profandyfield/discovr")
```

If you are trying to install on a networked computer the install might fail (it's to do install.packages not liking UNC paths, which I'm not even going to pretend to understand). The solution is to specify the location of your R library at the point of install. Most networks will map network locations to a drive name (for example, at my own University, users accounts are on the 'N' drive). Find the location of your R library (e.g., `N:/Documents/R/win-library/3.5`), possibly executing `.libPaths()` to help you, and specify this location using the `lib` argument:

```
library(remotes) 
remotes::install_github("profandyfield/discovr", lib = "N:/Documents/R/win-library/3.5")
```
### Running a tutorial

To run a particular tutorial execute:

```{r, eval = FALSE}
library(discovr)
learnr::run_tutorial("name_of_tutorial", package = "discovr")
```

and replace "name of tutorial" with the name of the tutorial you want to run. For example, to run tutorial 2 execute:

```{r, eval = FALSE}
learnr::run_tutorial("discovr_02", package = "discovr")
```

The name of each tutorial is in bold in the list above. Once the command to run the tutorial is executed it will spring to life in a web browser.

### Suggested workflow

The tutorials are self-contained (you practice code in code boxes) so you don't need to use RStudio at the same time. However, to get the most from them I would recommend that you open two RStudio sessions (i.e. two RStudio windows running simultaneously). Use one RStudio session to run the tutorial. You won't then be able to use this RStudio window (because its resources are allocated to the tutorial). In the second RStudio session try replicating what you learn in the tutorial. That is, open a new script file and everything you do in the tutorial, practice in the script file (and save it). This workflow has the advantage of not just teaching you the code that you need to do certain things, but also provides practice in using RStudio itself.

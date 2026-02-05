pkgname <- "performance"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('performance')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("binned_residuals")
### * binned_residuals

flush(stderr()); flush(stdout())

### Name: binned_residuals
### Title: Binned residuals for binomial logistic regression
### Aliases: binned_residuals

### ** Examples

model <- glm(vs ~ wt + mpg, data = mtcars, family = "binomial")
result <- binned_residuals(model)
result

# look at the data frame
as.data.frame(result)

## Don't show: 
if (insight::check_if_installed("see", minimum_version = "0.9.1", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_autocorrelation")
### * check_autocorrelation

flush(stderr()); flush(stdout())

### Name: check_autocorrelation
### Title: Check model for independence of residuals.
### Aliases: check_autocorrelation check_autocorrelation.default
###   check_autocorrelation.performance_simres

### ** Examples

m <- lm(mpg ~ wt + cyl + gear + disp, data = mtcars)
check_autocorrelation(m)



cleanEx()
nameEx("check_clusterstructure")
### * check_clusterstructure

flush(stderr()); flush(stdout())

### Name: check_clusterstructure
### Title: Check suitability of data for clustering
### Aliases: check_clusterstructure

### ** Examples




cleanEx()
nameEx("check_collinearity")
### * check_collinearity

flush(stderr()); flush(stdout())

### Name: check_collinearity
### Title: Check for multicollinearity of model terms
### Aliases: check_collinearity multicollinearity
###   check_collinearity.default check_collinearity.glmmTMB
###   check_concurvity

### ** Examples

m <- lm(mpg ~ wt + cyl + gear + disp, data = mtcars)
check_collinearity(m)

## Don't show: 
if (insight::check_if_installed("see", minimum_version = "0.9.1", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
# plot results
x <- check_collinearity(m)
plot(x)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_convergence")
### * check_convergence

flush(stderr()); flush(stdout())

### Name: check_convergence
### Title: Convergence test for mixed effects models
### Aliases: check_convergence

### ** Examples

## Don't show: 
if (require("lme4") && require("glmmTMB")) withAutoprint({ # examplesIf
## End(Don't show)
data(cbpp, package = "lme4")
set.seed(1)
cbpp$x <- rnorm(nrow(cbpp))
cbpp$x2 <- runif(nrow(cbpp))

model <- lme4::glmer(
  cbind(incidence, size - incidence) ~ period + x + x2 + (1 + x | herd),
  data = cbpp,
  family = binomial()
)

check_convergence(model)

## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_dag")
### * check_dag

flush(stderr()); flush(stdout())

### Name: check_dag
### Title: Check correct model adjustment for identifying causal effects
### Aliases: check_dag as.dag

### ** Examples

## Don't show: 
if (all(insight::check_if_installed(c("ggdag", "dagitty", "see"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
# no adjustment needed
check_dag(
  y ~ x + b,
  outcome = "y",
  exposure = "x"
)

# incorrect adjustment
dag <- check_dag(
  y ~ x + b + c,
  x ~ b,
  outcome = "y",
  exposure = "x"
)
dag
plot(dag)

# After adjusting for `b`, the model is correctly specified
dag <- check_dag(
  y ~ x + b + c,
  x ~ b,
  outcome = "y",
  exposure = "x",
  adjusted = "b"
)
dag

# using formula interface for arguments "outcome", "exposure" and "adjusted"
check_dag(
  y ~ x + b + c,
  x ~ b,
  outcome = ~y,
  exposure = ~x,
  adjusted = ~ b + c
)

# if not provided, "outcome" is taken from first formula, same for "exposure"
# thus, we can simplify the above expression to
check_dag(
  y ~ x + b + c,
  x ~ b,
  adjusted = ~ b + c
)

# use specific layout for the DAG
dag <- check_dag(
  score ~ exp + b + c,
  exp ~ b,
  outcome = "score",
  exposure = "exp",
  coords = list(
    # x-coordinates for all nodes
    x = c(score = 5, exp = 4, b = 3, c = 3),
    # y-coordinates for all nodes
    y = c(score = 3, exp = 3, b = 2, c = 4)
  )
)
plot(dag)

# alternative way of providing the coordinates
dag <- check_dag(
  score ~ exp + b + c,
  exp ~ b,
  outcome = "score",
  exposure = "exp",
  coords = list(
    # x/y coordinates for each node
    score = c(5, 3),
    exp = c(4, 3),
    b = c(3, 2),
    c = c(3, 4)
  )
)
plot(dag)

# Objects returned by `check_dag()` can be used with "ggdag" or "dagitty"
ggdag::ggdag_status(dag)

# Using a model object to extract information about outcome,
# exposure and adjusted variables
data(mtcars)
m <- lm(mpg ~ wt + gear + disp + cyl, data = mtcars)
dag <- check_dag(
  m,
  wt ~ disp + cyl,
  wt ~ am
)
dag
plot(dag)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_distribution")
### * check_distribution

flush(stderr()); flush(stdout())

### Name: check_distribution
### Title: Classify the distribution of a model-family using machine
###   learning
### Aliases: check_distribution

### ** Examples

## Don't show: 
if (all(insight::check_if_installed(c("lme4", "parameters", "randomForest"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
data(sleepstudy, package = "lme4")
model <<- lme4::lmer(Reaction ~ Days + (Days | Subject), sleepstudy)
check_distribution(model)
## Don't show: 
}) # examplesIf
## End(Don't show)
## Don't show: 
if (all(insight::check_if_installed(c("see", "patchwork", "randomForest"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
plot(check_distribution(model))
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_factorstructure")
### * check_factorstructure

flush(stderr()); flush(stdout())

### Name: check_factorstructure
### Title: Check suitability of data for Factor Analysis (FA) with
###   Bartlett's Test of Sphericity and KMO
### Aliases: check_factorstructure check_kmo check_sphericity_bartlett

### ** Examples

library(performance)

check_factorstructure(mtcars)

# One can also pass a correlation matrix
r <- cor(mtcars)
check_factorstructure(r, n = nrow(mtcars))




cleanEx()
nameEx("check_group_variation")
### * check_group_variation

flush(stderr()); flush(stdout())

### Name: check_group_variation
### Title: Check variables for within- and/or between-group variation
### Aliases: check_group_variation check_group_variation.default
###   check_group_variation.data.frame summary.check_group_variation

### ** Examples

data(npk)
check_group_variation(npk, by = "block")

data(iris)
check_group_variation(iris, by = "Species")

data(ChickWeight)
check_group_variation(ChickWeight, by = "Chick")

# A subset of mlmRev::egsingle
egsingle <- data.frame(
  schoolid = factor(rep(c("2020", "2820"), times = c(18, 6))),
  lowinc = rep(c(TRUE, FALSE), times = c(18, 6)),
  childid = factor(rep(
    c("288643371", "292020281", "292020361", "295341521"),
    each = 6
  )),
  female = rep(c(TRUE, FALSE), each = 12),
  year = rep(1:6, times = 4),
  math = c(
    -3.068, -1.13, -0.921, 0.463, 0.021, 2.035,
    -2.732, -2.097, -0.988, 0.227, 0.403, 1.623,
    -2.732, -1.898, -0.921, 0.587, 1.578, 2.3,
    -2.288, -2.162, -1.631, -1.555, -0.725, 0.097
  )
)

result <- check_group_variation(
  egsingle,
  by = c("schoolid", "childid"),
  include_by = TRUE
)
result

summary(result)

## Don't show: 
if (insight::check_if_installed("lme4", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)

data(sleepstudy, package = "lme4")
check_group_variation(sleepstudy, select = "Days", by = "Subject")

# Or
mod <- lme4::lmer(Reaction ~ Days + (Days | Subject), data = sleepstudy)
result <- check_group_variation(mod)
result

summary(result)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_heterogeneity_bias")
### * check_heterogeneity_bias

flush(stderr()); flush(stdout())

### Name: check_heterogeneity_bias
### Title: Check model predictor for heterogeneity bias _(Deprecated)_
### Aliases: check_heterogeneity_bias

### ** Examples

data(iris)
iris$ID <- sample(1:4, nrow(iris), replace = TRUE) # fake-ID
check_heterogeneity_bias(iris, select = c("Sepal.Length", "Petal.Length"), by = "ID")



cleanEx()
nameEx("check_heteroscedasticity")
### * check_heteroscedasticity

flush(stderr()); flush(stdout())

### Name: check_heteroscedasticity
### Title: Check model for (non-)constant error variance
### Aliases: check_heteroscedasticity check_heteroskedasticity

### ** Examples

m <<- lm(mpg ~ wt + cyl + gear + disp, data = mtcars)
check_heteroscedasticity(m)

# plot results
## Don't show: 
if (insight::check_if_installed("see", minimum_version = "0.9.1", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
x <- check_heteroscedasticity(m)
plot(x)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_homogeneity")
### * check_homogeneity

flush(stderr()); flush(stdout())

### Name: check_homogeneity
### Title: Check model for homogeneity of variances
### Aliases: check_homogeneity check_homogeneity.afex_aov

### ** Examples

model <<- lm(len ~ supp + dose, data = ToothGrowth)
check_homogeneity(model)

# plot results
## Don't show: 
if (insight::check_if_installed("see", minimum_version = "0.9.1", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
result <- check_homogeneity(model)
plot(result)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_itemscale")
### * check_itemscale

flush(stderr()); flush(stdout())

### Name: check_itemscale
### Title: Describe Properties of Item Scales
### Aliases: check_itemscale

### ** Examples

## Don't show: 
if (require("parameters") && require("psych")) withAutoprint({ # examplesIf
## End(Don't show)
# data generation from '?prcomp', slightly modified
C <- chol(S <- toeplitz(0.9^(0:15)))
set.seed(17)
X <- matrix(rnorm(1600), 100, 16)
Z <- X %*% C

pca <- parameters::principal_components(
  as.data.frame(Z),
  rotation = "varimax",
  n = 3
)
pca
check_itemscale(pca)

# as data frame
check_itemscale(
  as.data.frame(Z),
  factor_index = parameters::closest_component(pca)
)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_model")
### * check_model

flush(stderr()); flush(stdout())

### Name: check_model
### Title: Visual check of model assumptions
### Aliases: check_model check_model.default

### ** Examples

## Don't show: 
if (require("lme4") && FALSE) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_multimodal")
### * check_multimodal

flush(stderr()); flush(stdout())

### Name: check_multimodal
### Title: Check if a distribution is unimodal or multimodal
### Aliases: check_multimodal

### ** Examples

## Don't show: 
if (require("multimode") && require("mclust")) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_normality")
### * check_normality

flush(stderr()); flush(stdout())

### Name: check_normality
### Title: Check model for (non-)normality of residuals.
### Aliases: check_normality check_normality.merMod

### ** Examples

## Don't show: 
if (insight::check_if_installed("see", minimum_version = "0.9.1", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
m <<- lm(mpg ~ wt + cyl + gear + disp, data = mtcars)
check_normality(m)

# plot results
x <- check_normality(m)
plot(x)

## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_outliers")
### * check_outliers

flush(stderr()); flush(stdout())

### Name: check_outliers
### Title: Outliers detection (check for influential observations)
### Aliases: check_outliers check_outliers.default check_outliers.numeric
###   check_outliers.data.frame check_outliers.performance_simres

### ** Examples

data <- mtcars # Size nrow(data) = 32

# For single variables ------------------------------------------------------
# Find all observations beyond +/- 2 SD
outliers_list <- check_outliers(data$mpg, method = "zscore", threshold = 2)
outliers_list # Show the row index of the outliers
as.numeric(outliers_list) # The object is a binary vector...
filtered_data <- data[!outliers_list, ] # And can be used to filter a data frame
nrow(filtered_data) # New size, 30 (2 outliers removed)


# For dataframes ------------------------------------------------------
check_outliers(data, threshold = 2) # It works the same way on data frames

# You can also use multiple methods at once
outliers_list <- check_outliers(data, method = c(
  "mahalanobis",
  "iqr",
  "zscore"
))
outliers_list

# Using `as.data.frame()`, we can access more details!
outliers_info <- as.data.frame(outliers_list)
head(outliers_info)
outliers_info$Outlier # Including the probability of being an outlier

# And we can be more stringent in our outliers removal process
filtered_data <- data[outliers_info$Outlier < 0.1, ]

# We can run the function stratified by groups using `{datawizard}` package:
group_iris <- datawizard::data_group(iris, "Species")
check_outliers(group_iris)
# nolint start
## Don't show: 
if (all(insight::check_if_installed(c("bigutilsr", "MASS", "ICSOutlier", "ICS", "dbscan", "loo", "see"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
# nolint end
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_overdispersion")
### * check_overdispersion

flush(stderr()); flush(stdout())

### Name: check_overdispersion
### Title: Check overdispersion (and underdispersion) of GL(M)M's
### Aliases: check_overdispersion check_overdispersion.performance_simres

### ** Examples

## Don't show: 
if (getRversion() >= "4.0.0" && require("glmmTMB")) withAutoprint({ # examplesIf
## End(Don't show)
data(Salamanders, package = "glmmTMB")
m <- glm(count ~ spp + mined, family = poisson, data = Salamanders)
check_overdispersion(m)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_predictions")
### * check_predictions

flush(stderr()); flush(stdout())

### Name: check_predictions
### Title: Posterior predictive checks
### Aliases: check_predictions check_predictions.default

### ** Examples

## Don't show: 
if (insight::check_if_installed("see", minimum_version = "0.9.1", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
# linear model
model <- lm(mpg ~ disp, data = mtcars)
check_predictions(model)

# discrete/integer outcome
set.seed(99)
d <- iris
d$skewed <- rpois(150, 1)
model <- glm(
  skewed ~ Species + Petal.Length + Petal.Width,
  family = poisson(),
  data = d
)
check_predictions(model, type = "discrete_both")
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_residuals")
### * check_residuals

flush(stderr()); flush(stdout())

### Name: check_residuals
### Title: Check distribution of simulated quantile residuals
### Aliases: check_residuals check_residuals.default

### ** Examples

## Don't show: 
if (require("DHARMa")) withAutoprint({ # examplesIf
## End(Don't show)
dat <- DHARMa::createData(sampleSize = 100, overdispersion = 0.5, family = poisson())
m <- glm(observedResponse ~ Environment1, family = poisson(), data = dat)
res <- simulate_residuals(m)
check_residuals(res)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_singularity")
### * check_singularity

flush(stderr()); flush(stdout())

### Name: check_singularity
### Title: Check mixed models for boundary fits
### Aliases: check_singularity check_singularity.glmmTMB

### ** Examples

## Don't show: 
if (require("lme4") && require("glmmTMB")) withAutoprint({ # examplesIf
## End(Don't show)
data(sleepstudy, package = "lme4")
set.seed(123)
sleepstudy$mygrp <- sample(1:5, size = 180, replace = TRUE)
sleepstudy$mysubgrp <- NA
for (i in 1:5) {
  filter_group <- sleepstudy$mygrp == i
  sleepstudy$mysubgrp[filter_group] <-
    sample(1:30, size = sum(filter_group), replace = TRUE)
}

model <- lme4::lmer(
  Reaction ~ Days + (1 | mygrp / mysubgrp) + (1 | Subject),
  data = sleepstudy
)
# any singular fits?
check_singularity(model)
# singular fit for which particular random effects terms?
check_singularity(model, check = "terms")

## Not run: 
##D # Fixing singularity issues using priors in glmmTMB
##D # Example taken from `vignette("priors", package = "glmmTMB")`
##D dat <- readRDS(system.file(
##D   "vignette_data",
##D   "gophertortoise.rds",
##D   package = "glmmTMB"
##D ))
##D model <- glmmTMB::glmmTMB(
##D   shells ~ prev + offset(log(Area)) + factor(year) + (1 | Site),
##D   family = poisson,
##D   data = dat
##D )
##D # singular fit
##D check_singularity(model)
##D 
##D # impose Gamma prior on random effects parameters
##D prior <- data.frame(
##D   prior = "gamma(1, 2.5)", # mean can be 1, but even 1e8
##D   class = "ranef" # for random effects
##D )
##D model_with_priors <- update(model, priors = prior)
##D # no singular fit
##D check_singularity(model_with_priors)
## End(Not run)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_sphericity")
### * check_sphericity

flush(stderr()); flush(stdout())

### Name: check_sphericity
### Title: Check model for violation of sphericity
### Aliases: check_sphericity

### ** Examples

## Don't show: 
if (require("car") && require("carData")) withAutoprint({ # examplesIf
## End(Don't show)
data(Soils, package = "carData")
soils.mod <- lm(
  cbind(pH, N, Dens, P, Ca, Mg, K, Na, Conduc) ~ Block + Contour * Depth,
  data = Soils
)

check_sphericity(Manova(soils.mod))
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("check_symmetry")
### * check_symmetry

flush(stderr()); flush(stdout())

### Name: check_symmetry
### Title: Check distribution symmetry
### Aliases: check_symmetry

### ** Examples

V <- suppressWarnings(wilcox.test(mtcars$mpg))
check_symmetry(V)




cleanEx()
nameEx("check_zeroinflation")
### * check_zeroinflation

flush(stderr()); flush(stdout())

### Name: check_zeroinflation
### Title: Check for zero-inflation in count models
### Aliases: check_zeroinflation check_zeroinflation.default
###   check_zeroinflation.performance_simres

### ** Examples

## Don't show: 
if (require("glmmTMB") && require("DHARMa")) withAutoprint({ # examplesIf
## End(Don't show)
data(Salamanders, package = "glmmTMB")
m <- glm(count ~ spp + mined, family = poisson, data = Salamanders)
check_zeroinflation(m)

# for models with zero-inflation component, it's better to carry out
# the check for zero-inflation using simulated residuals
m <- glmmTMB::glmmTMB(
  count ~ spp + mined,
  ziformula = ~ mined + spp,
  family = poisson,
  data = Salamanders
)
res <- simulate_residuals(m)
check_zeroinflation(res)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("compare_performance")
### * compare_performance

flush(stderr()); flush(stdout())

### Name: compare_performance
### Title: Compare performance of different models
### Aliases: compare_performance

### ** Examples

## Don't show: 
if (require("lme4")) withAutoprint({ # examplesIf
## End(Don't show)
data(iris)
lm1 <- lm(Sepal.Length ~ Species, data = iris)
lm2 <- lm(Sepal.Length ~ Species + Petal.Length, data = iris)
lm3 <- lm(Sepal.Length ~ Species * Petal.Length, data = iris)
compare_performance(lm1, lm2, lm3)
compare_performance(lm1, lm2, lm3, rank = TRUE)

m1 <- lm(mpg ~ wt + cyl, data = mtcars)
m2 <- glm(vs ~ wt + mpg, data = mtcars, family = "binomial")
m3 <- lme4::lmer(Petal.Length ~ Sepal.Length + (1 | Species), data = iris)
compare_performance(m1, m2, m3)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("cronbachs_alpha")
### * cronbachs_alpha

flush(stderr()); flush(stdout())

### Name: cronbachs_alpha
### Title: Cronbach's Alpha for Items or Scales
### Aliases: cronbachs_alpha item_alpha cronbachs_alpha.data.frame

### ** Examples

data(mtcars)
x <- mtcars[, c("cyl", "gear", "carb", "hp")]
cronbachs_alpha(x)



cleanEx()
nameEx("display.performance_model")
### * display.performance_model

flush(stderr()); flush(stdout())

### Name: display.performance_model
### Title: Print tables in different output formats
### Aliases: display.performance_model print.performance_model
###   print_md.performance_model print_md.compare_performance

### ** Examples

model <- lm(mpg ~ wt + cyl, data = mtcars)
mp <- model_performance(model)
display(mp)
display(mp, digits = 3, ic_digits = 4)



cleanEx()
nameEx("icc")
### * icc

flush(stderr()); flush(stdout())

### Name: icc
### Title: Intraclass Correlation Coefficient (ICC)
### Aliases: icc variance_decomposition

### ** Examples

## Don't show: 
if (require("lme4")) withAutoprint({ # examplesIf
## End(Don't show)
model <- lme4::lmer(Sepal.Length ~ Petal.Length + (1 | Species), data = iris)
icc(model)

# ICC for specific group-levels
data(sleepstudy, package = "lme4")
set.seed(12345)
sleepstudy$grp <- sample(1:5, size = 180, replace = TRUE)
sleepstudy$subgrp <- NA
for (i in 1:5) {
  filter_group <- sleepstudy$grp == i
  sleepstudy$subgrp[filter_group] <-
    sample(1:30, size = sum(filter_group), replace = TRUE)
}
model <- lme4::lmer(
  Reaction ~ Days + (1 | grp / subgrp) + (1 | Subject),
  data = sleepstudy
)
icc(model, by_group = TRUE)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("item_difficulty")
### * item_difficulty

flush(stderr()); flush(stdout())

### Name: item_difficulty
### Title: Difficulty of Questionnaire Items
### Aliases: item_difficulty

### ** Examples

data(mtcars)
x <- mtcars[, c("cyl", "gear", "carb", "hp")]
item_difficulty(x)



cleanEx()
nameEx("item_discrimination")
### * item_discrimination

flush(stderr()); flush(stdout())

### Name: item_discrimination
### Title: Discrimination and Item-Total Correlation of Questionnaire Items
### Aliases: item_discrimination item_totalcor

### ** Examples

data(mtcars)
x <- mtcars[, c("cyl", "gear", "carb", "hp")]
item_discrimination(x)
item_totalcor(x)



cleanEx()
nameEx("item_intercor")
### * item_intercor

flush(stderr()); flush(stdout())

### Name: item_intercor
### Title: Mean Inter-Item-Correlation
### Aliases: item_intercor

### ** Examples

data(mtcars)
x <- mtcars[, c("cyl", "gear", "carb", "hp")]
item_intercor(x)



cleanEx()
nameEx("item_omega")
### * item_omega

flush(stderr()); flush(stdout())

### Name: item_omega
### Title: McDonald's Omega for Items or Scales
### Aliases: item_omega item_omega.data.frame item_omega.matrix

### ** Examples

## Don't show: 
if (insight::check_if_installed("parameters", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
data(mtcars)
x <- mtcars[1:7]
result <- item_omega(x, n = 2)

result

as.numeric(result)

summary(result)

parameters::model_parameters(result)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("item_reliability")
### * item_reliability

flush(stderr()); flush(stdout())

### Name: item_reliability
### Title: Reliability Test for Items or Scales
### Aliases: item_reliability

### ** Examples

data(mtcars)
x <- mtcars[, c("cyl", "gear", "carb", "hp")]
item_reliability(x)



cleanEx()
nameEx("item_split_half")
### * item_split_half

flush(stderr()); flush(stdout())

### Name: item_split_half
### Title: Split-Half Reliability
### Aliases: item_split_half

### ** Examples

data(mtcars)
x <- mtcars[, c("cyl", "gear", "carb", "hp")]
item_split_half(x)



cleanEx()
nameEx("looic")
### * looic

flush(stderr()); flush(stdout())

### Name: looic
### Title: LOO-related Indices for Bayesian regressions.
### Aliases: looic

### ** Examples

## Don't show: 
if (require("rstanarm")) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_performance")
### * model_performance

flush(stderr()); flush(stdout())

### Name: model_performance
### Title: Model Performance
### Aliases: model_performance performance

### ** Examples

model <- lm(mpg ~ wt + cyl, data = mtcars)
model_performance(model)

model <- glm(vs ~ wt + mpg, data = mtcars, family = "binomial")
model_performance(model)



cleanEx()
nameEx("model_performance.fa")
### * model_performance.fa

flush(stderr()); flush(stdout())

### Name: model_performance.fa
### Title: Performance of FA / PCA models
### Aliases: model_performance.fa

### ** Examples

## Don't show: 
if (all(insight::check_if_installed(c("psych", "GPArotation", "psychTools"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
out <- psych::fa(psychTools::bfi[, 1:25], 5)
model_performance(out)

out <- item_omega(mtcars, n = 3)
model_performance(out)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_performance.kmeans")
### * model_performance.kmeans

flush(stderr()); flush(stdout())

### Name: model_performance.kmeans
### Title: Model summary for k-means clustering
### Aliases: model_performance.kmeans

### ** Examples

# a 2-dimensional example
x <- rbind(
  matrix(rnorm(100, sd = 0.3), ncol = 2),
  matrix(rnorm(100, mean = 1, sd = 0.3), ncol = 2)
)
colnames(x) <- c("x", "y")
model <- kmeans(x, 2)
model_performance(model)



cleanEx()
nameEx("model_performance.lavaan")
### * model_performance.lavaan

flush(stderr()); flush(stdout())

### Name: model_performance.lavaan
### Title: Performance of lavaan SEM / CFA Models
### Aliases: model_performance.lavaan

### ** Examples

## Don't show: 
if (require("lavaan")) withAutoprint({ # examplesIf
## End(Don't show)
# Confirmatory Factor Analysis (CFA) ---------
data(HolzingerSwineford1939, package = "lavaan")
structure <- " visual  =~ x1 + x2 + x3
               textual =~ x4 + x5 + x6
               speed   =~ x7 + x8 + x9 "
model <- lavaan::cfa(structure, data = HolzingerSwineford1939)
model_performance(model)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_performance.lm")
### * model_performance.lm

flush(stderr()); flush(stdout())

### Name: model_performance.lm
### Title: Performance of Regression Models
### Aliases: model_performance.lm

### ** Examples

model <- lm(mpg ~ wt + cyl, data = mtcars)
model_performance(model)

model <- glm(vs ~ wt + mpg, data = mtcars, family = "binomial")
model_performance(model)



cleanEx()
nameEx("model_performance.merMod")
### * model_performance.merMod

flush(stderr()); flush(stdout())

### Name: model_performance.merMod
### Title: Performance of Mixed Models
### Aliases: model_performance.merMod

### ** Examples

## Don't show: 
if (require("lme4")) withAutoprint({ # examplesIf
## End(Don't show)
model <- lme4::lmer(Petal.Length ~ Sepal.Length + (1 | Species), data = iris)
model_performance(model)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_performance.rma")
### * model_performance.rma

flush(stderr()); flush(stdout())

### Name: model_performance.rma
### Title: Performance of Meta-Analysis Models
### Aliases: model_performance.rma

### ** Examples

## Don't show: 
if (require("metafor") && require("metadat")) withAutoprint({ # examplesIf
## End(Don't show)
data(dat.bcg, package = "metadat")
dat <- metafor::escalc(
  measure = "RR",
  ai = tpos,
  bi = tneg,
  ci = cpos,
  di = cneg,
  data = dat.bcg
)
model <- metafor::rma(yi, vi, data = dat, method = "REML")
model_performance(model)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_performance.stanreg")
### * model_performance.stanreg

flush(stderr()); flush(stdout())

### Name: model_performance.stanreg
### Title: Performance of Bayesian Models
### Aliases: model_performance.stanreg model_performance.BFBayesFactor

### ** Examples

## Don't show: 
if (require("rstanarm") && require("rstantools")) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("performance_accuracy")
### * performance_accuracy

flush(stderr()); flush(stdout())

### Name: performance_accuracy
### Title: Accuracy of predictions from model fit
### Aliases: performance_accuracy

### ** Examples

model <- lm(mpg ~ wt + cyl, data = mtcars)
performance_accuracy(model)

model <- glm(vs ~ wt + mpg, data = mtcars, family = "binomial")
performance_accuracy(model)



cleanEx()
nameEx("performance_aicc")
### * performance_aicc

flush(stderr()); flush(stdout())

### Name: performance_aicc
### Title: Compute the AIC or second-order AIC
### Aliases: performance_aicc performance_aic performance_aic.default
###   performance_aic.lmerMod

### ** Examples

m <- lm(mpg ~ wt + cyl + gear + disp, data = mtcars)
AIC(m)
performance_aicc(m)

# correct AIC for models with transformed response variable
data("mtcars")
mtcars$mpg <- floor(mtcars$mpg)
model <- lm(log(mpg) ~ factor(cyl), mtcars)

# wrong AIC, not corrected for log-transformation
AIC(model)

# performance_aic() correctly detects transformed response and
# returns corrected AIC
performance_aic(model)

## Not run: 
##D # there are a few exceptions where the corrected log-likelihood values
##D # cannot be returned. The following exampe gives a warning.
##D model <- lm(1 / mpg ~ factor(cyl), mtcars)
##D performance_aic(model)
## End(Not run)



cleanEx()
nameEx("performance_cv")
### * performance_cv

flush(stderr()); flush(stdout())

### Name: performance_cv
### Title: Cross-validated model performance
### Aliases: performance_cv

### ** Examples

model <- lm(mpg ~ wt + cyl, data = mtcars)
performance_cv(model)




cleanEx()
nameEx("performance_hosmer")
### * performance_hosmer

flush(stderr()); flush(stdout())

### Name: performance_hosmer
### Title: Hosmer-Lemeshow goodness-of-fit test
### Aliases: performance_hosmer

### ** Examples

model <- glm(vs ~ wt + mpg, data = mtcars, family = "binomial")
performance_hosmer(model)



cleanEx()
nameEx("performance_logloss")
### * performance_logloss

flush(stderr()); flush(stdout())

### Name: performance_logloss
### Title: Log Loss
### Aliases: performance_logloss

### ** Examples

data(mtcars)
m <- glm(formula = vs ~ hp + wt, family = binomial, data = mtcars)
performance_logloss(m)



cleanEx()
nameEx("performance_mae")
### * performance_mae

flush(stderr()); flush(stdout())

### Name: performance_mae
### Title: Mean Absolute Error of Models
### Aliases: performance_mae mae

### ** Examples

data(mtcars)
m <- lm(mpg ~ hp + gear, data = mtcars)
performance_mae(m)



cleanEx()
nameEx("performance_mse")
### * performance_mse

flush(stderr()); flush(stdout())

### Name: performance_mse
### Title: Mean Square Error of Linear Models
### Aliases: performance_mse mse

### ** Examples

data(mtcars)
m <- lm(mpg ~ hp + gear, data = mtcars)
performance_mse(m)



cleanEx()
nameEx("performance_pcp")
### * performance_pcp

flush(stderr()); flush(stdout())

### Name: performance_pcp
### Title: Percentage of Correct Predictions
### Aliases: performance_pcp

### ** Examples

data(mtcars)
m <- glm(formula = vs ~ hp + wt, family = binomial, data = mtcars)
performance_pcp(m)
performance_pcp(m, method = "Gelman-Hill")



cleanEx()
nameEx("performance_reliability")
### * performance_reliability

flush(stderr()); flush(stdout())

### Name: performance_reliability
### Title: Random Effects Reliability
### Aliases: performance_reliability performance_dvour

### ** Examples

## Don't show: 
if (all(insight::check_if_installed(c("lme4", "glmmTMB"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
url <- "https://raw.githubusercontent.com/easystats/circus/refs/heads/main/data/illusiongame.csv"
df <- read.csv(url)

m <- lme4::lmer(RT ~ (1 | Participant), data = df)
performance_reliability(m)
performance_dvour(m)

m <- glmmTMB::glmmTMB(RT ~ (1 | Participant), data = df)
performance_reliability(m)
performance_dvour(m)

m <- lme4::lmer(RT ~ (1 | Participant) + (1 | Trial), data = df)
performance_reliability(m)
performance_dvour(m)

m <- glmmTMB::glmmTMB(RT ~ (1 | Participant) + (1 | Trial), data = df)
performance_reliability(m)
performance_dvour(m)

## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("performance_rmse")
### * performance_rmse

flush(stderr()); flush(stdout())

### Name: performance_rmse
### Title: Root Mean Squared Error
### Aliases: performance_rmse rmse

### ** Examples

## Don't show: 
if (require("nlme")) withAutoprint({ # examplesIf
## End(Don't show)
data(Orthodont, package = "nlme")
m <- nlme::lme(distance ~ age, data = Orthodont)

# RMSE
performance_rmse(m, normalized = FALSE)

# normalized RMSE
performance_rmse(m, normalized = TRUE)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("performance_roc")
### * performance_roc

flush(stderr()); flush(stdout())

### Name: performance_roc
### Title: Simple ROC curve
### Aliases: performance_roc

### ** Examples

library(bayestestR)
data(iris)

set.seed(123)
iris$y <- rbinom(nrow(iris), size = 1, .3)
folds <- sample(nrow(iris), size = nrow(iris) / 8, replace = FALSE)
test_data <- iris[folds, ]
train_data <- iris[-folds, ]

model <- glm(y ~ Sepal.Length + Sepal.Width, data = train_data, family = "binomial")
as.data.frame(performance_roc(model, new_data = test_data))
as.numeric(performance_roc(model))

roc <- performance_roc(model, new_data = test_data)
area_under_curve(roc$Specificity, roc$Sensitivity)

if (interactive()) {
  m1 <- glm(y ~ Sepal.Length + Sepal.Width, data = iris, family = "binomial")
  m2 <- glm(y ~ Sepal.Length + Petal.Width, data = iris, family = "binomial")
  m3 <- glm(y ~ Sepal.Length + Species, data = iris, family = "binomial")
  performance_roc(m1, m2, m3)

  # if you have `see` package installed, you can also plot comparison of
  # ROC curves for different models
  if (require("see")) plot(performance_roc(m1, m2, m3))
}



cleanEx()
nameEx("performance_rse")
### * performance_rse

flush(stderr()); flush(stdout())

### Name: performance_rse
### Title: Residual Standard Error for Linear Models
### Aliases: performance_rse

### ** Examples

data(mtcars)
m <- lm(mpg ~ hp + gear, data = mtcars)
performance_rse(m)



cleanEx()
nameEx("performance_score")
### * performance_score

flush(stderr()); flush(stdout())

### Name: performance_score
### Title: Proper Scoring Rules
### Aliases: performance_score

### ** Examples

## Don't show: 
if (require("glmmTMB")) withAutoprint({ # examplesIf
## End(Don't show)
## Dobson (1990) Page 93: Randomized Controlled Trial :
counts <- c(18, 17, 15, 20, 10, 20, 25, 13, 12)
outcome <- gl(3, 1, 9)
treatment <- gl(3, 3)
model <- glm(counts ~ outcome + treatment, family = poisson())

performance_score(model)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("r2")
### * r2

flush(stderr()); flush(stdout())

### Name: r2
### Title: Compute the model's R2
### Aliases: r2 r2.default r2.mlm r2.merMod

### ** Examples

## Don't show: 
if (require("lme4")) withAutoprint({ # examplesIf
## End(Don't show)
# Pseudo r-quared for GLM
model <- glm(vs ~ wt + mpg, data = mtcars, family = "binomial")
r2(model)

# r-squared including confidence intervals
model <- lm(mpg ~ wt + hp, data = mtcars)
r2(model, ci = 0.95)

model <- lme4::lmer(Sepal.Length ~ Petal.Length + (1 | Species), data = iris)
r2(model)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("r2_bayes")
### * r2_bayes

flush(stderr()); flush(stdout())

### Name: r2_bayes
### Title: Bayesian R2
### Aliases: r2_bayes r2_posterior r2_posterior.brmsfit
###   r2_posterior.stanreg r2_posterior.BFBayesFactor

### ** Examples

## Don't show: 
if (require("rstanarm") && require("rstantools") && require("brms") && require("RcppEigen")) withAutoprint({ # examplesIf
## End(Don't show)
library(performance)

## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("r2_coxsnell")
### * r2_coxsnell

flush(stderr()); flush(stdout())

### Name: r2_coxsnell
### Title: Cox & Snell's R2
### Aliases: r2_coxsnell

### ** Examples

model <- glm(vs ~ wt + mpg, data = mtcars, family = "binomial")
r2_coxsnell(model)




cleanEx()
nameEx("r2_efron")
### * r2_efron

flush(stderr()); flush(stdout())

### Name: r2_efron
### Title: Efron's R2
### Aliases: r2_efron

### ** Examples

## Dobson (1990) Page 93: Randomized Controlled Trial:
counts <- c(18, 17, 15, 20, 10, 20, 25, 13, 12) #
outcome <- gl(3, 1, 9)
treatment <- gl(3, 3)
model <- glm(counts ~ outcome + treatment, family = poisson())

r2_efron(model)



cleanEx()
nameEx("r2_ferrari")
### * r2_ferrari

flush(stderr()); flush(stdout())

### Name: r2_ferrari
### Title: Ferrari's and Cribari-Neto's R2
### Aliases: r2_ferrari r2_ferrari.default

### ** Examples

## Don't show: 
if (require("betareg")) withAutoprint({ # examplesIf
## End(Don't show)
data("GasolineYield", package = "betareg")
model <- betareg::betareg(yield ~ batch + temp, data = GasolineYield)
r2_ferrari(model)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("r2_kullback")
### * r2_kullback

flush(stderr()); flush(stdout())

### Name: r2_kullback
### Title: Kullback-Leibler R2
### Aliases: r2_kullback r2_kullback.glm

### ** Examples

model <- glm(vs ~ wt + mpg, data = mtcars, family = "binomial")
r2_kullback(model)



cleanEx()
nameEx("r2_loo")
### * r2_loo

flush(stderr()); flush(stdout())

### Name: r2_loo
### Title: LOO-adjusted R2
### Aliases: r2_loo r2_loo_posterior r2_loo_posterior.brmsfit
###   r2_loo_posterior.stanreg

### ** Examples

## Don't show: 
if (require("rstanarm") && require("rstantools")) withAutoprint({ # examplesIf
## End(Don't show)
model <- suppressWarnings(rstanarm::stan_glm(
  mpg ~ wt + cyl,
  data = mtcars,
  chains = 1,
  iter = 500,
  refresh = 0,
  show_messages = FALSE
))
r2_loo(model)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("r2_mcfadden")
### * r2_mcfadden

flush(stderr()); flush(stdout())

### Name: r2_mcfadden
### Title: McFadden's R2
### Aliases: r2_mcfadden

### ** Examples

if (require("mlogit")) {
  data("Fishing", package = "mlogit")
  Fish <- mlogit.data(Fishing, varying = c(2:9), shape = "wide", choice = "mode")

  model <- mlogit(mode ~ price + catch, data = Fish)
  r2_mcfadden(model)
}



cleanEx()
nameEx("r2_mckelvey")
### * r2_mckelvey

flush(stderr()); flush(stdout())

### Name: r2_mckelvey
### Title: McKelvey & Zavoinas R2
### Aliases: r2_mckelvey

### ** Examples

## Dobson (1990) Page 93: Randomized Controlled Trial:
counts <- c(18, 17, 15, 20, 10, 20, 25, 13, 12) #
outcome <- gl(3, 1, 9)
treatment <- gl(3, 3)
model <- glm(counts ~ outcome + treatment, family = poisson())

r2_mckelvey(model)



cleanEx()
nameEx("r2_mlm")
### * r2_mlm

flush(stderr()); flush(stdout())

### Name: r2_mlm
### Title: Multivariate R2
### Aliases: r2_mlm

### ** Examples

model <- lm(cbind(qsec, drat) ~ wt + mpg + cyl, data = mtcars)
r2_mlm(model)

model_swap <- lm(cbind(wt, mpg, cyl) ~ qsec + drat, data = mtcars)
r2_mlm(model_swap)




cleanEx()
nameEx("r2_nagelkerke")
### * r2_nagelkerke

flush(stderr()); flush(stdout())

### Name: r2_nagelkerke
### Title: Nagelkerke's R2
### Aliases: r2_nagelkerke

### ** Examples

model <- glm(vs ~ wt + mpg, data = mtcars, family = "binomial")
r2_nagelkerke(model)



cleanEx()
nameEx("r2_nakagawa")
### * r2_nakagawa

flush(stderr()); flush(stdout())

### Name: r2_nakagawa
### Title: Nakagawa's R2 for mixed models
### Aliases: r2_nakagawa

### ** Examples

## Don't show: 
if (require("lme4")) withAutoprint({ # examplesIf
## End(Don't show)
model <- lme4::lmer(Sepal.Length ~ Petal.Length + (1 | Species), data = iris)
r2_nakagawa(model)
r2_nakagawa(model, by_group = TRUE)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("r2_somers")
### * r2_somers

flush(stderr()); flush(stdout())

### Name: r2_somers
### Title: Somers' Dxy rank correlation for binary outcomes
### Aliases: r2_somers

### ** Examples





cleanEx()
nameEx("r2_tjur")
### * r2_tjur

flush(stderr()); flush(stdout())

### Name: r2_tjur
### Title: Tjur's R2 - coefficient of determination (D)
### Aliases: r2_tjur

### ** Examples

model <- glm(vs ~ wt + mpg, data = mtcars, family = "binomial")
r2_tjur(model)




cleanEx()
nameEx("r2_xu")
### * r2_xu

flush(stderr()); flush(stdout())

### Name: r2_xu
### Title: Xu' R2 (Omega-squared)
### Aliases: r2_xu

### ** Examples

model <- lm(Sepal.Length ~ Petal.Length + Species, data = iris)
r2_xu(model)



cleanEx()
nameEx("r2_zeroinflated")
### * r2_zeroinflated

flush(stderr()); flush(stdout())

### Name: r2_zeroinflated
### Title: R2 for models with zero-inflation
### Aliases: r2_zeroinflated

### ** Examples




cleanEx()
nameEx("simulate_residuals")
### * simulate_residuals

flush(stderr()); flush(stdout())

### Name: simulate_residuals
### Title: Simulate randomized quantile residuals from a model
### Aliases: simulate_residuals residuals.performance_simres

### ** Examples

## Don't show: 
if (require("DHARMa")) withAutoprint({ # examplesIf
## End(Don't show)
m <- lm(mpg ~ wt + cyl + gear + disp, data = mtcars)
simulate_residuals(m)

# extract residuals
head(residuals(simulate_residuals(m)))
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("test_performance")
### * test_performance

flush(stderr()); flush(stdout())

### Name: test_bf
### Title: Test if models are different
### Aliases: test_bf test_bf.default test_likelihoodratio test_lrt
###   test_performance test_vuong test_wald

### ** Examples

# Nested Models
# -------------
m1 <- lm(Sepal.Length ~ Petal.Width, data = iris)
m2 <- lm(Sepal.Length ~ Petal.Width + Species, data = iris)
m3 <- lm(Sepal.Length ~ Petal.Width * Species, data = iris)

test_performance(m1, m2, m3)

test_bf(m1, m2, m3)
test_wald(m1, m2, m3) # Equivalent to anova(m1, m2, m3)

# Equivalent to lmtest::lrtest(m1, m2, m3)
test_likelihoodratio(m1, m2, m3, estimator = "ML")

# Equivalent to anova(m1, m2, m3, test='LRT')
test_likelihoodratio(m1, m2, m3, estimator = "OLS")

if (require("CompQuadForm")) {
  test_vuong(m1, m2, m3) # nonnest2::vuongtest(m1, m2, nested=TRUE)

  # Non-nested Models
  # -----------------
  m1 <- lm(Sepal.Length ~ Petal.Width, data = iris)
  m2 <- lm(Sepal.Length ~ Petal.Length, data = iris)
  m3 <- lm(Sepal.Length ~ Species, data = iris)

  test_performance(m1, m2, m3)
  test_bf(m1, m2, m3)
  test_vuong(m1, m2, m3) # nonnest2::vuongtest(m1, m2)
}

# Tweak the output
# ----------------
test_performance(m1, m2, m3, include_formula = TRUE)


# SEM / CFA (lavaan objects)
# --------------------------
# Lavaan Models
if (require("lavaan")) {
  structure <- " visual  =~ x1 + x2 + x3
                 textual =~ x4 + x5 + x6
                 speed   =~ x7 + x8 + x9

                  visual ~~ textual + speed "
  m1 <- lavaan::cfa(structure, data = HolzingerSwineford1939)

  structure <- " visual  =~ x1 + x2 + x3
                 textual =~ x4 + x5 + x6
                 speed   =~ x7 + x8 + x9

                  visual ~~ 0 * textual + speed "
  m2 <- lavaan::cfa(structure, data = HolzingerSwineford1939)

  structure <- " visual  =~ x1 + x2 + x3
                 textual =~ x4 + x5 + x6
                 speed   =~ x7 + x8 + x9

                  visual ~~ 0 * textual + 0 * speed "
  m3 <- lavaan::cfa(structure, data = HolzingerSwineford1939)

  test_likelihoodratio(m1, m2, m3)

  # Different Model Types
  # ---------------------
  if (require("lme4") && require("mgcv")) {
    m1 <- lm(Sepal.Length ~ Petal.Length + Species, data = iris)
    m2 <- lmer(Sepal.Length ~ Petal.Length + (1 | Species), data = iris)
    m3 <- gam(Sepal.Length ~ s(Petal.Length, by = Species) + Species, data = iris)

    test_performance(m1, m2, m3)
  }
}




### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')

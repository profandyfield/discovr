pkgname <- "modelbased"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('modelbased')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("as.data.frame.estimate_contrasts")
### * as.data.frame.estimate_contrasts

flush(stderr()); flush(stdout())

### Name: as.data.frame.estimate_contrasts
### Title: Converting modelbased-objects into raw data frames
### Aliases: as.data.frame.estimate_contrasts

### ** Examples

## Don't show: 
if (insight::check_if_installed("marginaleffects", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
model <- lm(Petal.Length ~ Species, data = iris)
out <- estimate_means(model, "Species")

# default
print(out)

as.data.frame(out)

as.data.frame(out, preserve_names = FALSE)

as.data.frame(out, preserve_names = FALSE, use_responsename = TRUE)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("describe_nonlinear")
### * describe_nonlinear

flush(stderr()); flush(stdout())

### Name: describe_nonlinear
### Title: Describe the smooth term (for GAMs) or non-linear predictors
### Aliases: describe_nonlinear describe_nonlinear.data.frame
###   estimate_smooth

### ** Examples

## Don't show: 
if (insight::check_if_installed("performance", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
# Create data
data <- data.frame(x = rnorm(200))
data$y <- data$x^2 + rnorm(200, 0, 0.5)

model <<- lm(y ~ poly(x, 2), data = data)
link_data <- estimate_relation(model, length = 100)

describe_nonlinear(link_data, x = "x")
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("estimate_contrasts")
### * estimate_contrasts

flush(stderr()); flush(stdout())

### Name: estimate_contrasts
### Title: Estimate Marginal Contrasts
### Aliases: estimate_contrasts estimate_contrasts.default

### ** Examples

## Don't show: 
if (all(insight::check_if_installed(c("lme4", "marginaleffects", "parameters", "rstanarm"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
## Not run: 
##D # Basic usage --------------------------------
##D # --------------------------------------------
##D 
##D model <- lm(Sepal.Width ~ Species, data = iris)
##D estimate_contrasts(model)
##D 
##D # Dealing with interactions
##D model <- lm(Sepal.Width ~ Species * Petal.Width, data = iris)
##D 
##D # By default: selects first factor
##D estimate_contrasts(model)
##D 
##D # Can also run contrasts between points of numeric, stratified by "Species"
##D estimate_contrasts(model, contrast = "Petal.Width", by = "Species")
##D 
##D # Or both
##D estimate_contrasts(model, contrast = c("Species", "Petal.Width"), length = 2)
##D 
##D # Or with custom specifications
##D estimate_contrasts(model, contrast = c("Species", "Petal.Width = c(1, 2)"))
##D 
##D # Or modulate it
##D estimate_contrasts(model, by = "Petal.Width", length = 4)
##D 
##D # Standardized differences
##D estimated <- estimate_contrasts(lm(Sepal.Width ~ Species, data = iris))
##D standardize(estimated)
##D 
##D # contrasts of slopes ------------------------
##D # --------------------------------------------
##D 
##D data(qol_cancer, package = "parameters")
##D qol_cancer$ID <- as.numeric(qol_cancer$ID)
##D qol_cancer$grp <- as.factor(ifelse(qol_cancer$ID < 100, "Group 1", "Group 2"))
##D model <- lm(QoL ~ time * education * grp, data = qol_cancer)
##D 
##D # "time" only has integer values and few values, so it's treated like a factor
##D estimate_contrasts(model, "time", by = "education")
##D 
##D # we set `integer_as_continuous = TRUE` to treat integer as continuous
##D estimate_contrasts(model, "time", by = "education", integer_as_continuous = 1)
##D 
##D # pairwise comparisons for multiple groups
##D estimate_contrasts(
##D   model,
##D   "time",
##D   by = c("education", "grp"),
##D   integer_as_continuous = TRUE
##D )
##D 
##D # if we want pairwise comparisons only for one factor, but group by another,
##D # we need the formula specification and define the grouping variable after
##D # the vertical bar
##D estimate_contrasts(
##D   model,
##D   "time",
##D   by = c("education", "grp"),
##D   comparison = ~pairwise | grp,
##D   integer_as_continuous = TRUE
##D )
##D 
##D # custom factor contrasts - contrasts the average effects of two levels
##D # against the remaining third level
##D # ---------------------------------------------------------------------
##D 
##D data(puppy_love, package = "modelbased")
##D cond_tx <- cbind("no treatment" = c(1, 0, 0), "treatment" = c(0, 0.5, 0.5))
##D model <- lm(happiness ~ puppy_love * dose, data = puppy_love)
##D estimate_slopes(model, "puppy_love", by = "dose", comparison = cond_tx)
##D 
##D # Other models (mixed, Bayesian, ...) --------
##D # --------------------------------------------
##D data <- iris
##D data$Petal.Length_factor <- ifelse(data$Petal.Length < 4.2, "A", "B")
##D 
##D model <- lme4::lmer(Sepal.Width ~ Species + (1 | Petal.Length_factor), data = data)
##D estimate_contrasts(model)
##D 
##D data <- mtcars
##D data$cyl <- as.factor(data$cyl)
##D data$am <- as.factor(data$am)
##D 
##D model <- rstanarm::stan_glm(mpg ~ cyl * wt, data = data, refresh = 0)
##D estimate_contrasts(model)
##D estimate_contrasts(model, by = "wt", length = 4)
##D 
##D model <- rstanarm::stan_glm(
##D   Sepal.Width ~ Species + Petal.Width + Petal.Length,
##D   data = iris,
##D   refresh = 0
##D )
##D estimate_contrasts(model, by = "Petal.Length = [sd]", test = "bf")
## End(Not run)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("estimate_expectation")
### * estimate_expectation

flush(stderr()); flush(stdout())

### Name: estimate_expectation
### Title: Model-based predictions
### Aliases: estimate_expectation estimate_link estimate_prediction
###   estimate_relation

### ** Examples

## Don't show: 
if (all(insight::check_if_installed(c("see", "glmmTMB", "rstanarm"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
library(modelbased)

# Linear Models
model <- lm(mpg ~ wt, data = mtcars)

# Get predicted and prediction interval (see insight::get_predicted)
estimate_expectation(model)

# Get expected values with confidence interval
pred <- estimate_relation(model)
pred

# Visualisation (see visualisation_recipe())
plot(pred)

# Standardize predictions
pred <- estimate_relation(lm(mpg ~ wt + am, data = mtcars))
z <- standardize(pred, include_response = FALSE)
z
unstandardize(z, include_response = FALSE)

# Logistic Models
model <- glm(vs ~ wt, data = mtcars, family = "binomial")
estimate_expectation(model)
estimate_relation(model)

# Mixed models
data(mtcars)
mtcars$gear <- as.factor(mtcars$gear)
model <- glmmTMB::glmmTMB(mpg ~ wt + (1 | gear), data = mtcars)
estimate_expectation(model)
estimate_relation(model)

# Predict random effects and calculate contrasts
estim <- estimate_relation(model, by = "gear")
estim

estimate_contrasts(estim)

# Bayesian models
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("estimate_grouplevel")
### * estimate_grouplevel

flush(stderr()); flush(stdout())

### Name: estimate_grouplevel
### Title: Group-specific parameters of mixed models random effects
### Aliases: estimate_grouplevel estimate_grouplevel.default
###   estimate_grouplevel.brmsfit reshape_grouplevel
###   reshape_grouplevel.estimate_grouplevel

### ** Examples

## Don't show: 
if (all(insight::check_if_installed(c("see", "lme4"), quietly = TRUE)) && packageVersion("insight") > "1.1.0" && packageVersion("parameters") > "0.24.1") withAutoprint({ # examplesIf
## End(Don't show)
# lme4 model
data(mtcars)
model <- lme4::lmer(mpg ~ hp + (1 | carb), data = mtcars)
random <- estimate_grouplevel(model)

# Show group-specific effects
random

# Visualize random effects
plot(random)

# Reshape to wide data...
reshaped <- reshape_grouplevel(random, group = "carb", indices = c("Coefficient", "SE"))

# ...and can be easily combined with the original data
alldata <- merge(mtcars, reshaped)

# overall coefficients
estimate_grouplevel(model, type = "total")
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("estimate_means")
### * estimate_means

flush(stderr()); flush(stdout())

### Name: estimate_means
### Title: Estimate Marginal Means (Model-based average at each factor
###   level)
### Aliases: estimate_means

### ** Examples

## Don't show: 
if (all(insight::check_if_installed(c("marginaleffects", "see", "lme4"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
library(modelbased)

# Frequentist models
# -------------------
model <- lm(Petal.Length ~ Sepal.Width * Species, data = iris)

estimate_means(model)

# the `length` argument is passed to `insight::get_datagrid()` and modulates
# the number of representative values to return for numeric predictors
estimate_means(model, by = c("Species", "Sepal.Width"), length = 2)

# an alternative way to setup your data grid is specify the values directly
estimate_means(model, by = c("Species", "Sepal.Width = c(2, 4)"))

# or use one of the many predefined "tokens" that help you creating a useful
# data grid - to learn more about creating data grids, see help in
# `?insight::get_datagrid`.
estimate_means(model, by = c("Species", "Sepal.Width = [fivenum]"))

## Not run: 
##D # same for factors: filter by specific levels
##D estimate_means(model, by = "Species = c('versicolor', 'setosa')")
##D estimate_means(model, by = c("Species", "Sepal.Width = 0"))
##D 
##D # estimate marginal average of response at values for numeric predictor
##D estimate_means(model, by = "Sepal.Width", length = 5)
##D estimate_means(model, by = "Sepal.Width = c(2, 4)")
##D 
##D # or provide the definition of the data grid as list
##D estimate_means(
##D   model,
##D   by = list(Sepal.Width = c(2, 4), Species = c("versicolor", "setosa"))
##D )
##D 
##D # equivalence test: the null-hypothesis is that the estimate is outside
##D # the equivalence bounds [-4.5, 4.5]
##D estimate_means(model, by = "Species", equivalence = c(-4.5, 4.5))
##D 
##D # Methods that can be applied to it:
##D means <- estimate_means(model, by = c("Species", "Sepal.Width = 0"))
##D 
##D plot(means) # which runs visualisation_recipe()
##D standardize(means)
##D 
##D # grids for numeric predictors, combine range and length
##D model <- lm(Sepal.Length ~ Sepal.Width * Petal.Length, data = iris)
##D 
##D # create a "grid": value range for first numeric predictor, mean +/-1 SD
##D # for remaining numeric predictors.
##D estimate_means(model, c("Sepal.Width", "Petal.Length"), range = "grid")
##D 
##D # range from minimum to maximum spread over four values,
##D # and mean +/- 1 SD (a total of three values)
##D estimate_means(
##D   model,
##D   by = c("Sepal.Width", "Petal.Length"),
##D   range = c("range", "sd"),
##D   length = c(4, 3)
##D )
##D 
##D data <- iris
##D data$Petal.Length_factor <- ifelse(data$Petal.Length < 4.2, "A", "B")
##D 
##D model <- lme4::lmer(
##D   Petal.Length ~ Sepal.Width + Species + (1 | Petal.Length_factor),
##D   data = data
##D )
##D estimate_means(model)
##D estimate_means(model, by = "Sepal.Width", length = 3)
## End(Not run)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("estimate_slopes")
### * estimate_slopes

flush(stderr()); flush(stdout())

### Name: estimate_slopes
### Title: Estimate Marginal Effects
### Aliases: estimate_slopes

### ** Examples

## Don't show: 
if (all(insight::check_if_installed(c("marginaleffects", "emmeans", "effectsize", "mgcv", "ggplot2", "see"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
library(ggplot2)
# Get an idea of the data
ggplot(iris, aes(x = Petal.Length, y = Sepal.Width)) +
  geom_point(aes(color = Species)) +
  geom_smooth(color = "black", se = FALSE) +
  geom_smooth(aes(color = Species), linetype = "dotted", se = FALSE) +
  geom_smooth(aes(color = Species), method = "lm", se = FALSE)

# Model it
model <- lm(Sepal.Width ~ Species * Petal.Length, data = iris)
# Compute the marginal effect of Petal.Length at each level of Species
slopes <- estimate_slopes(model, trend = "Petal.Length", by = "Species")
slopes

# What is the *average* slope of Petal.Length? This can be calculated by
# taking the average of the slopes across all Species, using `comparison`.
# We pass a function to `comparison` that calculates the mean of the slopes.
estimate_slopes(
  model,
  trend = "Petal.Length",
  by = "Species",
  comparison = ~I(mean(x))
)

## Not run: 
##D # Plot it
##D plot(slopes)
##D standardize(slopes)
##D 
##D model <- mgcv::gam(Sepal.Width ~ s(Petal.Length), data = iris)
##D slopes <- estimate_slopes(model, by = "Petal.Length", length = 50)
##D summary(slopes)
##D plot(slopes)
##D 
##D model <- mgcv::gam(Sepal.Width ~ s(Petal.Length, by = Species), data = iris)
##D slopes <- estimate_slopes(model,
##D   trend = "Petal.Length",
##D   by = c("Petal.Length", "Species"), length = 20
##D )
##D summary(slopes)
##D plot(slopes)
##D 
##D # marginal effects, grouped by Species, at different values of Petal.Length
##D estimate_slopes(model,
##D   trend = "Petal.Length",
##D   by = c("Petal.Length", "Species"), length = 10
##D )
##D 
##D # marginal effects at different values of Petal.Length
##D estimate_slopes(model, trend = "Petal.Length", by = "Petal.Length", length = 10)
##D 
##D # marginal effects at very specific values of Petal.Length
##D estimate_slopes(model, trend = "Petal.Length", by = "Petal.Length=c(1, 3, 5)")
##D 
##D # average marginal effects of Petal.Length,
##D # just for the trend within a certain range
##D estimate_slopes(model, trend = "Petal.Length=seq(2, 4, 0.01)")
## End(Not run)
## Don't show: 
}) # examplesIf
## End(Don't show)
## Don't show: 
if (all(insight::check_if_installed(c("marginaleffects", "emmeans"), quietly = TRUE)) && getRversion() >= "4.5.0") withAutoprint({ # examplesIf
## End(Don't show)
## Not run: 
##D # marginal effects with different `estimate` options
##D data(penguins)
##D penguins$long_bill <- factor(datawizard::categorize(penguins$bill_len), labels = c("short", "long"))
##D m <- glm(long_bill ~ sex + species + island * bill_dep, data = penguins, family = "binomial")
##D 
##D # the emmeans default
##D estimate_slopes(m, "bill_dep", by = "island")
##D emmeans::emtrends(m, "island", var = "bill_dep", regrid = "response")
##D 
##D # the marginaleffects default
##D estimate_slopes(m, "bill_dep", by = "island", estimate = "average")
##D marginaleffects::avg_slopes(m, variables = "bill_dep", by = "island")
## End(Not run)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("get_emmeans")
### * get_emmeans

flush(stderr()); flush(stdout())

### Name: get_emcontrasts
### Title: Consistent API for 'emmeans' and 'marginaleffects'
### Aliases: get_emcontrasts get_emmeans get_emtrends get_marginalcontrasts
###   get_marginalmeans get_marginaltrends

### ** Examples

## Don't show: 
if (insight::check_if_installed("emmeans", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
# Basic usage
model <- lm(Sepal.Width ~ Species, data = iris)
get_emcontrasts(model)

## Not run: 
##D # Dealing with interactions
##D model <- lm(Sepal.Width ~ Species * Petal.Width, data = iris)
##D # By default: selects first factor
##D get_emcontrasts(model)
##D # Or both
##D get_emcontrasts(model, contrast = c("Species", "Petal.Width"), length = 2)
##D # Or with custom specifications
##D get_emcontrasts(model, contrast = c("Species", "Petal.Width=c(1, 2)"))
##D # Or modulate it
##D get_emcontrasts(model, by = "Petal.Width", length = 4)
## End(Not run)
## Don't show: 
}) # examplesIf
## End(Don't show)
## Don't show: 
if (require("emmeans", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
model <- lm(Sepal.Length ~ Species + Petal.Width, data = iris)

# By default, 'by' is set to "Species"
get_emmeans(model)

## Not run: 
##D # Overall mean (close to 'mean(iris$Sepal.Length)')
##D get_emmeans(model, by = NULL)
##D 
##D # One can estimate marginal means at several values of a 'modulate' variable
##D get_emmeans(model, by = "Petal.Width", length = 3)
##D 
##D # Interactions
##D model <- lm(Sepal.Width ~ Species * Petal.Length, data = iris)
##D 
##D get_emmeans(model)
##D get_emmeans(model, by = c("Species", "Petal.Length"), length = 2)
##D get_emmeans(model, by = c("Species", "Petal.Length = c(1, 3, 5)"), length = 2)
## End(Not run)
## Don't show: 
}) # examplesIf
## End(Don't show)
## Don't show: 
if (insight::check_if_installed("emmeans", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
## Not run: 
##D model <- lm(Sepal.Width ~ Species * Petal.Length, data = iris)
##D 
##D get_emtrends(model)
##D get_emtrends(model, by = "Species")
##D get_emtrends(model, by = "Petal.Length")
##D get_emtrends(model, by = c("Species", "Petal.Length"))
## End(Not run)

model <- lm(Petal.Length ~ poly(Sepal.Width, 4), data = iris)
get_emtrends(model)
get_emtrends(model, by = "Sepal.Width")
## Don't show: 
}) # examplesIf
## End(Don't show)
## Don't show: 
if (insight::check_if_installed("marginaleffects", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
model <- lm(Sepal.Length ~ Species + Petal.Width, data = iris)

# By default, 'by' is set to "Species"
get_marginalmeans(model)

# Overall mean (close to 'mean(iris$Sepal.Length)')
get_marginalmeans(model, by = NULL)

## Not run: 
##D # One can estimate marginal means at several values of a 'modulate' variable
##D get_marginalmeans(model, by = "Petal.Width", length = 3)
##D 
##D # Interactions
##D model <- lm(Sepal.Width ~ Species * Petal.Length, data = iris)
##D 
##D get_marginalmeans(model)
##D get_marginalmeans(model, by = c("Species", "Petal.Length"), length = 2)
##D get_marginalmeans(model, by = c("Species", "Petal.Length = c(1, 3, 5)"), length = 2)
## End(Not run)
## Don't show: 
}) # examplesIf
## End(Don't show)
## Don't show: 
if (insight::check_if_installed("marginaleffects", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
model <- lm(Sepal.Width ~ Species * Petal.Length, data = iris)

get_marginaltrends(model, trend = "Petal.Length", by = "Species")
get_marginaltrends(model, trend = "Petal.Length", by = "Petal.Length")
get_marginaltrends(model, trend = "Petal.Length", by = c("Species", "Petal.Length"))
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("pool_contrasts")
### * pool_contrasts

flush(stderr()); flush(stdout())

### Name: pool_contrasts
### Title: Pool contrasts and comparisons from 'estimate_contrasts()'
### Aliases: pool_contrasts

### ** Examples

## Don't show: 
if (require("mice")) withAutoprint({ # examplesIf
## End(Don't show)
data("nhanes2", package = "mice")
imp <- mice::mice(nhanes2, printFlag = FALSE)
comparisons <- lapply(1:5, function(i) {
  m <- lm(bmi ~ age + hyp + chl, data = mice::complete(imp, action = i))
  estimate_contrasts(m, "age")
})
pool_contrasts(comparisons)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("pool_predictions")
### * pool_predictions

flush(stderr()); flush(stdout())

### Name: pool_predictions
### Title: Pool Predictions and Estimated Marginal Means
### Aliases: pool_predictions pool_slopes

### ** Examples

## Don't show: 
if (require("mice") && requireNamespace("marginaleffects")) withAutoprint({ # examplesIf
## End(Don't show)
# example for multiple imputed datasets
data("nhanes2", package = "mice")
imp <- mice::mice(nhanes2, printFlag = FALSE)

# estimated marginal means
predictions <- lapply(1:5, function(i) {
  m <- lm(bmi ~ age + hyp + chl, data = mice::complete(imp, action = i))
  estimate_means(m, "age")
})
pool_predictions(predictions)

# estimated slopes (marginal effects)
slopes <- lapply(1:5, function(i) {
  m <- lm(bmi ~ age + hyp + chl, data = mice::complete(imp, action = i))
  estimate_slopes(m, "chl")
})
pool_slopes(slopes)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("print.estimate_contrasts")
### * print.estimate_contrasts

flush(stderr()); flush(stdout())

### Name: display.estimate_contrasts
### Title: Printing modelbased-objects
### Aliases: display.estimate_contrasts format.estimate_contrasts
###   print.estimate_contrasts

### ** Examples

## Don't show: 
if (insight::check_if_installed("marginaleffects", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
model <- lm(Petal.Length ~ Species, data = iris)
out <- estimate_means(model, "Species")

# default
print(out)

# smaller set of columns
print(out, select = "minimal")

# remove redundant labels
data(efc, package = "modelbased")
efc <- datawizard::to_factor(efc, c("c161sex", "c172code", "e16sex"))
levels(efc$c172code) <- c("low", "mid", "high")
fit <- lm(neg_c_7 ~ c161sex * c172code * e16sex, data = efc)
out <- estimate_means(fit, c("c161sex", "c172code", "e16sex"))
print(out, full_labels = FALSE, select = "{estimate} ({se})")
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("residualize_over_grid")
### * residualize_over_grid

flush(stderr()); flush(stdout())

### Name: residualize_over_grid
### Title: Compute partial residuals from a data grid
### Aliases: residualize_over_grid residualize_over_grid.data.frame

### ** Examples

## Don't show: 
if (requireNamespace("marginaleffects", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
set.seed(1234)
x1 <- rnorm(200)
x2 <- rnorm(200)
# quadratic relationship
y <- 2 * x1 + x1^2 + 4 * x2 + rnorm(200)

d <- data.frame(x1, x2, y)
model <- lm(y ~ x1 + x2, data = d)

pr <- estimate_means(model, c("x1", "x2"))
head(residualize_over_grid(pr, model))
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("smoothing")
### * smoothing

flush(stderr()); flush(stdout())

### Name: smoothing
### Title: Smoothing a vector or a time series
### Aliases: smoothing

### ** Examples

x <- sin(seq(0, 4 * pi, length.out = 100)) + rnorm(100, 0, 0.2)
plot(x, type = "l")
lines(smoothing(x, method = "smooth"), type = "l", col = "blue")
lines(smoothing(x, method = "loess"), type = "l", col = "red")

x <- sin(seq(0, 4 * pi, length.out = 10000)) + rnorm(10000, 0, 0.2)
plot(x, type = "l")
lines(smoothing(x, method = "smooth"), type = "l", col = "blue")
lines(smoothing(x, method = "loess"), type = "l", col = "red")



cleanEx()
nameEx("visualisation_recipe.estimate_predicted")
### * visualisation_recipe.estimate_predicted

flush(stderr()); flush(stdout())

### Name: plot.estimate_predicted
### Title: Automated plotting for 'modelbased' objects
### Aliases: plot.estimate_predicted plot.estimate_means
###   tinyplot.estimate_means visualisation_recipe.estimate_predicted
###   visualisation_recipe.estimate_slopes
###   visualisation_recipe.estimate_grouplevel

### ** Examples

## Don't show: 
if (all(insight::check_if_installed(c("tinyplot", "marginaleffects"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
# ==============================================
# tinyplot
# ==============================================
## Don't show: 
}) # examplesIf
## End(Don't show)
## Don't show: 
if (all(insight::check_if_installed(c("marginaleffects", "see", "ggplot2"), quietly = TRUE)) && getRversion() >= "4.1.0") withAutoprint({ # examplesIf
## End(Don't show)
library(ggplot2)
library(see)
# ==============================================
# estimate_relation, estimate_expectation, ...
# ==============================================
# Simple Model ---------------
x <- estimate_relation(lm(mpg ~ wt, data = mtcars))
layers <- visualisation_recipe(x)
layers
plot(layers)

# visualization_recipe() is called implicitly when you call plot()
plot(estimate_relation(lm(mpg ~ qsec, data = mtcars)))

## Not run: 
##D # It can be used in a pipe workflow
##D lm(mpg ~ qsec, data = mtcars) |>
##D   estimate_relation(ci = c(0.5, 0.8, 0.9)) |>
##D   plot()
##D 
##D # Customize aesthetics ----------
##D 
##D plot(x,
##D   point = list(color = "red", alpha = 0.6, size = 3),
##D   line = list(color = "blue", size = 3),
##D   ribbon = list(fill = "green", alpha = 0.7)
##D ) +
##D   theme_minimal() +
##D   labs(title = "Relationship between MPG and WT")
##D 
##D # Customize raw data -------------
##D 
##D plot(x, point = list(geom = "density_2d_filled"), line = list(color = "white")) +
##D   scale_x_continuous(expand = c(0, 0)) +
##D   scale_y_continuous(expand = c(0, 0)) +
##D   theme(legend.position = "none")
##D 
##D # Single predictors examples -----------
##D 
##D plot(estimate_relation(lm(Sepal.Length ~ Species, data = iris)))
##D 
##D # 2-ways interaction ------------
##D 
##D # Numeric * numeric
##D x <- estimate_relation(lm(mpg ~ wt * qsec, data = mtcars))
##D plot(x)
##D 
##D # Numeric * factor
##D x <- estimate_relation(lm(Sepal.Width ~ Sepal.Length * Species, data = iris))
##D plot(x)
##D 
##D # ==============================================
##D # estimate_means
##D # ==============================================
##D # Simple Model ---------------
##D x <- estimate_means(lm(Sepal.Width ~ Species, data = iris), by = "Species")
##D layers <- visualisation_recipe(x)
##D layers
##D plot(layers)
##D 
##D # Customize aesthetics
##D layers <- visualisation_recipe(x,
##D   point = list(width = 0.03, color = "red"),
##D   pointrange = list(size = 2, linewidth = 2),
##D   line = list(linetype = "dashed", color = "blue")
##D )
##D plot(layers)
##D 
##D # Two levels ---------------
##D data <- mtcars
##D data$cyl <- as.factor(data$cyl)
##D 
##D model <- lm(mpg ~ cyl * wt, data = data)
##D 
##D x <- estimate_means(model, by = c("cyl", "wt"))
##D plot(x)
##D 
##D 
##D # GLMs ---------------------
##D data <- data.frame(vs = mtcars$vs, cyl = as.factor(mtcars$cyl))
##D x <- estimate_means(glm(vs ~ cyl, data = data, family = "binomial"), by = c("cyl"))
##D plot(x)
## End(Not run)
## Don't show: 
}) # examplesIf
## End(Don't show)
## Don't show: 
if (all(insight::check_if_installed(c("marginaleffects", "see", "ggplot2"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
# ==============================================
# estimate_slopes
# ==============================================
model <- lm(Sepal.Width ~ Species * Petal.Length, data = iris)
x <- estimate_slopes(model, trend = "Petal.Length", by = "Species")

layers <- visualisation_recipe(x)
layers
plot(layers)

## Not run: 
##D # Customize aesthetics and add horizontal line and theme
##D layers <- visualisation_recipe(x, pointrange = list(size = 2, linewidth = 2))
##D plot(layers) +
##D   geom_hline(yintercept = 0, linetype = "dashed", color = "red") +
##D   theme_minimal() +
##D   labs(y = "Effect of Petal.Length", title = "Marginal Effects")
##D 
##D model <- lm(Petal.Length ~ poly(Sepal.Width, 4), data = iris)
##D x <- estimate_slopes(model, trend = "Sepal.Width", by = "Sepal.Width", length = 20)
##D plot(visualisation_recipe(x))
##D 
##D model <- lm(Petal.Length ~ Species * poly(Sepal.Width, 3), data = iris)
##D x <- estimate_slopes(model, trend = "Sepal.Width", by = c("Sepal.Width", "Species"))
##D plot(visualisation_recipe(x))
## End(Not run)
## Don't show: 
}) # examplesIf
## End(Don't show)
## Don't show: 
if (all(insight::check_if_installed(c("ggplot2", "marginaleffects", "see", "lme4"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
# ==============================================
# estimate_grouplevel
# ==============================================
## Not run: 
##D data <- lme4::sleepstudy
##D data <- rbind(data, data)
##D data$Newfactor <- rep(c("A", "B", "C", "D"))
##D 
##D # 1 random intercept
##D model <- lme4::lmer(Reaction ~ Days + (1 | Subject), data = data)
##D x <- estimate_grouplevel(model)
##D layers <- visualisation_recipe(x)
##D layers
##D plot(layers)
##D 
##D # 2 random intercepts
##D model <- lme4::lmer(Reaction ~ Days + (1 | Subject) + (1 | Newfactor), data = data)
##D x <- estimate_grouplevel(model)
##D plot(x) +
##D   geom_hline(yintercept = 0, linetype = "dashed") +
##D   theme_minimal()
##D # Note: we need to use hline instead of vline because the axes is flipped
##D 
##D model <- lme4::lmer(Reaction ~ Days + (1 + Days | Subject) + (1 | Newfactor), data = data)
##D x <- estimate_grouplevel(model)
##D plot(x)
## End(Not run)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("zero_crossings")
### * zero_crossings

flush(stderr()); flush(stdout())

### Name: zero_crossings
### Title: Find zero-crossings and inversion points
### Aliases: zero_crossings find_inversions

### ** Examples

x <- sin(seq(0, 4 * pi, length.out = 100))
# plot(x, type = "b")

modelbased::zero_crossings(x)
modelbased::find_inversions(x)



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

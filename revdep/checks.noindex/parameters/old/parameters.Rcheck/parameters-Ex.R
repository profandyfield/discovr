pkgname <- "parameters"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('parameters')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("bootstrap_model")
### * bootstrap_model

flush(stderr()); flush(stdout())

### Name: bootstrap_model
### Title: Model bootstrapping
### Aliases: bootstrap_model bootstrap_model.default

### ** Examples

## Don't show: 
if (require("boot", quietly = TRUE) && require("emmeans", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("bootstrap_parameters")
### * bootstrap_parameters

flush(stderr()); flush(stdout())

### Name: bootstrap_parameters
### Title: Parameters bootstrapping
### Aliases: bootstrap_parameters bootstrap_parameters.default

### ** Examples

## Don't show: 
if (require("boot", quietly = TRUE) && require("emmeans", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("ci.default")
### * ci.default

flush(stderr()); flush(stdout())

### Name: ci.default
### Title: Confidence Intervals (CI)
### Aliases: ci.default

### ** Examples

## Don't show: 
if (require("glmmTMB") && requireNamespace("sandwich")) withAutoprint({ # examplesIf
## End(Don't show)
data(qol_cancer)
model <- lm(QoL ~ time + age + education, data = qol_cancer)

# regular confidence intervals
ci(model)

# using heteroscedasticity-robust standard errors
ci(model, vcov = "HC3")

## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("cluster_analysis")
### * cluster_analysis

flush(stderr()); flush(stdout())

### Name: cluster_analysis
### Title: Cluster Analysis
### Aliases: cluster_analysis

### ** Examples

set.seed(33)
# K-Means ====================================================
rez <- cluster_analysis(iris[1:4], n = 3, method = "kmeans")
rez # Show results
predict(rez) # Get clusters
summary(rez) # Extract the centers values (can use 'plot()' on that)
if (requireNamespace("MASS", quietly = TRUE)) {
  cluster_discrimination(rez) # Perform LDA
}

# Hierarchical k-means (more robust k-means)
if (require("factoextra", quietly = TRUE)) {
  rez <- cluster_analysis(iris[1:4], n = 3, method = "hkmeans")
  rez # Show results
  predict(rez) # Get clusters
}

# Hierarchical Clustering (hclust) ===========================
rez <- cluster_analysis(iris[1:4], n = 3, method = "hclust")
rez # Show results
predict(rez) # Get clusters

# K-Medoids (pam) ============================================
if (require("cluster", quietly = TRUE)) {
  rez <- cluster_analysis(iris[1:4], n = 3, method = "pam")
  rez # Show results
  predict(rez) # Get clusters
}

# PAM with automated number of clusters
if (require("fpc", quietly = TRUE)) {
  rez <- cluster_analysis(iris[1:4], method = "pamk")
  rez # Show results
  predict(rez) # Get clusters
}

# DBSCAN ====================================================
if (require("dbscan", quietly = TRUE)) {
  # Note that you can assimilate more outliers (cluster 0) to neighbouring
  # clusters by setting borderPoints = TRUE.
  rez <- cluster_analysis(iris[1:4], method = "dbscan", dbscan_eps = 1.45)
  rez # Show results
  predict(rez) # Get clusters
}

# Mixture ====================================================
if (require("mclust", quietly = TRUE)) {
  library(mclust) # Needs the package to be loaded
  rez <- cluster_analysis(iris[1:4], method = "mixture")
  rez # Show results
  predict(rez) # Get clusters
}



cleanEx()
nameEx("cluster_centers")
### * cluster_centers

flush(stderr()); flush(stdout())

### Name: cluster_centers
### Title: Find the cluster centers in your data
### Aliases: cluster_centers

### ** Examples

k <- kmeans(iris[1:4], 3)
cluster_centers(iris[1:4], clusters = k$cluster)
cluster_centers(iris[1:4], clusters = k$cluster, fun = median)



cleanEx()
nameEx("cluster_discrimination")
### * cluster_discrimination

flush(stderr()); flush(stdout())

### Name: cluster_discrimination
### Title: Compute a linear discriminant analysis on classified cluster
###   groups
### Aliases: cluster_discrimination

### ** Examples

## Don't show: 
if (requireNamespace("MASS", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
# Retrieve group classification from hierarchical cluster analysis
clustering <- cluster_analysis(iris[, 1:4], n = 3)

# Goodness of group classification
cluster_discrimination(clustering)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("cluster_meta")
### * cluster_meta

flush(stderr()); flush(stdout())

### Name: cluster_meta
### Title: Metaclustering
### Aliases: cluster_meta

### ** Examples




cleanEx()
nameEx("cluster_performance")
### * cluster_performance

flush(stderr()); flush(stdout())

### Name: cluster_performance
### Title: Performance of clustering models
### Aliases: cluster_performance cluster_performance.hclust

### ** Examples

# kmeans
model <- kmeans(iris[1:4], 3)
cluster_performance(model)

# hclust
data <- iris[1:4]
model <- hclust(dist(data))
clusters <- cutree(model, 3)
cluster_performance(model, data, clusters)

# Retrieve performance from parameters
params <- model_parameters(kmeans(iris[1:4], 3))
cluster_performance(params)



cleanEx()
nameEx("compare_parameters")
### * compare_parameters

flush(stderr()); flush(stdout())

### Name: compare_parameters
### Title: Compare model parameters of multiple models
### Aliases: compare_parameters compare_models

### ** Examples

## Don't show: 
if (require("gt", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
data(iris)
lm1 <- lm(Sepal.Length ~ Species, data = iris)
lm2 <- lm(Sepal.Length ~ Species + Petal.Length, data = iris)
compare_parameters(lm1, lm2)

# custom style
compare_parameters(lm1, lm2, select = "{estimate}{stars} ({se})")


data(mtcars)
m1 <- lm(mpg ~ wt, data = mtcars)
m2 <- glm(vs ~ wt + cyl, data = mtcars, family = "binomial")
compare_parameters(m1, m2)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("convert_efa_to_cfa")
### * convert_efa_to_cfa

flush(stderr()); flush(stdout())

### Name: convert_efa_to_cfa
### Title: Conversion between EFA results and CFA structure
### Aliases: convert_efa_to_cfa convert_efa_to_cfa.fa efa_to_cfa

### ** Examples

## Don't show: 
if (require("psych") && require("lavaan")) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("degrees_of_freedom")
### * degrees_of_freedom

flush(stderr()); flush(stdout())

### Name: degrees_of_freedom
### Title: Degrees of Freedom (DoF)
### Aliases: degrees_of_freedom dof

### ** Examples

## Don't show: 
if (require("lme4", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
model <- lm(Sepal.Length ~ Petal.Length * Species, data = iris)
dof(model)

model <- glm(vs ~ mpg * cyl, data = mtcars, family = "binomial")
dof(model)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("display.parameters_model")
### * display.parameters_model

flush(stderr()); flush(stdout())

### Name: display.parameters_model
### Title: Print tables in different output formats
### Aliases: display.parameters_model

### ** Examples

## Don't show: 
if (require("gt", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
model <- lm(mpg ~ wt + cyl, data = mtcars)
mp <- model_parameters(model)
display(mp)

## Don't show: 
}) # examplesIf
## End(Don't show)
## Don't show: 
if (all(insight::check_if_installed(c("glmmTMB", "lme4", "tinytable"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("dominance_analysis")
### * dominance_analysis

flush(stderr()); flush(stdout())

### Name: dominance_analysis
### Title: Dominance Analysis
### Aliases: dominance_analysis

### ** Examples

## Don't show: 
if (require("domir") && require("performance")) withAutoprint({ # examplesIf
## End(Don't show)
data(mtcars)

# Dominance Analysis with Logit Regression
model <- glm(vs ~ cyl + carb + mpg, data = mtcars, family = binomial())

performance::r2(model)
dominance_analysis(model)

# Dominance Analysis with Weighted Logit Regression
model_wt <- glm(vs ~ cyl + carb + mpg,
  data = mtcars,
  weights = wt, family = quasibinomial()
)

dominance_analysis(model_wt, quote_args = "weights")
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("equivalence_test.lm")
### * equivalence_test.lm

flush(stderr()); flush(stdout())

### Name: equivalence_test.lm
### Title: Equivalence test
### Aliases: equivalence_test.lm

### ** Examples

## Don't show: 
if (requireNamespace("sandwich")) withAutoprint({ # examplesIf
## End(Don't show)
data(qol_cancer)
model <- lm(QoL ~ time + age + education, data = qol_cancer)

# default rule
equivalence_test(model)

# using heteroscedasticity-robust standard errors
equivalence_test(model, vcov = "HC3")

# conditional equivalence test
equivalence_test(model, rule = "cet")

# plot method
if (require("see", quietly = TRUE)) {
  result <- equivalence_test(model)
  plot(result)
}
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("factor_scores")
### * factor_scores

flush(stderr()); flush(stdout())

### Name: factor_scores
### Title: Extract factor scores from Factor Analysis (EFA) or Omega
### Aliases: factor_scores

### ** Examples

## Don't show: 
if (insight::check_if_installed("psych", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
data(mtcars)
out <- factor_analysis(mtcars[, 1:7], n = 2)
head(factor_scores(out))
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("format_df_adjust")
### * format_df_adjust

flush(stderr()); flush(stdout())

### Name: format_df_adjust
### Title: Format the name of the degrees-of-freedom adjustment methods
### Aliases: format_df_adjust

### ** Examples

library(parameters)

format_df_adjust("kenward")
format_df_adjust("kenward", approx_string = "", dof_string = " DoF")



cleanEx()
nameEx("format_order")
### * format_order

flush(stderr()); flush(stdout())

### Name: format_order
### Title: Order (first, second, ...) formatting
### Aliases: format_order

### ** Examples

format_order(2)
format_order(8)
format_order(25, textual = FALSE)



cleanEx()
nameEx("format_p_adjust")
### * format_p_adjust

flush(stderr()); flush(stdout())

### Name: format_p_adjust
### Title: Format the name of the p-value adjustment methods
### Aliases: format_p_adjust

### ** Examples

library(parameters)

format_p_adjust("holm")
format_p_adjust("bonferroni")



cleanEx()
nameEx("format_parameters")
### * format_parameters

flush(stderr()); flush(stdout())

### Name: format_parameters
### Title: Parameter names formatting
### Aliases: format_parameters format_parameters.default

### ** Examples

model <- lm(Sepal.Length ~ Species * Sepal.Width, data = iris)
format_parameters(model)

model <- lm(Sepal.Length ~ Petal.Length + (Species / Sepal.Width), data = iris)
format_parameters(model)

model <- lm(Sepal.Length ~ Species + poly(Sepal.Width, 2), data = iris)
format_parameters(model)

model <- lm(Sepal.Length ~ Species + poly(Sepal.Width, 2, raw = TRUE), data = iris)
format_parameters(model)



cleanEx()
nameEx("get_scores")
### * get_scores

flush(stderr()); flush(stdout())

### Name: get_scores
### Title: Get Scores from Principal Component or Factor Analysis (PCA/FA)
### Aliases: get_scores

### ** Examples

## Don't show: 
if (insight::check_if_installed("psych", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
pca <- principal_components(mtcars[, 1:7], n = 2, rotation = "varimax")

# PCA extracted two components
pca

# assignment of items to each component
closest_component(pca)

# now we want to have sum scores for each component
get_scores(pca)

# compare to manually computed sum score for 2nd component, which
# consists of items "hp" and "qsec"
(mtcars$hp + mtcars$qsec) / 2
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_parameters.BFBayesFactor")
### * model_parameters.BFBayesFactor

flush(stderr()); flush(stdout())

### Name: model_parameters.BFBayesFactor
### Title: Parameters from BayesFactor objects
### Aliases: model_parameters.BFBayesFactor

### ** Examples

## Don't show: 
if (require("BayesFactor")) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_parameters.aov")
### * model_parameters.aov

flush(stderr()); flush(stdout())

### Name: model_parameters.aov
### Title: Parameters from ANOVAs
### Aliases: model_parameters.aov

### ** Examples

## Don't show: 
if (requireNamespace("effectsize", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
df <- iris
df$Sepal.Big <- ifelse(df$Sepal.Width >= 3, "Yes", "No")

model <- aov(Sepal.Length ~ Sepal.Big, data = df)
model_parameters(model)

model_parameters(model, es_type = c("omega", "eta"), ci = 0.9)

model <- anova(lm(Sepal.Length ~ Sepal.Big, data = df))
model_parameters(model)
model_parameters(
  model,
  es_type = c("omega", "eta", "epsilon"),
  alternative = "greater"
)

model <- aov(Sepal.Length ~ Sepal.Big + Error(Species), data = df)
model_parameters(model)
## Don't show: 
}) # examplesIf
## End(Don't show)
## Don't show: 
if (requireNamespace("lme4", quietly = TRUE) && requireNamespace("effectsize", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_parameters.befa")
### * model_parameters.befa

flush(stderr()); flush(stdout())

### Name: model_parameters.befa
### Title: Parameters from Bayesian Exploratory Factor Analysis
### Aliases: model_parameters.befa

### ** Examples

library(parameters)



cleanEx()
nameEx("model_parameters.brmsfit")
### * model_parameters.brmsfit

flush(stderr()); flush(stdout())

### Name: model_parameters.data.frame
### Title: Parameters from Bayesian Models
### Aliases: model_parameters.data.frame model_parameters.brmsfit

### ** Examples

## Don't show: 
if (require("rstanarm")) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_parameters.cgam")
### * model_parameters.cgam

flush(stderr()); flush(stdout())

### Name: model_parameters.cgam
### Title: Parameters from Generalized Additive (Mixed) Models
### Aliases: model_parameters.cgam

### ** Examples

library(parameters)
if (require("mgcv")) {
  dat <- gamSim(1, n = 400, dist = "normal", scale = 2)
  model <- gam(y ~ s(x0) + s(x1) + s(x2) + s(x3), data = dat)
  model_parameters(model)
}



cleanEx()
nameEx("model_parameters.compare.loo")
### * model_parameters.compare.loo

flush(stderr()); flush(stdout())

### Name: model_parameters.compare.loo
### Title: Bayesian Model Comparison
### Aliases: model_parameters.compare.loo

### ** Examples

## Don't show: 
if (all(insight::check_if_installed(c("brms", "RcppEigen", "BH"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_parameters.default")
### * model_parameters.default

flush(stderr()); flush(stdout())

### Name: model_parameters.default
### Title: Parameters from (General) Linear Models
### Aliases: model_parameters.default

### ** Examples

## Don't show: 
if (require("boot", quietly = TRUE) && require("sandwich") && require("clubSandwich") && require("brglm2")) withAutoprint({ # examplesIf
## End(Don't show)
library(parameters)
model <- lm(mpg ~ wt + cyl, data = mtcars)

model_parameters(model)

# bootstrapped parameters
model_parameters(model, bootstrap = TRUE)

# standardized parameters
model_parameters(model, standardize = "refit")

# robust, heteroskedasticity-consistent standard errors
model_parameters(model, vcov = "HC3")

model_parameters(model,
  vcov = "vcovCL",
  vcov_args = list(cluster = mtcars$cyl)
)

# different p-value style in output
model_parameters(model, p_digits = 5)
model_parameters(model, digits = 3, ci_digits = 4, p_digits = "scientific")

# report S-value or probability of direction for parameters
model_parameters(model, s_value = TRUE)
model_parameters(model, pd = TRUE)

## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_parameters.glht")
### * model_parameters.glht

flush(stderr()); flush(stdout())

### Name: model_parameters.glht
### Title: Parameters from Hypothesis Testing
### Aliases: model_parameters.glht

### ** Examples




cleanEx()
nameEx("model_parameters.glimML")
### * model_parameters.glimML

flush(stderr()); flush(stdout())

### Name: model_parameters.glimML
### Title: Parameters from special models
### Aliases: model_parameters.glimML

### ** Examples

library(parameters)
if (require("brglm2", quietly = TRUE)) {
  data("stemcell")
  model <- bracl(
    research ~ as.numeric(religion) + gender,
    weights = frequency,
    data = stemcell,
    type = "ML"
  )
  model_parameters(model)
}



cleanEx()
nameEx("model_parameters.glmmTMB")
### * model_parameters.glmmTMB

flush(stderr()); flush(stdout())

### Name: model_parameters.glmmTMB
### Title: Parameters from Mixed Models
### Aliases: model_parameters.glmmTMB

### ** Examples

## Don't show: 
if (require("lme4") && require("glmmTMB")) withAutoprint({ # examplesIf
## End(Don't show)
library(parameters)
data(mtcars)
model <- lme4::lmer(mpg ~ wt + (1 | gear), data = mtcars)
model_parameters(model)

## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_parameters.hclust")
### * model_parameters.hclust

flush(stderr()); flush(stdout())

### Name: model_parameters.hclust
### Title: Parameters from Cluster Models (k-means, ...)
### Aliases: model_parameters.hclust

### ** Examples

## Don't show: 
if (all(insight::check_if_installed(c("dbscan", "cluster", "fpc"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_parameters.htest")
### * model_parameters.htest

flush(stderr()); flush(stdout())

### Name: model_parameters.htest
### Title: Parameters from hypothesis tests
### Aliases: model_parameters.htest model_parameters.coeftest

### ** Examples


model <- cor.test(mtcars$mpg, mtcars$cyl, method = "pearson")
model_parameters(model)

model <- t.test(iris$Sepal.Width, iris$Sepal.Length)
model_parameters(model, es_type = "hedges_g")

model <- t.test(mtcars$mpg ~ mtcars$vs)
model_parameters(model, es_type = "hedges_g")

model <- t.test(iris$Sepal.Width, mu = 1)
model_parameters(model, es_type = "cohens_d")

data(airquality)
airquality$Month <- factor(airquality$Month, labels = month.abb[5:9])
model <- pairwise.t.test(airquality$Ozone, airquality$Month)
model_parameters(model)

smokers <- c(83, 90, 129, 70)
patients <- c(86, 93, 136, 82)
model <- suppressWarnings(pairwise.prop.test(smokers, patients))
model_parameters(model)

model <- suppressWarnings(chisq.test(table(mtcars$am, mtcars$cyl)))
model_parameters(model, es_type = "cramers_v")




cleanEx()
nameEx("model_parameters.mira")
### * model_parameters.mira

flush(stderr()); flush(stdout())

### Name: model_parameters.mira
### Title: Parameters from multiply imputed repeated analyses
### Aliases: model_parameters.mira

### ** Examples

## Don't show: 
if (require("mice", quietly = TRUE) && require("gee", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
library(parameters)
data(nhanes2, package = "mice")
imp <- mice::mice(nhanes2)
fit <- with(data = imp, exp = lm(bmi ~ age + hyp + chl))
model_parameters(fit)

# and it works with pooled results
data("nhanes2", package = "mice")
imp <- mice::mice(nhanes2)
fit <- with(data = imp, exp = lm(bmi ~ age + hyp + chl))
pooled <- mice::pool(fit)

model_parameters(pooled)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_parameters.mlm")
### * model_parameters.mlm

flush(stderr()); flush(stdout())

### Name: model_parameters.mlm
### Title: Parameters from multinomial or cumulative link models
### Aliases: model_parameters.mlm

### ** Examples

## Don't show: 
if (require("brglm2", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
data("stemcell", package = "brglm2")
model <- brglm2::bracl(
  research ~ as.numeric(religion) + gender,
  weights = frequency,
  data = stemcell,
  type = "ML"
)
model_parameters(model)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_parameters.principal")
### * model_parameters.principal

flush(stderr()); flush(stdout())

### Name: model_parameters.lavaan
### Title: Parameters from PCA, FA, CFA, SEM
### Aliases: model_parameters.lavaan model_parameters.principal

### ** Examples

## Don't show: 
if (all(insight::check_if_installed(c("psych", "lavaan"), quietly = TRUE))) withAutoprint({ # examplesIf
## End(Don't show)
library(parameters)


# lavaan -------------------------------------
# Confirmatory Factor Analysis (CFA) ---------

data(HolzingerSwineford1939, package = "lavaan")
structure <- " visual  =~ x1 + x2 + x3
               textual =~ x4 + x5 + x6
               speed   =~ x7 + x8 + x9 "
model <- lavaan::cfa(structure, data = HolzingerSwineford1939)
model_parameters(model)
model_parameters(model, standardize = TRUE)

# filter parameters
model_parameters(
  model,
  parameters = list(
    To = "^(?!visual)",
    From = "^(?!(x7|x8))"
  )
)

# Structural Equation Model (SEM) ------------

data(PoliticalDemocracy, package = "lavaan")
structure <- "
  # latent variable definitions
    ind60 =~ x1 + x2 + x3
    dem60 =~ y1 + a*y2 + b*y3 + c*y4
    dem65 =~ y5 + a*y6 + b*y7 + c*y8
  # regressions
    dem60 ~ ind60
    dem65 ~ ind60 + dem60
  # residual correlations
    y1 ~~ y5
    y2 ~~ y4 + y6
    y3 ~~ y7
    y4 ~~ y8
    y6 ~~ y8
"
model <- lavaan::sem(structure, data = PoliticalDemocracy)
model_parameters(model)
model_parameters(model, standardize = TRUE)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("model_parameters.rma")
### * model_parameters.rma

flush(stderr()); flush(stdout())

### Name: model_parameters.rma
### Title: Parameters from Meta-Analysis
### Aliases: model_parameters.rma

### ** Examples

library(parameters)
mydat <<- data.frame(
  effectsize = c(-0.393, 0.675, 0.282, -1.398),
  stderr = c(0.317, 0.317, 0.13, 0.36)
)
if (require("metafor", quietly = TRUE)) {
  model <- rma(yi = effectsize, sei = stderr, method = "REML", data = mydat)
  model_parameters(model)
}




cleanEx()
nameEx("model_parameters.t1way")
### * model_parameters.t1way

flush(stderr()); flush(stdout())

### Name: model_parameters.t1way
### Title: Parameters from robust statistical objects in 'WRS2'
### Aliases: model_parameters.t1way

### ** Examples

if (require("WRS2") && packageVersion("WRS2") >= "1.1.3") {
  model <- t1way(libido ~ dose, data = viagra)
  model_parameters(model)
}



cleanEx()
nameEx("model_parameters.zcpglm")
### * model_parameters.zcpglm

flush(stderr()); flush(stdout())

### Name: model_parameters.zcpglm
### Title: Parameters from Zero-Inflated Models
### Aliases: model_parameters.zcpglm

### ** Examples

## Don't show: 
if (require("pscl")) withAutoprint({ # examplesIf
## End(Don't show)
data("bioChemists", package = "pscl")
model <- pscl::zeroinfl(
  art ~ fem + mar + kid5 + ment | kid5 + phd,
  data = bioChemists
)
model_parameters(model)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("n_clusters")
### * n_clusters

flush(stderr()); flush(stdout())

### Name: n_clusters
### Title: Find number of clusters in your data
### Aliases: n_clusters n_clusters_elbow n_clusters_gap
###   n_clusters_silhouette n_clusters_dbscan n_clusters_hclust

### ** Examples

## Don't show: 
if (require("see", quietly = TRUE) && require("factoextra", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("n_factors")
### * n_factors

flush(stderr()); flush(stdout())

### Name: n_factors
### Title: Number of components/factors to retain in PCA/FA
### Aliases: n_factors n_components

### ** Examples

## Don't show: 
if (require("PCDimension", quietly = TRUE) && require("nFactors", quietly = TRUE) && require("EGAnet", quietly = TRUE) && require("psych", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
library(parameters)
n_factors(mtcars, type = "PCA")

result <- n_factors(mtcars[1:5], type = "FA")
as.data.frame(result)
summary(result)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("p_calibrate")
### * p_calibrate

flush(stderr()); flush(stdout())

### Name: p_calibrate
### Title: Calculate calibrated p-values.
### Aliases: p_calibrate p_calibrate.default

### ** Examples

model <- lm(mpg ~ wt + as.factor(gear) + am, data = mtcars)
p_calibrate(model, verbose = FALSE)



cleanEx()
nameEx("p_direction.lm")
### * p_direction.lm

flush(stderr()); flush(stdout())

### Name: p_direction.lm
### Title: Probability of Direction (pd)
### Aliases: p_direction.lm

### ** Examples

## Don't show: 
if (requireNamespace("bayestestR") && require("see", quietly = TRUE) && requireNamespace("sandwich")) withAutoprint({ # examplesIf
## End(Don't show)
data(qol_cancer)
model <- lm(QoL ~ time + age + education, data = qol_cancer)
p_direction(model)

# based on heteroscedasticity-robust standard errors
p_direction(model, vcov = "HC3")

result <- p_direction(model)
plot(result)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("p_function")
### * p_function

flush(stderr()); flush(stdout())

### Name: p_function
### Title: p-value or consonance function
### Aliases: p_function consonance_function confidence_curve
###   format.parameters_p_function print.parameters_p_function
###   print_html.parameters_p_function

### ** Examples

## Don't show: 
if (requireNamespace("see")) withAutoprint({ # examplesIf
## End(Don't show)
model <- lm(Sepal.Length ~ Species, data = iris)
p_function(model)

model <- lm(mpg ~ wt + as.factor(gear) + am, data = mtcars)
result <- p_function(model)

# single panels
plot(result, n_columns = 2)

# integrated plot, the default
plot(result)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("p_significance.lm")
### * p_significance.lm

flush(stderr()); flush(stdout())

### Name: p_significance.lm
### Title: Practical Significance (ps)
### Aliases: p_significance.lm

### ** Examples

## Don't show: 
if (requireNamespace("bayestestR") && packageVersion("bayestestR") > "0.14.0" && requireNamespace("sandwich")) withAutoprint({ # examplesIf
## End(Don't show)
data(qol_cancer)
model <- lm(QoL ~ time + age + education, data = qol_cancer)

p_significance(model)
p_significance(model, threshold = c(-0.5, 1.5))

# based on heteroscedasticity-robust standard errors
p_significance(model, vcov = "HC3")

if (require("see", quietly = TRUE)) {
  result <- p_significance(model)
  plot(result)
}
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("p_value")
### * p_value

flush(stderr()); flush(stdout())

### Name: p_value
### Title: p-values
### Aliases: p_value p_value.default p_value.emmGrid

### ** Examples

## Don't show: 
if (require("pscl", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
data(iris)
model <- lm(Petal.Length ~ Sepal.Length + Species, data = iris)
p_value(model)

data("bioChemists", package = "pscl")
model <- pscl::zeroinfl(
  art ~ fem + mar + kid5 | kid5 + phd,
  data = bioChemists
)
p_value(model)
p_value(model, component = "zi")
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("p_value_betwithin")
### * p_value_betwithin

flush(stderr()); flush(stdout())

### Name: ci_betwithin
### Title: Between-within approximation for SEs, CIs and p-values
### Aliases: ci_betwithin dof_betwithin p_value_betwithin

### ** Examples




cleanEx()
nameEx("p_value_kenward")
### * p_value_kenward

flush(stderr()); flush(stdout())

### Name: ci_kenward
### Title: Kenward-Roger approximation for SEs, CIs and p-values
### Aliases: ci_kenward dof_kenward p_value_kenward se_kenward

### ** Examples




cleanEx()
nameEx("p_value_ml1")
### * p_value_ml1

flush(stderr()); flush(stdout())

### Name: ci_ml1
### Title: "m-l-1" approximation for SEs, CIs and p-values
### Aliases: ci_ml1 dof_ml1 p_value_ml1

### ** Examples




cleanEx()
nameEx("p_value_satterthwaite")
### * p_value_satterthwaite

flush(stderr()); flush(stdout())

### Name: ci_satterthwaite
### Title: Satterthwaite approximation for SEs, CIs and p-values
### Aliases: ci_satterthwaite dof_satterthwaite p_value_satterthwaite
###   se_satterthwaite

### ** Examples




cleanEx()
nameEx("parameters_type")
### * parameters_type

flush(stderr()); flush(stdout())

### Name: parameters_type
### Title: Type of model parameters
### Aliases: parameters_type

### ** Examples

library(parameters)

model <- lm(Sepal.Length ~ Petal.Length + Species, data = iris)
parameters_type(model)

model <- lm(Sepal.Length ~ Species + poly(Sepal.Width, 2), data = iris)
parameters_type(model)

model <- lm(Sepal.Length ~ Species + poly(Sepal.Width, 2, raw = TRUE), data = iris)
parameters_type(model)

# Interactions
model <- lm(Sepal.Length ~ Sepal.Width * Species, data = iris)
parameters_type(model)

model <- lm(Sepal.Length ~ Sepal.Width * Species * Petal.Length, data = iris)
parameters_type(model)

model <- lm(Sepal.Length ~ Species * Sepal.Width, data = iris)
parameters_type(model)

model <- lm(Sepal.Length ~ Species / Sepal.Width, data = iris)
parameters_type(model)


# Complex interactions
data <- iris
data$fac2 <- ifelse(data$Sepal.Width > mean(data$Sepal.Width), "A", "B")
model <- lm(Sepal.Length ~ Species / fac2 / Petal.Length, data = data)
parameters_type(model)

model <- lm(Sepal.Length ~ Species / fac2 * Petal.Length, data = data)
parameters_type(model)



cleanEx()
nameEx("pool_parameters")
### * pool_parameters

flush(stderr()); flush(stdout())

### Name: pool_parameters
### Title: Pool Model Parameters
### Aliases: pool_parameters

### ** Examples

## Don't show: 
if (require("mice") && require("datawizard")) withAutoprint({ # examplesIf
## End(Don't show)
# example for multiple imputed datasets
data("nhanes2", package = "mice")
imp <- mice::mice(nhanes2, printFlag = FALSE)
models <- lapply(1:5, function(i) {
  lm(bmi ~ age + hyp + chl, data = mice::complete(imp, action = i))
})
pool_parameters(models)

# should be identical to:
m <- with(data = imp, exp = lm(bmi ~ age + hyp + chl))
summary(mice::pool(m))

# For glm, mice used residual df, while `pool_parameters()` uses `Inf`
nhanes2$hyp <- datawizard::slide(as.numeric(nhanes2$hyp))
imp <- mice::mice(nhanes2, printFlag = FALSE)
models <- lapply(1:5, function(i) {
  glm(hyp ~ age + chl, family = binomial, data = mice::complete(imp, action = i))
})
m <- with(data = imp, exp = glm(hyp ~ age + chl, family = binomial))
# residual df
summary(mice::pool(m))$df
# df = Inf
pool_parameters(models)$df_error
# use residual df instead
pool_parameters(models, ci_method = "residual")$df_error
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("principal_components")
### * principal_components

flush(stderr()); flush(stdout())

### Name: factor_analysis
### Title: Principal Component Analysis (PCA) and Factor Analysis (FA)
### Aliases: factor_analysis factor_analysis.data.frame
###   factor_analysis.matrix principal_components rotated_data
###   principal_components.data.frame print_html.parameters_efa
###   predict.parameters_efa print.parameters_efa sort.parameters_efa
###   closest_component

### ** Examples

## Don't show: 
if (require("nFactors", quietly = TRUE) && require("sparsepca", quietly = TRUE) && require("psych", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
library(parameters)


# Factor Analysis (FA) ------------------------

factor_analysis(mtcars[, 1:7], n = "all", threshold = 0.2, rotation = "Promax")
factor_analysis(mtcars[, 1:7], n = 2, threshold = "max", sort = TRUE)
factor_analysis(mtcars[, 1:7], n = 2, rotation = "none", threshold = 2, sort = TRUE)

efa <- factor_analysis(mtcars[, 1:5], n = 2)
summary(efa)
predict(efa, verbose = FALSE)

## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("print.compare_parameters")
### * print.compare_parameters

flush(stderr()); flush(stdout())

### Name: format.compare_parameters
### Title: Print comparisons of model parameters
### Aliases: format.compare_parameters print.compare_parameters
###   print_html.compare_parameters print_md.compare_parameters

### ** Examples

## Don't show: 
if (require("gt", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("print.parameters_model")
### * print.parameters_model

flush(stderr()); flush(stdout())

### Name: format.parameters_model
### Title: Print model parameters
### Aliases: format.parameters_model print.parameters_model
###   summary.parameters_model print_html.parameters_model
###   print_md.parameters_model

### ** Examples

## Don't show: 
if (require("gt", quietly = TRUE) && require("glmmTMB", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)


# custom column layouts ------

data(iris)
lm1 <- lm(Sepal.Length ~ Species, data = iris)
lm2 <- lm(Sepal.Length ~ Species + Petal.Length, data = iris)

# custom style
result <- compare_parameters(lm1, lm2, select = "{estimate}{stars} ({se})")
print(result)

## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("random_parameters")
### * random_parameters

flush(stderr()); flush(stdout())

### Name: random_parameters
### Title: Summary information from random effects
### Aliases: random_parameters

### ** Examples

if (require("lme4")) {
  data(sleepstudy)
  model <- lmer(Reaction ~ Days + (1 + Days | Subject), data = sleepstudy)
  random_parameters(model)
}



cleanEx()
nameEx("reduce_parameters")
### * reduce_parameters

flush(stderr()); flush(stdout())

### Name: reduce_parameters
### Title: Dimensionality reduction (DR) / Features Reduction
### Aliases: reduce_parameters reduce_data

### ** Examples

data(iris)
model <- lm(Sepal.Width ~ Species * Sepal.Length + Petal.Width, data = iris)
model
reduce_parameters(model)

out <- reduce_data(iris, method = "PCA", n = "max")
head(out)



cleanEx()
nameEx("reshape_loadings")
### * reshape_loadings

flush(stderr()); flush(stdout())

### Name: reshape_loadings
### Title: Reshape loadings between wide/long formats
### Aliases: reshape_loadings reshape_loadings.parameters_efa
###   reshape_loadings.data.frame

### ** Examples

if (require("psych")) {
  pca <- model_parameters(psych::fa(attitude, nfactors = 3))
  loadings <- reshape_loadings(pca)

  loadings
  reshape_loadings(loadings)
}



cleanEx()
nameEx("select_parameters")
### * select_parameters

flush(stderr()); flush(stdout())

### Name: select_parameters
### Title: Automated selection of model parameters
### Aliases: select_parameters select_parameters.lm
###   select_parameters.merMod

### ** Examples

## Don't show: 
if (requireNamespace("lme4")) withAutoprint({ # examplesIf
## End(Don't show)
model <- lm(mpg ~ ., data = mtcars)
select_parameters(model)

model <- lm(mpg ~ cyl * disp * hp * wt, data = mtcars)
select_parameters(model)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("simulate_model")
### * simulate_model

flush(stderr()); flush(stdout())

### Name: simulate_model
### Title: Simulated draws from model coefficients
### Aliases: simulate_model simulate_model.default

### ** Examples

model <- lm(Sepal.Length ~ Species * Petal.Width + Petal.Length, data = iris)
head(simulate_model(model))



cleanEx()
nameEx("simulate_parameters")
### * simulate_parameters

flush(stderr()); flush(stdout())

### Name: simulate_parameters
### Title: Simulate Model Parameters
### Aliases: simulate_parameters simulate_parameters.default

### ** Examples

model <- lm(Sepal.Length ~ Species * Petal.Width + Petal.Length, data = iris)
simulate_parameters(model)




cleanEx()
nameEx("sort_parameters")
### * sort_parameters

flush(stderr()); flush(stdout())

### Name: sort_parameters
### Title: Sort parameters by coefficient values
### Aliases: sort_parameters sort_parameters.default

### ** Examples

# creating object to sort (can also be a regular data frame)
mod <- model_parameters(stats::lm(wt ~ am * cyl, data = mtcars))

# original output
mod

# sorted outputs
sort_parameters(mod, sort = "ascending")
sort_parameters(mod, sort = "descending")




cleanEx()
nameEx("standard_error")
### * standard_error

flush(stderr()); flush(stdout())

### Name: standard_error
### Title: Standard Errors
### Aliases: standard_error standard_error.default standard_error.factor

### ** Examples

## Don't show: 
if (require("sandwich") && require("clubSandwich")) withAutoprint({ # examplesIf
## End(Don't show)
model <- lm(Petal.Length ~ Sepal.Length * Species, data = iris)
standard_error(model)

# robust standard errors
standard_error(model, vcov = "HC3")

# cluster-robust standard errors
standard_error(model,
  vcov = "vcovCL",
  vcov_args = list(cluster = iris$Species)
)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("standardize_info")
### * standardize_info

flush(stderr()); flush(stdout())

### Name: standardize_info
### Title: Get Standardization Information
### Aliases: standardize_info standardise_info standardize_info.default

### ** Examples

## Don't show: 
if (insight::check_if_installed("datawizard", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
model <- lm(mpg ~ ., data = mtcars)
standardize_info(model)
standardize_info(model, robust = TRUE)
standardize_info(model, two_sd = TRUE)
## Don't show: 
}) # examplesIf
## End(Don't show)



cleanEx()
nameEx("standardize_parameters")
### * standardize_parameters

flush(stderr()); flush(stdout())

### Name: standardize_parameters
### Title: Parameters standardization
### Aliases: standardize_parameters standardise_parameters
###   standardize_posteriors standardise_posteriors

### ** Examples

model <- lm(len ~ supp * dose, data = ToothGrowth)
standardize_parameters(model, method = "refit")

## Don't show: 
if (require("lme4", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)
## Don't show: 
if (require("rstanarm", quietly = TRUE)) withAutoprint({ # examplesIf
## End(Don't show)
## Don't show: 
}) # examplesIf
## End(Don't show)



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

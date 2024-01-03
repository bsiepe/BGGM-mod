#' BGGMmod:  Bayesian Gaussian Graphical Models
#'
#'
#' @description The \code{R} package \strong{BGGMmod} provides tools for making Bayesian inference in
#' Gaussian graphical models (GGM). The methods are organized around two general approaches for
#' Bayesian inference: (1) estimation \insertCite{Williams2019}{BGGMmod} and (2) hypothesis testing
#' \insertCite{Williams2019_bf}{BGGMmod}. The key distinction is that the former focuses on either the
#' posterior or posterior predictive distribution, whereas the latter focuses on model comparison
#' with the Bayes factor.
#'
#' The methods in \strong{BGGMmod} build upon existing algorithms that are well-known in the literature.
#' The central contribution of \strong{BGGMmod} is to extend those approaches:
#'
#' \enumerate{
#'
#' \item Bayesian estimation with the novel matrix-F prior distribution \insertCite{Mulder2018}{BGGMmod}.
#'
#'  \itemize{
#'
#'  \item Estimation \code{\link{estimate}}.
#'
#'  }
#'
#'
#' \item Bayesian hypothesis testing with the novel matrix-F prior distribution \insertCite{Mulder2018}{BGGMmod}.
#'
#'  \itemize{
#'
#'  \item Exploratory hypothesis testing \code{\link{explore}}.
#'
#'  \item Confirmatory hypothesis  testing \code{\link{confirm}}.
#'
#'  }
#'
#' \item Comparing GGMs \insertCite{williams2020comparing}{BGGMmod}
#'
#'  \itemize{
#'
#'  \item Partial correlation differences \code{\link{ggm_compare_estimate}}.
#'
#'  \item Posterior predictive check \code{\link{ggm_compare_ppc}}.
#'
#'  \item Exploratory hypothesis testing \code{\link{ggm_compare_explore}}.
#'
#'  \item Confirmatory hypothesis testing \code{\link{ggm_compare_confirm}}.
#'
#'
#'  }
#'
#'
#' \item Extending inference beyond the conditional (in)dependence structure
#'
#' \itemize{
#'
#' \item Predictability with Bayesian variance explained \insertCite{gelman_r2_2019}{BGGMmod}
#'       \code{\link{predictability}}.
#'
#' \item Posterior uncertainty in the partial correlations \code{\link{estimate}}.
#'
#' \item Custom Network Statistics \code{\link{roll_your_own}}.
#'
#'
#' }
#'
#' }
#'
#' Furthermore, the computationally intensive tasks are written in \code{c++} via the \code{R}
#' package \strong{Rcpp} \insertCite{eddelbuettel2011rcpp}{BGGMmod} and the \code{c++}
#' library \strong{Armadillo} \insertCite{sanderson2016armadillo}{BGGMmod}, there are plotting functions
#' for each method, control variables can be included in the model, and there is support for
#' missing values \code{\link{bggm_missing}}.
#'
#' \bold{Supported Data Types}:
#'
#' \itemize{
#'
#' \item Continuous: The continuous method was described \insertCite{@in  @Williams2019_bf;textual}{BGGMmod}.
#'
#' \item Binary: The binary method builds directly upon \insertCite{@in @talhouk2012efficient;textual}{BGGMmod},
#'       that, in turn, built upon the approaches of \insertCite{lawrence2008bayesian;textual}{BGGMmod} and
#'       \insertCite{webb2008bayesian;textual}{BGGMmod} (to name a few).
#'
#' \item Ordinal: Ordinal data requires sampling thresholds. There are two approach included in \bold{BGGMmod}: (1)
#' the customary approach described in \insertCite{@in @albert1993bayesian;textual}{BGGMmod} (the default) and
#' the 'Cowles' algorithm described in \insertCite{@in @cowles1996accelerating;textual}{BGGMmod}.
#'
#'
#' \item Mixed: The mixed data (a combination of discrete and continuous) method was introduced
#' \insertCite{@in @hoff2007extending;textual}{BGGMmod}. This is a semi-parametric copula model
#' (i.e., a copula GGM) based on the ranked likelihood. Note that this can be used for data
#' consisting entirely of ordinal data.
#'
#' }
#'
#' \bold{Additional Features}:
#'
#'  The primary focus of \code{BGGMmod} is Gaussian graphical modeling (the inverse covariance matrix).
#'  The residue is a suite of useful methods not explicitly for GGMs:
#'
#'  \enumerate{
#'
#'  \item Bivariate correlations for binary (tetrachoric), ordinal (polychoric), mixed (rank based),
#'        and continuous (Pearson's) data \code{\link{zero_order_cors}}.
#'
#'  \item Multivariate regression for binary (probit), ordinal (probit),
#'        mixed (rank likelihood), and continous data (\code{\link{estimate}}).
#'
#'  \item Multiple regression for binary (probit), ordinal (probit),
#'        mixed (rank likelihood), and continuous data (e.g., \code{\link{coef.estimate}}).
#'  }
#'
#' \strong{Note on Conditional (In)dependence Models for Latent Data}:
#'
#' All of the data types (besides continuous) model latent data. That is, unobserved
#' (latent) data is assumed to be Gaussian. For example, a tetrachoric correlation
#' (binary data) is a special case of a polychoric correlation (ordinal data).
#' Both capture relations between "theorized normally distributed continuous
#' \strong{latent} variables" (\href{https://en.wikipedia.org/wiki/Polychoric_correlation}{Wikipedia}).
#' In both instances, the corresponding partial correlation between observed variables is conditioned
#' on the remaining variables in the \emph{latent} space. This implies that interpretation
#' is similar to continuous data, but with respect to latent variables. We refer interested users
#' to \insertCite{@page 2364, section 2.2, in  @webb2008bayesian;textual}{BGGMmod}.
#'
#'
#' \strong{High Dimensional Data?}
#'
#' \strong{BGGMmod} was built specifically for social-behavioral scientists. Of course,
#' the methods can be used by all researchers. However, there is currently \emph{not} support
#' for high-dimensional data (i.e., more variables than observations) that are common
#' place in the genetics literature. These data are rare in the social-behavioral sciences.
#' In the future, support for high-dimensional data may be added to \strong{BGGMmod}.
#'
#' @references
#' \insertAllCited{}
#'
#'
#' @docType package
#'
#' @name BGGMmod-package
#'
#' @import Rcpp
#' @importFrom Rcpp sourceCpp
#' @useDynLib BGGMmod, .registration = TRUE
#'
NULL

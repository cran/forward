\name{fwdglm}
\alias{fwdglm}
\alias{print.fwdglm}

\title{Forward Search in Generalized Linear Models}
\description{
This function applies the forward search approach to robust analysis in generalized linear models.
}

\usage{
fwdglm(formula, family, data, weights, na.action, contrasts = NULL, bsb = NULL, 
       balanced = TRUE, maxit = 50, epsilon = 1e-06, nsamp = 100, trace = TRUE)
}
\arguments{
  \item{formula}{a symbolic description of the model to be fit. The details of the model are the same as for glm.}
  \item{family}{a description of the error distribution and link function to be used in the model. See `family' for details.}
  \item{data}{an optional data frame containing the variables in the model. By default the variables are taken from the environment from which the function is called.}
  \item{weights}{an optional vector of weights to be used in the fitting process.}
  \item{na.action}{a function which indicates what should happen when the data contain `NA's. The default is set by the `na.action' setting of `options', and is `na.fail' if that is unset. The default is `na.omit'.}
  \item{contrasts}{an optional list. See the `contrasts.arg' of `model.matrix.default'.}
  \item{bsb}{an optional vector specifying a starting subset of observations to be used in the forward search. By default the ``best'' starting subset is chosen using the function \code{\link{lmsglm}} with control arguments provided by `nsamp'.}
  \item{balanced}{logical, for a binary response if \code{TRUE} the proportion of successes on the full dataset is approximately balanced during the forward search algorithm.}
  \item{maxit}{integer giving the maximal number of IWLS iterations. See \code{glm.control} for details.}
  \item{epsilon}{positive convergence tolerance epsilon. See \code{glm.control} for details.}
  \item{nsamp}{the initial subset for the forward search in generalized linear models is found by the function \code{\link{lmsglm}}. This argument allows to control how many subsets are used in the robust fitting procedure. The choices are: the number of samples (100 by the default) or `"all"'. Note that the algorithm tries to find `nsamp' good subsets or a maximum of 2*`nsamp' subsets.}
  \item{trace}{logical, if \code{TRUE} a message is printed for every ten iterations completed during the forward search.}
}
%\details{}
\value{
The function returns an object of class `"fwdglm"' with the following components:
\item{call}{the matched call.}
\item{Residuals}{a \eqn{(n x (n-p+1))} matrix of residuals.}
\item{Unit}{a matrix of units added (to a maximum of 5 units) at each step.}
\item{included}{a list with each element containing a vector of units included at each step of the forward search.}
\item{Coefficients}{a \eqn{((n-p+1) x p)} matrix of coefficients.}
\item{tStatistics}{a \eqn{((n-p+1) x p)} matrix of t statistics for the coefficients, i.e. coef.est/SE(coef.est).}
\item{Leverage}{a \eqn{(n x (n-p+1))} matrix of leverage values.}
\item{MaxRes}{a \eqn{((n-p) x 2)} matrix of max deviance residuals in the best subsets and \eqn{m}-th deviance residuals.}
\item{MinDelRes}{a \eqn{((n-p-1) x 2)} matrix of minimum deviance residuals out of best subsets and \eqn{(m+1)}-th deviance residuals.}
\item{ScoreTest}{a \eqn{((n-p) x 1)} matrix of score test statistics for a goodness of link test.}
\item{Likelihood}{a \eqn{((n-p) x 4)} matrix with columns containing: deviance, residual deviance, psuedo \eqn{R^2} (computed as \eqn{1-deviance/null.deviance}), dispersion parameter (computed as \eqn{\sum(pearson.residuals^2)/(m - p)}).}
\item{CookDist}{a \eqn{((n-p) x 1)} matrix of forward Cook's distances.}
\item{ModCookDist}{a \eqn{((n-p) x 5)} matrix of forward modified Cook's distances for the units (to a maximum of 5 units) included at each step.}
\item{Weights}{a \eqn{(n x (n-p))} matrix of weights used at each step of the forward search.}
\item{inibsb}{a vector giving the best starting subset chosen by \code{\link{lmsglm}}.}
\item{binary.response}{logical, equal to \code{TRUE} if binary response.}
}
\references{Atkinson, A.C. and Riani, M. (2000), \emph{Robust Diagnostic Regression Analysis}, First Edition. New York: Springer, Chapter 6.}
\author{Originally written for S-Plus by:
Kjell Konis \email{kkonis@insightful.com} and Marco Riani \email{mriani@unipr.it} \cr
Ported to R by Luca Scrucca \email{luca@stat.unipg.it}}
\seealso{
\code{\link{summary.fwdglm}}, \code{\link{plot.fwdglm}}, \code{\link{fwdlm}}, \code{\link{fwdsco}}.  
}
\examples{ 
data(cellular)
cellular$TNF <- as.factor(cellular$TNF)
cellular$IFN <- as.factor(cellular$IFN)
mod <- fwdglm(y ~ TNF + IFN, data=cellular, family=poisson(log), nsamp=200)
summary(mod)
\dontrun{plot(mod)}
plot(mod, 1)
plot(mod, 5)
plot(mod, 6, ylim=c(-3, 20))
plot(mod, 7)
plot(mod, 8)
}
\keyword{robust}
\keyword{regression}
\keyword{models}

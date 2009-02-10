\name{fwdlm}
\alias{fwdlm}
\alias{print.fwdlm}

\title{Forward Search in Linear Regression}
\description{
This function applies the forward search approach to robust analysis in linear regression models.
}
\usage{
fwdlm(formula, data, nsamp = "best", x = NULL, y = NULL, intercept = TRUE, 
      na.action, trace = TRUE)
}
\arguments{
  \item{formula}{a symbolic description of the model to be fit. The details of the model are the same as for lm.}
  \item{data}{an optional data frame containing the variables in the model. By default the variables are taken from the environment from which the function is called.}
  \item{nsamp}{the initial subset for the forward search in linear regression is found by fitting the regression model with the R function lmsreg (in package `\code{lqs}'. This argument allows to control how many subsets are used in the Least  Median of Squares regression. The choices are: the number of samples or "best" (the default) or "exact" or "sample". For details see \link{lmsreg}.}
  \item{x}{A matrix of predictors values (if no formula is provided).}
  \item{y}{A vector of response values (if no formula is provided).}
  \item{intercept}{Logical for the inclusion of the intercept (if no formula is provided).}
  \item{na.action}{a function which indicates what should happen when the data contain `NA's. The default is set by the `na.action' setting of `options', and is `na.fail' if that is unset. The default is `na.omit'.}
  \item{trace}{logical, if \code{TRUE} a message is printed for every ten iterations completed during the forward search.}
}
%\details{}
\value{The function returns an object of class `fwdlm' with the following components:
\item{call}{the matched call.}
\item{Residuals}{a \eqn{(n \times (n-p+1))} matrix of residuals.}
\item{Unit}{a matrix of units added (to a maximum of 5 units) at each step.}
\item{included}{a list with each element containing a vector of units included at each step of the forward search.}
\item{Coefficients}{a \eqn{((n-p+1) \times p)} matrix of coefficients.}
\item{tStatistics}{a \eqn{((n-p+1) \times p)} matrix of t statistics for the coefficients.}
\item{CookDist}{a \eqn{((n-p) \times 1)} matrix of forward Cook's distances.}
\item{ModCookDist}{a \eqn{((n-p) \times 5)} matrix of forward modified Cook's distances for the units (to a maximum of 5 units) included at each step.}
\item{Leverage}{a \eqn{(n \times (n-p+1))} matrix of leverage values.}
\item{S2}{a \eqn{((n-p+1) \times 2)} matrix with 1st column containing \eqn{S^2} and the 2nd column \eqn{R^2}.}
\item{MaxRes}{a \eqn{((n-p) \times 1)} matrix of max studentized residuals.}
\item{MinDelRes}{a \eqn{((n-p-1) \times 1)} matrix of minimum deletion residuals.}
\item{StartingModel}{a `lqs' object providing the the Least Median of Squares regression fit used to select the starting subset.}
}
\references{Atkinson, A.C. and Riani, M. (2000),  \emph{Robust Diagnostic Regression Analysis}, First Edition. New York: Springer, Chapters 2-3.}
\author{Originally written for S-Plus by:
Kjell Konis \email{kkonis@insightful.com} and Marco Riani \email{mriani@unipr.it} \cr
Ported to R by Luca Scrucca \email{luca@stat.unipg.it}}
\seealso{
\code{\link{summary.fwdlm}}, \code{\link{plot.fwdlm}}, \code{\link{fwdsco}}, \code{\link{fwdglm}}.  
}
\examples{
data(forbes)
plot(forbes, xlab="Boiling point", ylab="100 x log(pressure)")
mod <- fwdlm(y ~ x, data=forbes)
summary(mod)
\dontrun{plot(mod)}
plot(mod, 1)
plot(mod, 6, ylim=c(-3, 1000))
}
\keyword{robust}
\keyword{regression}
\keyword{models}

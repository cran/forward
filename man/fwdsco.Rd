\name{fwdsco}
\alias{fwdsco}
\alias{print.fwdsco} 

\title{Forward Search Transformation in Linear Regression}
\description{
This function applies the forward search approach to the Box-Cox transformation of response in linear regression models.
}
\usage{
fwdsco(formula, data, nsamp = "best", lambda = c(-1, -0.5, 0, 0.5, 1), 
       x = NULL, y = NULL, intercept = TRUE, na.action, trace = TRUE)
}
\arguments{
  \item{formula}{a symbolic description of the model to be fit. The details of the model are the same as for lm.}
  \item{data}{an optional data frame containing the variables in the model. By default the variables are taken from the environment from which the function is called.}
  \item{nsamp}{the initial subset for the forward search in linear regression is found by fitting the regression model with the R function \code{\link[MASS]{lmsreg}}. This argument allows to control how many subsets areused in the Least  Median of Squares regression. The choices are: the number of samples or \code{"best"} (the default) or \code{"exact"} or \code{"sample"}. For details see \code{\link[MASS]{lmsreg}}.}
  \item{lambda}{a vector (or a single numerical value) of lambda values for the response transformation.}
  \item{x}{A matrix of predictors values (if no formula is provided).}
  \item{y}{A vector of response values (if no formula is provided).}
  \item{intercept}{Logical for the inclusion of the intercept (if no formula is provided).}
  \item{na.action}{a function which indicates what should happen when the data contain \code{NA}'s. The default is set by the \code{na.action} setting of \code{options}, and is \code{na.fail} if that is unset. The default is \code{na.omit}.}
  \item{trace}{logical, if \code{TRUE} a message is printed for every ten iterations completed during the forward search.}
}
%%\details{}
\value{
The function returns an object of class\code{"fwdsco"} with the following components:
\item{call}{the matched call.}
\item{Likelihood}{a \eqn{((n-p+1) x n.lambda)} matrix of likelihood values.}
\item{ScoreTest}{a \eqn{((n-p+1) x n.lambda)} matrix of score test statistic values.}
\item{Unit}{a list with an element for each lambda values. Each element provides a matrix of units added (to a maximum of 5 units) at each step of the forward search.}
\item{Input}{a list with \eqn{n}, \eqn{p} and the vector of lambda values used.}
\item{x}{The design matrix.}
\item{y}{The vector for the response.}
}
\references{Atkinson, A.C. and Riani, M. (2000),  \emph{Robust Diagnostic Regression Analysis}, First Edition. New York: Springer, Chapter 4.}
\author{Originally written for S-Plus by:
Kjell Konis \email{kkonis@insightful.com} and Marco Riani \email{mriani@unipr.it} \cr
Ported to R by Luca Scrucca \email{luca@stat.unipg.it}}
\seealso{
\code{\link{summary.fwdsco}}, \code{\link{plot.fwdsco}}, \code{\link{fwdlm}}, \code{\link{fwdglm}}.  
}
\examples{
data(wool)
mod <- fwdsco(y ~ x1 + x2 + x3, data = wool)
summary(mod)
plot(mod, plot.mle=FALSE)
plot(mod, plot.Sco=FALSE, plot.Lik=TRUE)
}
\keyword{robust}
\keyword{regression}
\keyword{models}
                

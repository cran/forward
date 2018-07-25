\name{lmsglm}
\alias{lmsglm}

\title{Forward Search in Generalized Linear Models}
\description{
This function computes the Least Median Square robust fit for generalized linear models using deviance residuals.}

\usage{
lmsglm(x, y, family, weights, offset, n.samples = 100, max.samples = 200,
    epsilon = 1e-04, maxit = 50, trace = FALSE)
}
\arguments{
  \item{x}{a matrix or data frame containing the explanatory variables.}
  \item{y}{the response: a vector of length the number of rows of \code{x}.}
  \item{family}{a description of the error distribution and link function to be used in the model. See \code{family} for details.}
  \item{weights}{an optional vector of weights to be used in the fitting process.}
  \item{offset}{optional, a priori known component to be included in the linear predictor during fitting.}
  \item{n.samples}{number of good subsets to fit. It can be a numeric value or \code{"all"}.}
  \item{max.samples}{maximal number of subsets to fit. By default is set to twice \code{n.samples}.}
  \item{epsilon}{positive convergence tolerance epsilon. See \code{glm.control} for details.}
  \item{maxit}{integer giving the maximal number of IWLS iterations. See \code{glm.control} for details.}
  \item{trace}{logical, if \code{TRUE} a message is printed for every ten iterations completed during the search.}
}
\details{This function is used by  \code{fwdglm} to select the
starting subset for the forward search. For this reason, users do not
generally need to use it.}
\value{
The function returns a list with the following components:
\item{bsb}{a vector giving the best subset found}
\item{dev.res}{a vector giving the deviance residuals for all the observations}
\item{message}{a short message about the status of the algorithm}
\item{model}{the model provided by \code{glm.fit} using the units in the best subset found}
}
\references{Atkinson, A.C. and Riani, M. (2000),  \emph{Robust Diagnostic Regression Analysis}, First Edition. New York: Springer, Chapter 6.}
\author{Originally written for S-Plus by:
Kjell Konis \email{kkonis@insightful.com} and Marco Riani \email{mriani@unipr.it} \cr
Ported to R by Luca Scrucca \email{luca@stat.unipg.it}}
\seealso{
\code{\link{fwdglm}}, \code{\link{fwdlm}}, \code{\link{lmsreg}}, \code{\link{fwdsco}}.
}
%\examples{}
\keyword{robust}
\keyword{regression}
\keyword{models}

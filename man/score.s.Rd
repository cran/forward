\name{score.s}
\alias{score.s}
\alias{lambda.mle}

\title{Score test for the Box-Cox transformation of the response}
\description{Computes the approximate score test statistic for the Box-Cox transformation}
\usage{
score.s(x, y, la, tol = 1e-20)
lambda.mle(x, y, init = c(-2, 2), tol = 1e-04)
}
\arguments{
  \item{x}{a matrix or data frame containing the explanatory variables.}
  \item{y}{the response: a vector of length the number of rows of `x'.}
  \item{la}{the value of the lambda parameter.}
  \item{tol}{tolerance value used to check for full rank matrix.}
  \item{init}{range of values to search for MLE.}
}
\details{See pag. 82--86 of Atkinson and Riani (2000).}
\value{Return a list with two components:
\item{Score}{the value of the score test statistic}
\item{Likelihood}{the value of the likelihood}
}
\references{Atkinson, A.C. and Riani, M. (2000),  \emph{Robust Diagnostic Regression Analysis}, First Edition. New York: Springer, Chapter 4.}
\author{Originally written for S-Plus by:
Kjell Konis \email{kkonis@insightful.com} and Marco Riani \email{mriani@unipr.it} \cr
Ported to R by Luca Scrucca \email{luca@stat.unipg.it}}
\seealso{
\code{\link{fwdsco}}, \code{\link{fwdlm}}, \code{\link{fwdglm}}.
}
%\examples{}
\keyword{robust}
\keyword{regression}
\keyword{models}

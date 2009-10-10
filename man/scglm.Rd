\name{scglm}
\alias{scglm}

\title{Goodness of Link Test in GLM}
\description{Computes the score test statistic for the goodness of link test in generalized linear models.}
\usage{
scglm(x, y, family, weights, beta, phi = 1, offset)
}
\arguments{
  \item{x}{a matrix or data frame containing the explanatory variables.}
  \item{y}{the response: a vector of length the number of rows of \code{x}.}
  \item{family}{a description of the error distribution and link function to be used in the model. See \code{\link{family}} for details.}
  \item{weights}{an optional vector of weights to be used in the fitting process.}
  \item{beta}{a vector of coefficients estimates}
  \item{phi}{the dispersion parameter}
  \item{offset}{optional, a priori known component to be included in the linear predictor during fitting.}
}
\details{See pag. 200--201 of Atkinson and Riani (2000).}
\value{Return the value of the score test statistic.}
\references{Atkinson, A.C. and Riani, M. (2000),  \emph{Robust Diagnostic Regression Analysis}, First Edition. New York: Springer, Chapter 6.}
\author{Originally written for S-Plus by:
Kjell Konis \email{kkonis@insightful.com} and Marco Riani \email{mriani@unipr.it} \cr
Ported to R by Luca Scrucca \email{luca@stat.unipg.it}}
\seealso{
\code{\link{fwdglm}}, \code{\link{fwdlm}}, \code{\link{score.s}}.
}
%%\examples{}
\keyword{robust}
\keyword{regression}
\keyword{models}

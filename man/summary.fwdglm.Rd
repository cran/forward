\name{summary.fwdglm}
\alias{summary.fwdglm}
\alias{print.summary.fwdglm}

\title{Summarizing Fit of Forward Search in Generalized Linear Regression}
\description{
\code{summary} method for class \code{"fwdglm"}.
}
\usage{
\method{summary}{fwdglm}(object, steps = "auto", remove.perfect.fit = TRUE, \dots)
}
\arguments{
  \item{object}{an object of class \code{"fwdglm"}.}
  \item{steps}{the number of forward steps to show.}
  \item{remove.perfect.fit}{logical, controlling if perfect fit steps should be removed (only apply to binary responses).}
  \item{...}{further arguments passed to or from other methods.}
}
%%\details{}
%\value{}
\references{Atkinson, A.C. and Riani, M. (2000),  \emph{Robust Diagnostic Regression Analysis}, First Edition. New York: Springer, Chapter 6.}
\author{Originally written for S-Plus by:
Kjell Konis \email{kkonis@insightful.com} and Marco Riani \email{mriani@unipr.it} \cr
Ported to R by Luca Scrucca \email{luca@stat.unipg.it}}
\seealso{
\code{\link{fwdglm}}.
}
%%\examples{}
\keyword{robust}
\keyword{regression}
\keyword{models}

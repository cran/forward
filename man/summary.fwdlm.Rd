\name{summary.fwdlm}
\alias{summary.fwdlm}
\alias{print.summary.fwdlm}

\title{Summarizing Fit of Forward Search in Linear Regression}
\description{
\code{summary} method for class \code{"fwdlm"}.
}
\usage{
\method{summary}{fwdlm}(object, steps = "auto", \dots)
}
\arguments{
  \item{object}{an object of class \code{"fwdlm"}.}
  \item{steps}{the number of forward steps to show.}
  \item{...}{further arguments passed to or from other methods.}
}
%%\details{}
%\value{}
\references{Atkinson, A.C. and Riani, M. (2000),  \emph{Robust Diagnostic Regression Analysis}, First Edition. New York: Springer, Chapters 2-3.}
\author{Originally written for S-Plus by:
Kjell Konis \email{kkonis@insightful.com} and Marco Riani \email{mriani@unipr.it} \cr
Ported to R by Luca Scrucca \email{luca@stat.unipg.it}}
\seealso{
\code{\link{fwdlm}}.
}
%%\examples{}
\keyword{robust}
\keyword{regression}
\keyword{models}

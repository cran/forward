\name{summary.fwdsco}
\alias{summary.fwdsco}
\alias{print.summary.fwdsco}

\title{Summarizing Fit of Forward Search Transformation in Linear Regression}
\description{
`summary' method for class `"fwdsco"'.
}
\usage{
\method{summary}{fwdsco}(object, steps = "auto", lambdaMLE = FALSE, \dots)
}
\arguments{
  \item{object}{an object of class `"fwdsco"'.}
  \item{steps}{the number of forward steps to show.}
  \item{lambdaMLE}{logical, controlling if the MLE of lambda calculated on the full dataset must be be shown.}  
  \item{...}{further arguments passed to or from other methods.}
}
%\details{}
\value{}
\references{Atkinson, A.C. and Riani, M. (2000),  \emph{Robust Diagnostic Regression Analysis}, First Edition. New York: Springer, Chapter 4.}
\author{Originally written for S-Plus by:
Kjell Konis \email{kkonis@insightful.com} and Marco Riani \email{mriani@unipr.it} \cr
Ported to R by Luca Scrucca \email{luca@stat.unipg.it}}
\seealso{
\code{\link{fwdsco}}.
}
%\examples{}
\keyword{robust}
\keyword{regression}
\keyword{models}

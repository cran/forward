\name{plot.fwdsco}
\alias{plot.fwdsco}
\title{Forward Search Transformation in Linear Regression}
\description{This function plots the results of a forward search analysis for Box-Cox transformation of response in linear regression models.}
\usage{
\method{plot}{fwdsco}(x, plot.Sco = TRUE, plot.Lik = FALSE, th.Sco = 2.58, 
      plot.mle = TRUE, ylim = NULL, xlim = NULL, \dots)
}
\arguments{
  \item{x}{a `"fwdsco"' object.}
  \item{plot.Sco}{logical, if \code{TRUE} plots the score test statistic at each step of the forward search for each lambda value.}
  \item{plot.Lik}{logical, if \code{TRUE} plots the likelihood value at each step of the forward search for each lambda value.}
  \item{th.Sco}{numerical, a value used to draw the confidence interval on the plot of the score test statistic.}
  \item{plot.mle}{logical, if \code{TRUE} adds a point at the maximum likelihood value for the transformation computed in the final step, i.e. on the full dataset.}
  \item{ylim}{a two component vector for the min and max of the y axis.}
  \item{xlim}{a two component vector for the min and max of the x axis.}
  \item{...}{further arguments passed to or from other methods.}
}
\details{}
\value{}
\references{Atkinson, A.C. and Riani, M. (2000),  \emph{Robust Diagnostic Regression Analysis}, First Edition. New York: Springer, Chapters 2-3.}
\author{Originally written for S-Plus by:
Kjell Konis \email{kkonis@insightful.com} and Marco Riani \email{mriani@unipr.it} \cr
Ported to R by Luca Scrucca \email{luca@stat.unipg.it}}
\seealso{
\code{\link{fwdsco}}, \code{\link{fwdlm}}, \code{\link{fwdglm}}.  
}
\examples{
\dontrun{data(wool)}
\dontrun{mod <- fwdsco(y ~ x1 + x2 + x3, data = wool)}
\dontrun{plot(mod, plot.mle=FALSE)}
\dontrun{plot(mod, plot.Sco=FALSE, plot.Lik=TRUE)}
}
\keyword{robust}
\keyword{regression}
\keyword{models}

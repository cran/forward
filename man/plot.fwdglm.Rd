\name{plot.fwdglm}
\alias{plot.fwdglm}

\title{Forward Search in Generalized Linear Models}
\description{
This function plots the results of a forward search analysis in generalized linear models.}

\usage{
\method{plot}{fwdglm}(x, which.plots = 1:11, squared = FALSE, scaled =FALSE, 
     ylim = NULL, xlim = NULL, th.Res = 4, th.Lev = 0.25, sig.Tst =2.58, 
     sig.score = 1.96, plot.pf = FALSE, labels.in.plot = TRUE, \dots)
}
\arguments{
  \item{x}{a \code{"fwdglm"} object.}
  \item{which.plots}{select which plots to draw, by default all. Each graph is addressed by an integer: 
  \enumerate{\item deviance residuals
             \item leverages
             \item maximum deviance residuals
             \item minimum deviance residuals 
             \item coefficients
             \item t statistics, i.e. coef.est/SE(coef.est)
             \item likelihood matrix: deviance, deviance explained, pseudo R-squared, dispersion parameter
             \item score statistic for the goodness of link test
             \item forward Cook's distances 
             \item modified forward Cook's distances 
             \item weights used at each step of the forward search for the units included
}
}
  \item{squared}{logical, if \code{TRUE} plots squared deviance residuals.}
  \item{scaled}{logical, if \code{TRUE} plots scaled coefficient estimates.}
  \item{ylim}{a two component vector for the min and max of the y axis.}
  \item{xlim}{a two component vector for the min and max of the x axis.}
  \item{th.Res}{numerical, a threshold for labelling the residuals.}
  \item{th.Lev}{numerical, a threshold for labelling the leverages.}
  \item{sig.Tst}{numerical, a value used to draw the confidence interval on the plot of the t statistics.}
  \item{sig.score}{numerical, a value used to draw the confidence interval on the plot of the score test statistic.}
  \item{plot.pf}{logical, in case of binary response if \code{TRUE} graphs contain all the step of the forward search, otherwise only those in which there is no perfect fit.}
  \item{labels.in.plot}{logical, if \code{TRUE} units are labelled in the plots when required.}
  \item{...}{further arguments passed to or from other methods.}
}
%%\details{}
\references{Atkinson, A.C. and Riani, M. (2000),  \emph{Robust Diagnostic Regression Analysis}, First Edition. New York: Springer, Chapter 6.}
\author{Originally written for S-Plus by:
Kjell Konis \email{kkonis@insightful.com} and Marco Riani \email{mriani@unipr.it} \cr
Ported to R by Luca Scrucca \email{luca@stat.unipg.it}}
\seealso{
\code{\link{fwdglm}}, \code{\link{fwdlm}}, \code{\link{fwdsco}}.  
}
\examples{ 
\dontrun{
data(cellular)
mod <- fwdglm(y ~ as.factor(TNF) + as.factor(IFN), data=cellular, 
              family=poisson(log), nsamp=200)
summary(mod)
plot(mod)
}
}
\keyword{robust}
\keyword{regression}
\keyword{models}

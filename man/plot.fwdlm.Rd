\name{plot.fwdlm}
\alias{plot.fwdlm}
\title{Forward Search in Linear Regression}
\description{
This function plots the results of a forward search analysis in linear regression models.
}
\usage{
\method{plot}{fwdlm}(x, which.plots = 1:10, squared = FALSE, scaled = TRUE, 
     ylim = NULL, xlim = NULL, th.Res = 2, th.Lev = 0.25, sig.Tst = 2.58, 
     labels.in.plot = TRUE, \dots)
}
\arguments{
  \item{x}{a \code{"fwdlm"} object.}
  \item{which.plots}{select which plots to draw, by default all. Each graph is addressed by an integer: 
  \enumerate{\item scaled residuals
             \item leverages
             \item maximum studentized residuals
             \item minimum deletion residuals 
             \item coefficients
             \item statistics
             \item forward Cook's distances 
             \item modified forward Cook's distances 
             \item \eqn{S^2} values
             \item \eqn{R^2} values
}
}
  \item{squared}{logical, if \code{TRUE} plots squared residuals.}
  \item{scaled}{logical, if \code{TRUE} plots scaled coefficient estimates.}
  \item{ylim}{a two component vector for the min and max of the y axis.}
  \item{xlim}{a two component vector for the min and max of the x axis.}
  \item{th.Res}{numerical, a threshold for labelling the residuals.}
  \item{th.Lev}{numerical, a threshold for labelling the leverages.}
  \item{sig.Tst}{numerical, a value (on the scale of the t statistics) used to draw the confidence interval on the plot of the t statistics.}
  \item{labels.in.plot}{logical, if \code{TRUE} units are labelled in the plots when required.}
  \item{...}{further arguments passed to or from other methods.}
}
%%\details{}
%\value{}
\references{Atkinson, A.C. and Riani, M. (2000),  \emph{Robust Diagnostic Regression Analysis}, First Edition. New York: Springer, Chapters 2-3.}
\author{Originally written for S-Plus by:
Kjell Konis \email{kkonis@insightful.com} and Marco Riani \email{mriani@unipr.it} \cr
Ported to R by Luca Scrucca \email{luca@stat.unipg.it}}
\seealso{
\code{\link{fwdlm}}, \code{\link{fwdsco}}, \code{\link{fwdglm}}.  
}
\examples{
\dontrun{data(forbes)}
\dontrun{plot(forbes)}
\dontrun{mod <- fwdlm(Log.Pressure ~ Boiling.point, data=forbes)}
\dontrun{summary(mod)}
\dontrun{plot(mod)}
}
\keyword{robust}
\keyword{regression}
\keyword{models}



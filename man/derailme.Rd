\name{derailme}
\alias{derailme}
\docType{data}
\title{British Train Accidents.}
\usage{data(derailme)}
\description{
These data are obtained from Atkinson and Riani (2000), which is a simplified version of the data in Evans (2000). The outcome is the number of deaths that occurred in a train accident with a categorical covariate describing the type of rolling stock, and an exposure variable giving the annual distance travelled by trains in that year, and was originally analysed using a Poisson model.  As the data does not include observations with zero deaths, it will be analysed here as a zero-truncated Poisson with an offset of log of the train distance. The \code{derailme} data frame has 67 rows and 5 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{Month}{Month of accident}
    \item{Year}{Year of accident}
    \item{Type}{Type of rolling stock 1=Mark 1 train, 2=Post-Mark 1 train, 3=Non-passenger}
    \item{TrainKm}{Amount of traffic on the railway system (billions of train km)}
    \item{y}{Number of deaths that occurred in the train accident}
  }
}
%\details{}
\source{Atkinson and Riani (2000)}
\references{Atkinson, A.C. and Riani, M. (2000),  \emph{Robust Diagnostic Regression Analysis}, First Edition. New York: Springer, Table A.18

Evans, A. W. (2000). Fatal train accidents on Britain's mainline railways. Journal Royal Statistical Society A, 163(1), 99-119.}
\keyword{datasets}

\name{fwd.combn}
\alias{fwd.combn}
\alias{fwd.nCm}

\title{Generate all combinations of elements of x taken m at a time}
\description{
Generate all combinations of the elements of x taken m at a time.  If x is a positive integer, returns all combinations of the elements of seq(x) taken m at a time.
If argument \code{fun} is not null, applies a function given by the argument to each point.  
If simplify is \code{FALSE}, returns a list; else returns a vector or an array. Optional arguments \code{...} are passed unchanged to the function given by argument \code{fun}, if any.
}
\usage{
fwd.combn(x, m, fun = NULL, simplify = TRUE, \dots)
fwd.nCm(n, m, tol = 1e-08)
}
\arguments{
  \item{x}{a vector or a single value.}
  \item{n}{a positive integer.}
  \item{m}{a positive integer.}
  \item{fun}{a function to be applied to each combination.}
  \item{simplify}{logical, if \code{TRUE} returns a vector or an array, otherwise a list.}
  \item{tol}{optional, tolerance value.}
  \item{...}{optional arguments passed to \code{fun}.}
}
%\details{}
\value{Returns a vector or an array if \code{simplify = TRUE}, otherwise a list.
}
\references{Nijenhuis, A. and Wilf, H.S. (1978) \emph{Combinatorial 
Computers and Calculators}. NY: Academic Press.}
\author{Scott Chasalow}
\note{Renamed by Kjell Konis for inclusion in the Forward Library 11/2002} \examples{
fwd.combn(letters[1:4], 2)
fwd.combn(10, 5, min)      # minimum value in each combination
# Different way of encoding points:
fwd.combn(c(1,1,1,1,2,2,2,3,3,4), 3, tabulate, nbins = 4)
# Compute support points and (scaled) probabilities for a
# Multivariate-Hypergeometric(n = 3, N = c(4,3,2,1)) p.f.:
table(t(fwd.combn(c(1,1,1,1,2,2,2,3,3,4), 3, tabulate, nbins=4)))
}
\keyword{math}

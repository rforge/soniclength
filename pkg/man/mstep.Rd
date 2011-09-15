\name{mstep}
\alias{mstep}
\title{
  M-step to maximize theta
}
\description{
  This is a utility function for \code{\link{maxEM}}
}
\usage{
mstep(x, theta, phi)
}
\arguments{
  \item{x}{
   a zero-one indicator matrix whose rows correspond to unique lengths with rownames
    indicating those lengths
}
  \item{theta}{
a vector of the abundance estimates. \code{length(theta)==ncol(x)}
}
  \item{phi}{a vector of the probabilities of sonicant lengths. \code{length(phi)==nrow(x)}
}
}
\details{
  The M-step for theta is computed. Probably, there is no need to use
  this function directly, but just in case it is here. 
}
\value{
  a vector like the input \code{theta}
}
\author{
Charles C. Berry
}
\seealso{
\code{\link{maxEM}}
}
\examples{

mat <- diag(10)
mat[ ,10 ] <- 1.0
phi1 <- prop.table( rep(1,10))
theta1 <- 1:10
sonicLength:::mstep( mat, theta1,phi1)
}

\keyword{ optimize }

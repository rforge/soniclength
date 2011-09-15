\name{maxEM}
\alias{maxEM}
\title{ maximum likelihood estimates relative abundances}
\description{
  From information about the lengths of sonicants of integration sites,
  infer the relative abundances of different clones and the distributon
  of sonicant lengths
}
\usage{
maxEM(slmat, theta.var=FALSE, phi.update=NULL,
                  phi.deriv=NULL, lframe = NULL, glm.frm = NULL, iter.control=NULL, \dots ) 
}
\arguments{
  \item{slmat}{    
    a matrix whose rows correspond to unique lengths with rownames
    indicating those lengths
  }
  \item{theta.var}{logical, return variance of theta estimates?}
  \item{phi.update}{
    a function of an object like \code{slmat} that returns estimtes of
    phi - a default vesrion is invoked if none is provided
  }
  
  \item{ phi.deriv }{ function of theta and phi that returns derivatives
    of phi wrt beta (its parameters) }
  
  \item{ lframe }{ a \code{data.frame} which will be used to estimate
    \code{phi}, the supplied function \code{phi.update} must know what to do with this
    arg or it will be ignored}
  \item{ glm.frm }{ a formula like \code{y ~ bs(x,knots=c(50,100))} to
    fit \code{phi} }
  \item{iter.control}{
    a list of default values for iteration control - see \code{\link{maxEM.iter.control}}
  }
  \item{ \dots }{ possibly other args to pass to \code{phi.update} }
}
\details{
  The EM method is used to infer the relative abundances of different sites.
}
\value{
  
  \item{theta }{ a vector of the abundance estimates}
  \item{phi }{ a vector of the probabilities of sonicant lengths}
  \item{call}{ the call used }
}
\author{
  Charles C. Berry \email{ccberry@users.r-forge.r-project.org}
}
\seealso{
  \code{\link{Ey.given.x}}
}
\examples{
mat0 <- matrix(0,nr=48,nc=140)
vals <- c(rep(1,100),2:40,100)
mat1 <- sapply( vals, function(x) as.numeric(is.element(1:200 ,rgeom(x,.02))))
mat <- rbind(mat0,mat1)
posVals <- colSums(mat) > 0
vals <- vals[ posVals ]
mat <- mat[, posVals ]
rownames(mat) <- 1:nrow(mat)
res <- maxEM(mat)
matplot( vals, cbind(res$theta, colSums(mat)), pch=1:2,
        xlab='original values', ylab='estimated values',
        main='Simulated Sonicants and Estimates')
legend( "bottomright", pch=1:2, col=1:2,
        legend=c(expression(hat(theta)[j]),expression(sum(y[ij],i))))
abline(a=0,b=1,col='gray')
}
\keyword{ models }


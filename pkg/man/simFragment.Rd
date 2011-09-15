
\name{Fragment Distribution}
\alias{dfrag}
\alias{qfrag}
\alias{rfrag}
\alias{pfrag}
\title{Simple Fragment Length Distribution}
\description{ Density, distribution function, quantile function and random
  generation for a simple parametric distribution for fragments lengths
  (given by conditioning a geometric distribution on whether the length
  can be recovered).
}
\usage{
dfrag( x, loc=45, lscale=2.5, rate=0.02, maxx=qgeom(1-1e-7,rate) )
pfrag( q, loc=45, lscale=2.5, rate=0.02, maxx=qgeom(1-1e-7,rate), lower.tail=TRUE )
qfrag( p, loc=45, lscale=2.5, rate=0.02, maxx=qgeom(1-1e-7,rate), lower.tail=TRUE )
rfrag( n, loc=45, lscale=2.5, rate=0.02, maxx=qgeom(1-1e-7,rate) )
  }
\arguments{
  \item{x,q}{ vector of quantile (of lengths).}
  \item{n}{ number of lengths to sample.}
  \item{p}{vector of probabilities }
  \item{ loc }{ vector of locations of logistic for prob of recovery.}
  \item{ lscale }{ vector of scales of logistic for prob of recovery.}
  \item{ rate }{ probability for geometric probability for fragment lengths.}
  \item{ maxx }{ integer; largest value of x to bother with.}
  \item{lower.tail}{ logical; if TRUE (default), probabilities are
    \eqn{P[X \le x]} otherwise, \eqn{P[X > x]}.}
  
}
\value{
  \code{dfrag} gives the mass function,
  \code{pfrag} gives the distribution function,
  \code{qfrag} gives the quantile function, and
  \code{rfrag} generates random deviates.
}
\details{ The mass function is given by
  \code{plogis(x,loc,lscale)*dgeom(x,rate) / denom }, where \code{denom}
  scales the result to sum to 1.0 in the range \code{0:maxx}. The other
  functions all depend on this in the obvious manner. If \code{maxx} is
  not large enough a warning may be issued, but even without this warning
  the results may be slightly innaccurate if
  \code{pgeom(maxx,rate,lower.tail=FALSE)} is non-negligible.
}
\seealso{\code{\link{pgeom}}, \code{\link{sample}}
}
\examples{
  
  plot( 0:300, table(factor(rfrag(2000),0:300)) )
  lines( 0:300, 2000*dfrag(0:300) )
  
  }
\author{Charles C. Berry \email{ccberry@users.r-forge.r-project.org}}
\keyword{distribution}



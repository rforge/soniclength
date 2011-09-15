\name{Ey.given.x}
\alias{Ey.given.x}
\alias{pr.y.given.x}
\title{
E-Step for Abundance Estimation
}
\description{
  Take the E-step of the EM algorithm for estimating the number of
  sonicants in a sample
}
\usage{
Ey.given.x(x, theta, phi)
pr.y.given.x(x, theta, phi, kmax=20 )
}
\arguments{
  \item{x}{
   a zero-one indicator matrix whose rows correspond to unique lengths with rownames
    indicating those lengths
  }
  \item{theta}{ a vector of the abundance estimates. \code{length(theta)==ncol(x)}}
  \item{phi }{ a vector of the probabilities of sonicant
    lengths. \code{length(phi)==nrow(x)}}
  \item{kmax}{ highest count to bother with (all higher values are
    globbed together in the result) }
}

\details{ Supposing Poisson sampling of sonicants,
  \code{Ey.given.x(x,theta,phi)[i,j]} gives the expected value of the
  number of sonicants given that \code{x[i,j]} distinct sonicant lengths
  were observed. \code{pr.y.given.x(x,theta,phi.kmax)[k,j]} gives the
  probability of \code{k} sonicants (censored at \code{kmax+1}) of
  insertion site \code{j} }

\value{
  \code{Ey.given.x()} is a double matrix of the same dimension as
  \code{x}. \code{pr.y.given.x(...,kmax)} is a double matrix of
  dimension \code{c( kmax+1, ncol(x) )} 
}
\author{
  Charles C. Berry \email{ccberry@users.r-forge.r-project.org}
}
\examples{

mat <- diag(10)
mat[ ,10 ] <- 1.0
phi1 <- prop.table( rep(1,10))
theta1 <- 1:10
Ey.given.x( mat, theta1, phi1 )
pr.mat <- pr.y.given.x( mat, theta1, phi1 )
## Estimate Seen plus Unseen sites
popsize.chao <- function(tab) sum(tab)+tab[1]*(tab[1]-1)/(2*(tab[2]+1))
## evaluate at expected counts
popsize.chao( rowSums(pr.mat) ) 
## average randomly sampled counts
cnt.samp <- function(x) sample( seq_along(x) , 1 ,pr=x )
mean(replicate(100,popsize.chao( table(apply(pr.mat,2, cnt.samp) ))))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ models }

\name{simSonic}
\alias{simSonic}
\title{Simulate Sonicated Data}

\description{ Sonication and Processing of DNA containing retroviral
  sequences yields genomic locations of retroviral insertion sites and a
  set of associated fragment lengths. The simulation depends on the
  expected number of fragments from each site and the distribution of
  lengths. }

\usage{simSonic( theta, phi )
}

\arguments{

  \item{theta}{a vector of expected number of fragments from each
  site. If the vector has unqiue names, these will be used to label the
  locations}

  \item{phi}{ a vector of probabilities (or a list containing a vector
  named \code{phi}) whose names are like \code{'rep len'}, where
  \code{'rep'} defines the replicate and \code{'len'} defines the
  sonicant length . More than one replicate can be used, In any case
  \code{1-exp(-phi\%o\%theta)} determines the probability of
  observations in the different locaitons, of the different lengths, and
  in different replicates}
}
\value{a \code{data.frame} with columns \code{locations},
  \code{lengths}, and \code{replicates}. See \code{\link{estAbund}} for
  more details.
}
\details{ This object can provide the arguments used by \code{estAbund}
}
\examples{

theta <- seq(0.5,20.5,by=0.5)
phi <- prop.table(1:10)
names(phi) <- paste( 1 , 51:60 )
res <- simSonic( theta, phi )
head(res)
tail(res)
summary(res)
}
\author{Charles C. Berry \email{ccberry@users.r-forge.r-project.org}}
\keyword{Distributions}

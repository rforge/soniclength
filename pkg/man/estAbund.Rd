\name{estAbund}
\alias{estAbund}
\title{
  estimate Abundances from sonicated samples
}
\description{
  When one or more replicate samples are sonicated and the lengths for each
  integration site are recorded, it is of interest to estimate actual
  number of sonicants allowing for coincidentally equal lengths. A
  likelihood approach is used  here. 
}
\usage{
estAbund(locations, lengths, replicates = NULL, jackknife = F, kmax=0,
min.length = 20, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{locations}{
    a vector of IDs for distinct locations
}
  \item{lengths}{
    a vector of the corresponding lengths
}
  \item{replicates}{
    an optional vector of the replicate sample ID
}
  \item{jackknife}{
    Whether to do leave-one-out jackknife samples over the replicates
  }
  \item{kmax}{highest count to bother with when computing mass function
    for counts. All higher values are
    globbed together in the result. If \code{kmax==0} don't compute }
  \item{min.length}{Least length expected for a fragment.  Shorter
    lengths will not be permitted}
  \item{\dots}{
    Other arguments that may be passed along to functions that do the
    real work.
}
}
\details{
  This is a wrapper function for \code{\link{maxEM}} so study that
  function to see what is going on.
}
\value{
  a list with components

  
  \item{theta}{ estimated abundances }
  \item{phi}{  estimated bin probabilities}
  \item{var.theta}{ variances of \code{theta} }
  \item{iter}{ number of iterations till convergence was achieved }
  \item{call}{ the function call }
  \item{lframe}{ the \code{data.frame} used to construct the estimate of
  \code{phi}}
  \item{obs}{ the observed counts of distinct lengths }
  \item{jackknife}{ a list of calls to \code{ maxEM } with one replicate
    omitted in each}
  \item{data}{ a \code{data.frame} with columns
  \code{locations},\code{lengths}, and \code{replicates} (if supplied) }
}
\author{
Charles C Berry \email{ccberry@users.r-forge.r-project.org}
}
\seealso{
  \code{\link{maxEM}}
  \code{\link{phi.update.lframe}}
  The package vignette:Estimating Abundances with sonicLength
}
\references{

     Estimating abundances of retroviral insertion sites 
     from DNA fragment length data. Berry CC, Gillet NA, 
     Melamed A, Gormley N, Bangham CR, Bushman FD.
     Bioinformatics; 2012 Mar 15;28(6):755-62.  


  
  }
\keyword{  models }


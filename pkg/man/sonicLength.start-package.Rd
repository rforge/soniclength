\name{sonicLength-package}
\alias{sonicLength-package}
\alias{sonicLength}
\docType{package}
\title{
  Calibration of Number of Length Variants
}
\description{
  
  Estimate the number of fragments produced by sonication of integration
  sites in DNA (as arise in gene therapy or in retroviral infections)
  from tallies of the number of distinct lengths. See the Berry et al. reference
  where the experimental setting and algorithm are spelled out in detail.

}
   
\details{
\tabular{ll}{
Package: \tab sonicLength\cr
Type: \tab Package\cr
License: \tab see file LICENSE distributed with this software\cr
LazyLoad: \tab yes\cr
}

This package has the necessary utilities to provide a function that will
do calibration of the number of distinct lengths (for an integration
site recovered via sonication) to estimate the number of distinct
sonication fragments that underlie the observed number of lengths.


}

\references{
  
  The reference to the algorithm is:
  
     Estimating abundances of retroviral insertion sites 
     from DNA fragment length data. Berry CC, Gillet NA, 
     Melamed A, Gormley N, Bangham CR, Bushman FD.
     Bioinformatics; 2012 Mar 15;28(6):755-62.  


Some applications that illustrate use of this method are found here:

Gillet, Nicolas A., et al. "The host genomic environment of the provirus
determines the abundance of HTLV-1 infected T-cell clones." Blood 117.11
(2011): 3113-3122.

Maldarelli, F., et al. "Specific HIV integration sites are linked to
clonal expansion and persistence of infected cells." Science 345.6193
(2014): 179-183.


}
\author{
Charles C. Berry

Maintainer: <ccberry@ucsd.edu>
}

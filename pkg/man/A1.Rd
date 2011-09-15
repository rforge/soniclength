\name{A1}
\alias{A1}
\docType{data}
\title{
  HTLV-1 Fragment Length Data
}
\description{
  A sample from a patient with HTLV-1 was analyzed as described in
  Gillet et al (2001). 
}
\usage{data(A1)}
\format{
  A data frame with 6176 observations on the following 3 variables.
  \describe{
    \item{\code{locations}}{a factor with levels \code{01 F 101480450}
      \ldots \code{X R 99972891} indicating the genomic sites at which
      insertions were detected}
    \item{\code{lengths}}{a numeric vector of fragment lengths}
    \item{\code{replicates}}{a numeric vector giving replicate IDs}
  }
}
\details{
For each replicate, the unique combinations of the genome location at which an insertion
site was detected and the length(s) of the fragment(s) sequenced were
noted. There is one such row in he data.frame for each such combination.
}
\source{
See Gillet et al 2011 for more details.
}
\references{
Gillet, N.A., Malani, N., Melamed, A., Gormley, N., Carter, R., Bentley, D.,
  Berry, C., Bushman, F.D., Taylor, G.P., and Bangham, C.R. (2011).
 The host genomic environment of the provirus determines the
  abundance of HTLV-1-infected T-cell clones.
  \emph{ Blood } 117, 3113-3122.
}
\examples{
data(A1)
str(A1)
}
\keyword{datasets}

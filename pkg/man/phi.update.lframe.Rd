\name{phi.update.lframe}
\alias{phi.update.lframe}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  estimate phi 
}
\description{
  Estimate phi in a flexible manner as guided by \code{lframe} - usually
  involving multiple strata, and allowing for formulas other than the
  default choice
}
\usage{
phi.update.lframe(obj, return.fit = FALSE, lframe, glm.frm = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{
    a matrix whose rowSums are used to estimate phi
}
  \item{return.fit}{ logical - 
    the result of the fit should be returned instead of phi
}
\item{lframe}{
  
  A \code{data.frame} with columns \code{y}, \code{x}, \code{strata},
  \code{orig} (or matching those in \code{glm.frm}) and for which
  \code{rownames(lframe)[lframe$orig]} match the rownames of \code{obj}.

}
  \item{glm.frm}{
    a formula. If omitted \code{ y ~ bs( x, knots= c(50,100) ) } will be used.
}
  \item{\dots}{
    curently not used
}
}
\details{
  fitting phi - the probabilities that a sonicant lands in a particular
  bin - is crucial to estimating theta, then number of sonicants when
  more than one lans in a bin. bins may be defined by sonicant lengths
  when there is just one sample. When there are multiple samples, then
  one may wish to estimate phi separately for each
  one. \code{lframe$strata} indicates separate sample and the default
  \code{glm.frm} will fit each one separately. 
}
\value{
  a vector whose sum is 1.0 with one element for each row of obj
}
\author{
Charles C. Berry \email{ccberry@users.r-forge.r-project.org}
}
\seealso{
  \code{\link{maxEM}}
}
\keyword{ manip }


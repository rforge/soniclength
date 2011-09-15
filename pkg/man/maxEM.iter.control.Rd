\name{maxEM.iter.control}
\alias{maxEM.iter.control}
\title{
  iteration controls
}
\description{
  Set parameters for control of iteration in \code{maxEM}
}
\usage{
maxEM.iter.control(min.reps = 3, max.reps = 2000, max.abs.le = 0.1,
max.rel.le = 1e-05, phi.min=.Machine$double.eps)
}
\arguments{
  \item{min.reps}{
    a positive integer
}
  \item{max.reps}{
    a positive integer
}
  \item{max.abs.le}{
    a smallish double
}
  \item{max.rel.le}{
    a tiny double
  }
  \item{ phi.min }{ a smallish double }
}
\details{
  Most users should not need to tinker with these settings
}
\value{
  a list such as \code{formals(maxEM.iter.control)}
}
\author{
Charles C. Berry \email{ccberry@users.r-forge.r-project.org}
}
\keyword{ utilities }


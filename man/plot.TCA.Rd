\name{plot.TCA}
\alias{plot.TCA}
\title{
Plot function for S3 class "TCA"
}
\description{
Plot sparsity level information and projected PCs from the TCA
}
\usage{
\method{plot}{TCA}(x, pc = NULL, ...)
}
\arguments{
  \item{x}{
An object with S3 class \code{"TCA"} 
}
  \item{pc}{
pick two PCs to visualize the projected principal components. The default value is c(1,2). 
}
  \item{\dots}{
System reserved (No specific usage)
}
}
\author{
Fang Han, Han Liu \cr
Maintainer: Fang Han<fhan@jhsph.edu>
}
\seealso{
\code{\link{TCA}}
}
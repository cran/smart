\name{plot.gnsc}
\alias{plot.gnsc}
\title{
Plot function for S3 class "gnsc"
}
\description{
Plot sparsity level information and heatmap from the gnsc.train
}
\usage{
\method{plot}{gnsc}(x, which.lambda = NULL, ...)
}
\arguments{
  \item{x}{
An object with S3 class \code{"gnsc"} 
}
  \item{which.lambda}{
pick one lambda to visualize the intensity heatmap. The default value is median(lambda). 
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
\code{\link{gnsc.train}}
}
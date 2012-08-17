\name{TCE}
\alias{TCE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Transellptical Correlation Estimation
}
\description{
A function to conduct Transellptical Correlation  Estimation
}
\usage{
TCE(x, method, nlambda = NULL, lambda.min.ratio = NULL, lambda = NULL, verbose = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
   The \code{n} by \code{d} data matrix or \code{d} by \code{d} covariance matrix from the input  
}
  \item{method}{
   Method to be used to estimating the correlation matrix with 5 options: \code{pearson, ns, npn, spearman} 
   and \code{kendall}. \code{kendall} as default. 
}
  \item{nlambda}{
   The number of regularization/thresholding paramters. The default value is 20.    
}
  \item{lambda.min.ratio}{
   The largest sparsity level for the estimated graphs.  The default valye is 0.05. 
}
  \item{lambda}{
   A sequence of positive numbers for conducting thresholding.  
}
  \item{verbose}{
  If \code{verbose = FALSE}, tracing information printing is disabled. The default value
is \code{TRUE}.
}
}
\details{
The correlation graph is estimated by correlation cut-off based on the given thresholding level.    
}
\value{
An object with S3 class \code{"TCE"} is returned:  
\item{cov.input}{
An indicator of the sample covariance. 
}
  \item{path}{
A list of \code{k} by \code{k} adjacency matrices of estimated graphs as a graph path corresponding to \code{lambda}.
}
  \item{sparsity}{
The sparsity levels of the graph path.
}
  \item{method}{
The method used in the correlation graph estimation stage.
}
  \item{lambda}{
The sequence of thresholding parameters used.
}
}
\references{
1.Han Liu, Fang Han, Ming Yuan, John Lafferty, Larry Wasserman. High dimensional
semiparametric gaussian copula graphical models. \emph{Annals of Statistics}, to apear. \cr 
2.Tuo Zhao and Han Liu. HUGE: A Package for High-dimensional Undirected Graph Estimation. \emph{Technical Report}, Carnegie Mellon University, 2010\cr
}
\author{
Fang Han, Han Liu \cr
Maintainer: Fang Han<fhan@jhsph.edu>
}
\examples{
require(huge)
L = huge.generator(n = 200, d = 80, graph = "hub")
out = TCE(L$data,method="kendall")
out
plot(out)
}


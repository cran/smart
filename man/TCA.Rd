\name{TCA}
\alias{TCA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Transelliptical Component Analysis
}
\description{
A function to conduct Transelliptical Component Analysis
}
\usage{
TCA(x, K, para, method = "kendall", algorithm = "tp", max.iter = 200, verbose = TRUE, eps.conv = 0.001)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
   The \code{n} by \code{d} data matrix or \code{d} by \code{d} covariance matrix from the input  
}
  \item{K}{
   Number of components
}
  \item{para}{
  A vector of length K, indicating the number of sparse loadings. 
}
  \item{method}{
   Method to be used to estimating the correlation matrix with 5 options: \code{pearson, ns, npn, spearman} 
   and \code{kendall}. \code{kendall} as default. 
}
  \item{algorithm}{
   Algorithm to be used to obtain sparse loadings with 3 options: \code{sp, spca} and \code{pmd}. \code{tp} as default.  
}
  \item{max.iter}{
Maximum number of iterations.
}
  \item{verbose}{
  If \code{verbose = FALSE}, tracing information printing is disabled. The default value
is \code{TRUE}.
}
  \item{eps.conv}{
Convergence criterion.
}
}
\details{
PCA and Sparse PCA is sensitive to modeling assumption, outliers, missing values data dependency. We propose an alternative
way using rank-based methods including \code{ns, npn, spearman} and \code{kendall} to approximate the correlation matrix.
Details are refered to Han,F. and Liu,H. (2012). Three sparse PCA algorithms are used: truncated power (Yuan, X. and Zhang, T. (2011)),
spca(Zou,H., Hastie, T., and Tibshirani, R. (2006)) and pmd (Witten, D., Tibshirani, R., and Hastie, T. (2009)). 
}
\value{
\item{cov.input}{
An indicator of the sample covariance. 
}
\item{loadings}{
The loadings of the sparse PCs.
}
\item{pev}{
An indicator of the sample covariance. 
}
\item{PC}{
Projected PCs. existing if \code{cov.input=TRUE}. 
}
\item{method}{
The method used in estimating the correlation matrix.
}  
\item{algorithm}{
The algorithm used in obtaining the sparse loadings. 
}
\item{K}{
The number of components. 
}
}


\references{
1. Witten, D., Tibshirani, R., and Hastie, T.,  A penalized matrix decomposition, with
applications to sparse principal components and canonical correlation analysis. \emph{Biostatistics} \cr
2. Yuan, X. and Zhang, T. (2011). Truncated power method for sparse eigenvalue problems. \emph{Techinal Report}, 
Rutgers, 2011.
3. Zou, H., Hastie, T. and Tibshirani, R. Sparse principal component analysis. \emph{JCGS}, 2006. 
}
\author{
Fang Han, Han Liu \cr
Maintainer: Fang Han<fhan@jhsph.edu>
}

\examples{
x=matrix(rnorm(20000),100)
fit=TCA(x,K=6, para=c(10,10,10,5,5,5))
fit
plot(fit)
}


\name{smart-package}
\alias{smart-package}
\alias{smart}
\docType{package}
\title{
Sparse Multivariate Analysis via Rank Transformation
}
\description{
A package for Sparse Multivariate Analysis via Rank Transformation
}
\details{
\tabular{ll}{
Package: \tab smart\cr
Type: \tab Package\cr
Version: \tab 1.0.0\cr
Date: \tab 2012-08-17\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}

The package "smart" contain three main functions: \cr
(i) "gnsc.train" and "gnsc.cv" for conducting Group Nearest Shrunken Centroids. \cr
(ii) "TCA" for conducting Transeeliptical Component Analysis. \cr
(iii) "TCE" for conducting Transellipitcal Correlation Estimation.
}
\author{
Fang Han, Han Liu \cr
Maintainer: Fang Han<fhan@jhsph.edu>
}
\references{
1.Robert Tibshirani, Trevor Hastie, Balasubramanian Narasimhan, and Gilbert Chu. Diagnosis of multiple cancer types by shrunken centroids of gene expression \emph{PNAS}, 99: 6567-6572. \cr
2. Han Liu, Fang Han, Ming Yuan, John Lafferty, Larry Wasserman. High dimensional
semiparametric gaussian copula graphical models. \emph{Annals of Statistics}, to apear.  \cr
3. Witten, D., Tibshirani, R., and Hastie, T.,  A penalized matrix decomposition, with
applications to sparse principal components and canonical correlation analysis. \emph{Biostatistics} \cr
4.Juemin Yang, Fang Han, Rafa Irizarry, and Han Liu. Gene Context Analysis on Large-scale Genomic Data. \emph{Technical Report}, Johns Hopkins University, 2012\cr
5. Yuan, X. and Zhang, T. (2011). Truncated power method for sparse eigenvalue problems. \emph{Techinal Report}, 
Rutgers, 2011.  \cr
6.Tuo Zhao and Han Liu. HUGE: A Package for High-dimensional Undirected Graph Estimation. \emph{Technical Report}, Carnegie Mellon University, 2010\cr
7. Zou, H., Hastie, T. and Tibshirani, R. Sparse principal component analysis. \emph{JCGS}, 2006. 
}
\seealso{
\code{\link{TCA}}, \code{\link{TCE}}, \code{\link{gnsc.train}}, and \code{\link{gnsc.cv}}
}

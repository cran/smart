\name{gnsc.cv}
\alias{gnsc.cv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A function to cross-validate the Group Nearest Shrunken Centroid Classifier
}
\description{
A function to cross-validate the Group Nearest Shrunken Centroid Classifier produced by gnsc.train
}
\usage{
gnsc.cv(fit, x, y = NULL, z = NULL, nfold = NULL, folds = NULL, verbose = T)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fit}{
  The result of a call to gnsc.train
}
  \item{x}{
  The test data matrix (variables in the rows, samples in the columns).
}
  \item{y}{
  The test class labels for samples, must have the same length as the column length of \code{x}. 
}
  \item{z}{
  The test class labels for variables, must have the same length as the row length of \code{x}. 
}
  \item{nfold}{
  Number of cross-validation folds. The default value is the smallest class size.
}
  \item{folds}{
  The fold lables for each sample, must have the same length as \code{y} and \code{max(folds)=nfold}.  
  The default value is \code{sample(1:nfold,n,replace=T)}, here \code{n} is the sample size.  
}
  \item{verbose}{
  If \code{verbose = FALSE}, tracing information printing is disabled. The default value is \code{TRUE}.
}
}
\details{
gnsc.cv carries out a cross-validation for Group Nearest Shrunken Centroid Classifier.
}
\value{
An object with S3 class "gnsccv" is returned:
\item{lambda}{
A vector of the thresholds tried in the shrinkage
}
\item{nlambda}{
The number of thresholds tried in the shrinkage
}
\item{lambda.min}{
The index of the threshold which achieves the lowest cross-validation error
}
\item{errors}{
The number of cross-validation errors for each threshold value
}
  \item{nonzero}{
The number of variables that survived the thresholding
}
  \item{Thresh.mat}{
A list of estimated \code{tilde{mu}_{mk}}. See Yang, et.al (2012) for details
}
}
\references{
1.Juemin Yang, Fang Han, Rafa Irizarry, and Han Liu. Gene Context Analysis on Large-scale Genomic Data. \emph{Technical Report}, Johns Hopkins University, 2012\cr
2.Robert Tibshirani, Trevor Hastie, Balasubramanian Narasimhan, and Gilbert Chu. Diagnosis of multiple cancer types by shrunken centroids of gene expression \emph{PNAS}, 99: 6567-6572.
}
\author{
Fang Han, Han Liu \cr
Maintainer: Fang Han<fhan@jhsph.edu>
}
\seealso{
\code{\link{gnsc.train}}
}
\examples{
set.seed(120)
x <- matrix(rnorm(1000*20),ncol=20)
y <- sample(c(1:4),size=20,replace=TRUE)
z <- sample(c(1:10),size=1000,replace=TRUE)
fit=gnsc.train(x, col.struc=y, row.struc=z,lambda.max=5, nlambda=20)
fit
plot(fit)
fit.cv=gnsc.cv(fit,x,y,z)
fit.cv
plot(fit.cv)
}


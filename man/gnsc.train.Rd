\name{gnsc.train}
\alias{gnsc.train}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
gnsc.train
}
\description{
A function to conduct the Group Nearest Shrunken Centroid Classifier
}
\usage{
gnsc.train(x, col.struc = NULL, row.struc = NULL, standardize = T, nlambda = NULL, lambda.max = 10, lambda = NULL, verbose = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
  The train data matrix (variables in the rows, samples in the columns).
}
  \item{col.struc}{
  The train class labels for samples, must have the same length as the column length of \code{x}. 
}
  \item{row.struc}{
  The train class labels for variables, must have the same length as the row length of \code{x}. 
}
  \item{standardize}{
  Logical value to determine whether to standardize the data. The defult value is TRUE.
}
  \item{nlambda}{
  The number of thresholding parameters. The default value is 10.  
}
  \item{lambda.max}{
  The largest lambda value, given the thresholding parameters lambda is not provided by the user.
}
  \item{lambda}{
  A sequence of positive numbers to control to determine the thresholding level. 
}
  \item{verbose}{
  If \code{verbose = FALSE}, tracing information printing is disabled. The default value
is \code{TRUE}.
}
}
\details{
gnsc.train conducts a Group Nearest Shrunken Centroid Classifier.
}
\value{
An object with S3 class "gnsc" is returned:
\item{lambda}{
A vector of the thresholds tried in the shrinkage
}
\item{nlambda}{
The number of thresholds tried in the shrinkage
}
\item{yhat}{
A matrix with the estimated sample lables for each thresholding level in each column 
}
\item{errors}{
The number of estimated errors for each threshold value
}
\item{nonzero}{
The number of variables that survived the thresholding for each thresholding value
}
\item{\dots}{
System reserved (No specific usage)
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
\code{\link{gnsc.cv}}
}
\examples{
set.seed(120)
x <- matrix(rnorm(1000*20),ncol=20)
y <- sample(c(1:4),size=20,replace=TRUE)
z <- sample(c(1:10),size=1000,replace=TRUE)
fit=gnsc.train(x, col.struc=y, row.struc=z,lambda.max=5, nlambda=20)
fit
plot(fit)
}

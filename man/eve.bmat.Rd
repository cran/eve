\name{eve.bmat}
\alias{eve.bmat}

\title{Return the bounds matrix B}

\description{This function returns the matrix B
  allowing to compute the EVE measure eigenvalues.}

\usage{eve.bmat(mmat)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
}

\value{ This function returns the matrix B which
 eigenvalues are used in the EVE measure.
}

\references{Dembele D. (2025), The Eigenvalues Entropy as a
            Classifier Evaluation Measure. arXiv:2511.01904}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   eve.bmat(mmat)
}

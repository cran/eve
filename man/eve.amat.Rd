\name{eve.amat}
\alias{eve.amat}

\title{Return the bounds matrix A}

\description{This function returns the matrix A
  allowing to get the eigenvalues bounds.}

\usage{eve.amat(mmat)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
}

\value{ This function returns the matrix which
allows to compute the lower and the upper eigenvalues.
}

\references{Dembele D. (2025), The Eigenvalues Entropy as a
            Classifier Evaluation Measure. arXiv:2511.01904}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   eve.amat(mmat)
}

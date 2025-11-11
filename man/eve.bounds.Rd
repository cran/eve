\name{eve.bounds}
\alias{eve.bounds}

\title{Eigenvalues bounds calculation}

\description{This function computes a lower and an upper bound
  values for the eigenvalues associated with a confusion matrix
  transformation.}

\usage{eve.bounds(mmat)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
}

\value{ This function returns a vector which entries are
  a lower and an upper bound for the eigenvalues associated
  with a confusion matrix transformation. The range of these
  bounds is small (<2) for a good classifier.
}

\references{Dembele D. (2025), The Eigenvalues Entropy as a
            Classifier Evaluation Measure. arXiv:2511.01904}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   eve.bounds(mmat)
}

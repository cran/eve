\name{eve}
\alias{eve}

\title{Eigenvalue entropy calculation}

\description{This function computes the eigenvalues entropy
  for a binary or a multiclass confusion matrix.}

\usage{eve(mmat)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
}

\value{ This function returns the eigenvalue entropy,
a numerical value for evaluating a classifier.
}

\references{Dembele D. (2025), The Eigenvalues Entropy as a
            Classifier Evaluation Measure. arXiv:2511.01904}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   eve(mmat)
}

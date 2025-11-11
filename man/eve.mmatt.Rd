\name{eve.mmatt}
\alias{eve.mmatt}

\title{Modified confusion matrix calculation}

\description{This function computes a modified confusion matrix
  for a binary or a multiclass problem.}

\usage{eve.mmatt(mmat)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
}

\value{ This function returns a modified confusion matrix which
can be used to improve a measure sensitive to imbalanced ratio.
}

\references{Dembele D. (2025), The Eigenvalues Entropy as a
            Classifier Evaluation Measure. arXiv:2511.01904}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   eve.mmatt(mmat)
}

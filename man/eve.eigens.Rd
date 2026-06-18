\name{eve.eigens}
\alias{eve.eigens}

\title{Eigenvalues used in the EVE measure}

\description{This function give access to the
  eigenvalues associated with a confusion matrix
  transformation.}

\usage{eve.eigens(mmat)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
}

\value{ This function returns the eigenvalues
  used to obtain the EVE evaluation measure. For a
  binary problem, they can be used to obtain the AUC or the
  Gini index (coefficient).
}

\references{Dembele D. (2025), The Eigenvalues Entropy as a
            Classifier Evaluation Measure. arXiv:2511.01904}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   eve.eigens(mmat)
}

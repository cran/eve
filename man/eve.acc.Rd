\name{eve.acc}
\alias{eve.acc}

\title{Accuracy calculation}

\description{This function computes the accuracy for a binary
or amulticlass confusion matrix.}

\usage{eve.acc(mmat)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
}

\value{ This function returns a numerical value, the accuracy
associated with the confusion matrix.
}

\references{E.B. Fowlkes and C.L. Mallows. A method for
  Comparing Two Hierarchical Clusterings.\cr
  J Am Stat Assoc, 1983, v78, n383, pp553-569\cr

  A.K. Jain and R. Dubes. Algorithms for Clustering Data.\cr
  Prentice Hall, Englewood, New Jersey, 1988.
}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   eve.acc(mmat)
}

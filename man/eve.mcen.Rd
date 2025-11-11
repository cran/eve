\name{eve.mcen}
\alias{eve.mcen}

\title{Modified confusion entropy calculation}

\description{This function computes the modified confusion entropy for
  a binary or a multiclass confusion matrix. A shifted value is returned}

\usage{eve.mcen(mmat)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
}

\value{ This function returns a numerical value, a shifted modified
confusion entropy (1-MCEN).
}

\references{R. Delgado and J.D. Nunez-Gonzalez. Enhancing Confusion
  Entropy CEN for Binary and Multiclass Classification.\cr
  PLoS One, 2019, v14, n1, e0210264.
}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   eve.mcen(mmat)
}

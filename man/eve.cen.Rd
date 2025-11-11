\name{eve.cen}
\alias{eve.cen}

\title{Confusion entropy calculation}

\description{This function computes the confusion entropy for a binary
  or a multiclass confusion matrix. A shifted value is returned}

\usage{eve.cen(mmat)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
}

\value{ This function returns a numerical value, a shifted 
confusion entropy (1-CEN).
}

\references{J.M. Wei, X.J. Yuan, Q.H. Hu and S.Q. Wang.
  A Novel Measure for Evaluating Classifiers.\cr
  Expert Syst Appl, 2010, v15 pp4969-4992.
}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   eve.cen(mmat)
}

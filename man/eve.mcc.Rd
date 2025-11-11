\name{eve.mcc}
\alias{eve.mcc}

\title{Matthews' correlation coefficient calculation}

\description{This function computes the Matthews' correlation
  cooefficient for a binary of a multiclass confusion matrix.}

\usage{eve.mcc(mmat)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
}

\value{ This function returns a numerical value, a shifted 
Matthews correlation coefficient which varies in [0,1].
}

\references{B.W. Matthews. Comparison of the Predicted and
  observed Secondary Structures of T4 Phage Lysozome.\cr
  Biochem Biophys Acta, 1975, v405 pp442-451.\cr

  J. Gorodkin. Comparing Two K-Category Assignments by a
  K-Category Correlation Coefficient.\cr
  Comput Biol Chem, 2004, v28 pp367-374.
}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   eve.mcc(mmat)
}

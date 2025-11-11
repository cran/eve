\name{eve.kappa}
\alias{eve.kappa}

\title{Cohen's Kappa calculation}

\description{This function computes the Cohen's kappa measure for a
  binary or a multiclass confusion matrix.}

\usage{eve.kappa(mmat)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
}

\value{ This function returns a numerical value, the Cohen kappa
evaluation measure.
}

\references{J. Cohen. A Coefficient of Agreement for Nominal
  Scales.\cr Educ Psychol Meas, 1960, v20 n1 pp37-46}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   eve.kappa(mmat)
}

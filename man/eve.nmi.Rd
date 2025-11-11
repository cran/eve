\name{eve.nmi}
\alias{eve.nmi}

\title{Normalized mutual information calculation}

\description{This function computes the normalized mutual information
  for a binary or a multiclass confusion matrix.}

\usage{eve.nmi(mmat)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
}

\value{ This function returns a numerical value, the normalized
mutual information.
}

\references{T.M. Cover and J.A. Thomas. Elements of Information
  Theory.\cr Wiley, 2006, 2nd edition, Hoboken, New Jersey.\cr

  I. Kononenko and I Bratko. Information-Based Evaluation Criterion
  of Classifiers Performance.\cr
  Mach Learn, 1991, v6, pp67-80.\cr
  
  N.X. Vinh, J. Epps and J. Bailey. Information Theoretic Measures
  for Clusterings Comparison: Variants, Properties, Normalization
  and Correction for Chance.\cr
  J Mach Learn Res, 2010, v11 pp2837-2854.
}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   eve.nmi(mmat)
}

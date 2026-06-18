\name{m2two.a}
\alias{m2two.a}

\title{Conversion of a multicass confusion matrixto a single binary 
confusion matrix}

\description{This function converts a multiclass confusion
  into a single binary confusion matrix.}

\usage{m2two.a(mmat)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
}

\value{ This function returns a 2 x 2 confusion matrix which can
be used for evaluating a classifier.
}

\references{A.K. Jain and R. Dubes. Algorithms for Clustering Data.\cr
  Prentice Hall, Englewood, New Jersey, 1988.\cr

  N.X. Vinh, J. Epps and J. Bailey. Information Theoretic Measures
  for Clusterings Comparison: Variants, Properties, Normalization
  and Correction for Chance.\cr
  J Mach Learn Res, 2010, v11 pp2837-2854.\cr
  
  Dembele D. (2025), The Eigenvalues Entropy as a
            Classifier Evaluation Measure. arXiv:2511.01904
}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   m2two.a(mmat)
}

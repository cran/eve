\name{m2two.k}
\alias{m2two.k}

\title{Comparison of the class k versus the rest}

\description{This function allows to compare the class k versus the 
others for a multiclass problem.}

\usage{m2two.k(mmat,k=1)}

\arguments{
  \item{mmat}{ a square numerical-valued confusion matrix.}
  \item{k}{ the index of the class to compare to the others.}
}

\value{ This function returns a 2 x 2 confusion matrix which can
be used for evaluating a classifier. The class k is compared to
the others.
}

\references{H. Cramer. Mathematical Methods of Statistics.\cr
  Princeton Univ Press, 1946.\cr

  E.B. Fowlkes and C.L. Mallows. A method for
  Comparing Two Hierarchical Clusterings.\cr
  J Am Stat Assoc, 1983, v78, n383, pp553-569\cr

  A.K. Jain and R. Dubes. Algorithms for Clustering Data.\cr
  Prentice Hall, Englewood, New Jersey, 1988.\cr
  
  Dembele D. (2025), The Eigenvalues Entropy as a
            Classifier Evaluation Measure. arXiv:2511.01904
}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,34), ncol=3)
   m2two.k(mmat,2)
}

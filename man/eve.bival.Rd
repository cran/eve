\name{eve.bival}
\alias{eve.bival}

\title{Some binary measures calculation}

\description{This function computes the sensitivity, the specificity,
  the precision, the Fowlkes & Mallows index, the F1-score and the
  area under the ROC curve for a binary problem confusion matrix.}

\usage{eve.bival(mmat)}

\arguments{
  \item{mmat}{ a 2 x 2 numerical-valued confusion matrix.}
}

\value{ This function returns the sensitivity, the specificity,
  the precision, the Fowlkes & Mallows index, the F1-score and the
  area under the ROC curve measure values.
}

\references{H. Cramer. Mathematical Methods of Statistics.\cr
  Princeton Univ Press, 1946.\cr

  E.B. Fowlkes and C.L. Mallows. A method for
  Comparing Two Hierarchical Clusterings.\cr
  J Am Stat Assoc, 1983, v78, n383, pp553-569\cr

  A.K. Jain and R. Dubes. Algorithms for Clustering Data.\cr
  Prentice Hall, Englewood, New Jersey, 1988.\cr

  J. Furnkranz and P.A. Flach. ROC'n' Rule Learning - Towards a
  Better Understanding of Covering Algorithms.\cr
  Mach Learn, 2005, v58, pp39-77.\cr

  D.J. Hand. Measuring Classifier Performance: a Coherent
  Alternative to the Area Under the ROC Curve.\cr
  Mach Learn, 2009, v77, pp367-374.\cr

  D.M.W. Powers. Evaluation from Precision, Recall and F-measure
  to ROC, Informmedness, Markedness and Correlation.\cr
  arXiv, 2020, 2010.16061.
}

\author{Doulaye Dembele}

\examples{
   mmat <- matrix(c(434,10,7,232), ncol=2)
   eve.bival(mmat)
}

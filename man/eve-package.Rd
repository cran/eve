\name{eve-package}
\alias{eve-package}
\docType{package}

\title{The Eigenvalues Entropy as a Classifier Evaluation Measure}

\description{eve allows to compute the eigenvalues entropy and many
  other commonly used classifier evaluation measures. For comparison
  purpose, all measures computed are adjusted to vary in [0,1].}

\details{
\tabular{ll}{
             Package: \tab eve\cr
             Type: \tab Package\cr
             Version: \tab 0.1-0\cr
             Date: \tab 2025-10-20\cr
             License: \tab GPL (>=2.0)\cr
             }

             This package has the following functions:
	     \tabular{ll}{
	       eve(): \tab The function allowing to compute the
	       eigenvalues entropy measure.\cr
	       eve.mmatt(): \tab This function allows to compute a
               modified confusion matrix\cr\tab
	       which is useful for imbalanced problem.\cr
	       eve.bounds(): \tab This function allows to compute
	       lower and upper bound values for the eigenvalues\cr\tab
	       used to get the EVE evaluation measure.\cr
	       eve.eigens(): \tab This function gives access to 
	       the eigenvalues used to get the EVE evaluation measure.\cr
	       eve.bival(): \tab This function allows to compute the
	       sensitivity, the specificity, the precision, the\cr\tab
	       Fowlkes and Mallows index, the F1-score and the area
	       under the ROC curve, for a binary problem.\cr
	       eve.acc(): \tab The function computes the accuracy.\cr
	       eve.nmi(): \tab This function computes the normalized
	       mutual information value.\cr
	       eve.mcc(): \tab This function computes the Matthews
	       correlation coefficient, a shifted value is returned.\cr
	       eve.kappa(): \tab This function computes the Cohen's
	       Kappa measure value.\cr
	       eve.cen(): \tab This function computes the confusion
	       entropy of the misclassification.\cr\tab A shifted value is
	       returned.\cr
	       eve.mcen(): \tab  This function compute the modified
	       confusion entropy of the misclassification.\cr\tab A shifted
	       value is returned.\cr
	       m2two(): \tab This function converts a multiclass
               confusion matrix into a binary confusion matrix.\cr
	       m2two.k(): \tab This function allows to get a confusion
	       matrix of the comparison of one class\cr\tab (k) versus the
	       others.
	     }
}

\author{Doulaye Dembele
    Maintainer: Doulaye Dembele <doulaye@igbmc.fr>}

\references{Dembele D. (2025), The Eigenvalues Entropy as a
            Classifier Evaluation Measure. arXiv:2511.01904}

\keyword{ package }

\examples{
   mmat <- matrix(c(50,0,0,0,35,15,0,7,43),ncol=3)

   eve(mmat)
   eve.acc(mmat)
   eve.kappa(mmat)
   eve.mcc(mmat)
   eve.nmi(mmat)
   eve.cen(mmat)
   eve.mcen(mmat)

   eve.mmatt(mmat)
   
   res <- m2two(mmat)
   eve.bival(res)
   eve.kappa(res)
   eve(res)

   res <- m2two.k(mmat,2)
   eve.bival(res)
   eve.mcc(res)
   eve.acc(res)
   
   mmat <- matrix(c(9,1,80,210),ncol=2)
   eve.bival(mmat)
   eve.bival(eve.mmatt(mmat))
   eve(mmat)
   eve(eve.mmatt(mmat))
}

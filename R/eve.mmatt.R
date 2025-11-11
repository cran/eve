#############################################################################
### This function computes a modified confusion matrix
#############################################################################
eve.mmatt <- function(mmat) {
    n <- nrow(mmat)
    n2 <- ncol(mmat)
    if (n == n2) {
        cvec <- apply(mmat, 2, sum)
        if (sum(cvec == 0) > 0) mmat <- mmat + matrix(rep(1,n*n),ncol=n)/n
        dvec <- diag(mmat)
        if (sum(dvec == 0) > 0) mmat <- mmat + matrix(c(rep(1/n,n*n)),ncol=n)
        dmatd <- diag(sqrt(apply(mmat,2,sum)))
        dmati <- diag(1/sqrt(apply(mmat,2,sum)))
        mmatt <- dmatd %*% mmat %*% dmati
        return(mmatt)
    } else {
        return("eve.mmatt(): square matrix is required")
    }
}
#############################################################################

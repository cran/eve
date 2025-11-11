#############################################################################
## This function computes the eigenvalues entropy of a confusion matrix
#############################################################################
eve <- function(mmat) {
    n <- nrow(mmat)
    n2 <- ncol(mmat)
    if (n == n2) {
        cvect <- apply(mmat, 2, sum)
        if (sum(cvect == 0)>0) mmat <- mmat + matrix(rep(1/n,n*n),ncol=n)
        cmat <- diag(1/apply(mmat,2,sum))
        pmat <- mmat %*% cmat
        bmat <- 0.5*(pmat + t(pmat))
        res <- eigen(bmat)
        eta <- res$values[res$values>0]
        eta <- eta/sum(eta)
        res <- -sum(eta*log(eta))/log(n)
        return(res)
    } else {
        return("eve(): square matrix is required")
    }
}
#############################################################################

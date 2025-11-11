#############################################################################
### This function computes the eigenvalues bounds of a confusion matrix
#############################################################################
eve.bounds <- function(mmat) {
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
        pmat <- dmati %*% mmatt %*% dmati
        bmat <- 0.5*(pmat + t(pmat))
        amat <- diag(1/sqrt(diag(bmat))) %*% bmat %*% diag(1/sqrt(diag(bmat)))
        rmat <- amat - diag(rep(1,n))
        res <- apply(rmat, 1, sum)
        thr <- c(1-max(res), 1+max(res))
        return(thr)
    } else {
        return("eve.bounds(): square matrix is required")
    }
}
#############################################################################

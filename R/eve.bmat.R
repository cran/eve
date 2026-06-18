#############################################################################
### This function allows to get a symmetric matrix B from a confusion matrix
#############################################################################
eve.bmat <- function(mmat) {
    n <- nrow(mmat)
    n2 <- ncol(mmat)
    if (n == n2) {
        cvect <- apply(mmat, 2, sum)
        if (sum(cvect == 0)>0) {
           tmp <- 1/cvect
           tmp[tmp == Inf] <- 0
           cmat <- diag(tmp)
        } else {
           cmat <- diag(1/apply(mmat,2,sum))
        }
        pmat <- mmat %*% cmat
        bmat <- 0.5*(pmat + t(pmat))
        return(bmat)
    } else {
        return("eve.bmat(): square matrix is required")
    }
}
#############################################################################

#############################################################################
### This function computes the eigenvalues bounds of a confusion matrix
#############################################################################
eve.eigens <- function(mmat) {
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
        res <- eigen(bmat)$values
        return(res)
    } else {
        return("eve.eigens(): square matrix is required")
    }
}
#############################################################################

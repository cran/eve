#############################################################################
### This function allows to get a symmettic matrix A from a confusion matrix
#############################################################################
eve.amat <- function(mmat) {
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
        dvect <- 1/sqrt(diag(bmat))
        dvect[dvect == Inf] <- 1
        amat <- diag(dvect) %*% bmat %*% diag(dvect)
        return(amat)
    } else {
        return("eve.amat(): square matrix is required")
    }
}
#############################################################################

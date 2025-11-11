#############################################################################
## This function computes the normalized mutual information of a confusion
## matrix which should be square
#############################################################################
eve.nmi <- function(mmat) {
    n <- nrow(mmat)
    n2 <- ncol(mmat)
    if (n == n2) {
        rvec <- apply(mmat, 1, sum)
        if (sum(rvec == 0)>0) mmat <- mmat + matrix(rep(1/n,n*n),ncol=n)
        cvec <- apply(mmat, 2, sum)
        if (sum(cvec == 0)>0) mmat <- mmat + matrix(rep(1/n,n*n),ncol=n)
        rvec <- apply(mmat, 1, sum)
        cvec <- apply(mmat, 2, sum)
        m <- sum(mmat)
        hpc <- 0
        for (i in 1:n) {
          for (j in 1:n){
            if (mmat[i,j] > 0) hpc <- hpc-(mmat[i,j]/m)*log(mmat[i,j]/m)
          }
        }
        ipc <- 0
        for (i in 1:n) {
          for (j in 1:n){
             if (mmat[i,j] > 0)
                ipc <- ipc+(mmat[i,j]/m)*log((mmat[i,j]*m)/(rvec[i]*cvec[j]))
          }
        }
        return(ipc/hpc)
    } else {
        return("eve.nmi(): square matrix is required")
    }
}
#############################################################################

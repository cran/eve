#############################################################################
### This function computes a modified confusion matrix
#############################################################################
eve.mmatt <- function(mmat) {
    n <- nrow(mmat)
    n2 <- ncol(mmat)
    if (n == n2) {
        cvect <- apply(mmat, 2, sum)
        if (sum(cvect == 0)>0) {
           tmp <- sqrt(1/cvect)
           tmp[tmp == Inf] <- 1
           dmatd <- diag(1/tmp)
           dmati <- diag(tmp)
        } else {
           dmatd <- diag(sqrt(apply(mmat,2,sum)))
           dmati <- diag(1/sqrt(apply(mmat,2,sum)))
        }
        mmatt <- dmatd %*% mmat %*% dmati
        return(mmatt)
    } else {
        return("eve.mmatt(): square matrix is required")
    }
}
#############################################################################

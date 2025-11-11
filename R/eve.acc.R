#############################################################################
## This function computes the accuracy for a multiclass confusion matrix
#############################################################################
eve.acc <- function(mmat) {
    n <- nrow(mmat)
    n2 <- ncol(mmat)
    if (n == n2) {
        res <- sum(diag(mmat))/sum(mmat)
        return(res)
    } else {
        return("eve.acc(): square matrix is required")
    }
}
#############################################################################

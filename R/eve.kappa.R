#############################################################################
## This function computes the Cohen kappa for a multiclass confusion matrix
#############################################################################
eve.kappa <- function(mmat) {
    n <- nrow(mmat)
    n2 <- ncol(mmat)
    if (n == n2) {
        m <- sum(mmat)
        cvect <- apply(mmat, 2, sum)
        rvect <- apply(mmat, 1, sum)
        nume <- m*sum(diag(mmat)) - sum(cvect*rvect)
        deno <- m^2 - sum(cvect*rvect)
        res <- nume/deno
        return(res)
    } else {
        return("eve.kappa(): square matrix is required")
    }
}
#############################################################################

#############################################################################
## This function computes the shifted Matthews correlation coefficient for a
##   multiclass confusion matrix. This coefficient varies in [0,1]
#############################################################################
eve.mcc <- function(mmat) {
    n <- nrow(mmat)
    n2 <- ncol(mmat)
    if (n == n2) {
        m <- sum(mmat)
        cvect <- apply(mmat, 2, sum)
        rvect <- apply(mmat, 1, sum)
        nume <- m*sum(diag(mmat)) - sum(cvect*rvect)
        deno1 <- m^2 - sum(cvect*cvect)
        deno2 <- m^2 - sum(rvect*rvect)
        res <- nume/sqrt(deno1*deno2)
        mcc <- 0.5*(res+1)
        return(mcc)
    } else {
        return("eve.mcc(): square matrix is required")
    }
}
#############################################################################

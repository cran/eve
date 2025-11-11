#############################################################################
## This function converts a multiclass confusion matrix (or two clustering
## methods matching matrix) into a 2x2 table using the pair counting approach
#############################################################################
m2two <- function(mmat) {
    n <- nrow(mmat)
    n2 <- ncol(mmat)
    if (n == n2) {
        m <- sum(mmat)
        rvect <- apply(mmat, 1, sum)
        cvect <- apply(mmat, 2, sum)
        P <- sum(rvect^2) - m
        Q <- sum(cvect^2) - m
        M <- 0.5*m*(m-1)
        res <- matrix(0, nrow=2, ncol=2)
        res[1,1] <- 0.5*sum(mmat^2) - 0.5*m
        res[1,2] <- 0.5*P - res[1,1]
        res[2,1] <- 0.5*Q - res[1,1]
        res[2,2] <- M - 0.5*(P+Q) + res[1,1]
        return(res)
    } else {
        return("m2two(): square matrix is required")
    }
}
#############################################################################

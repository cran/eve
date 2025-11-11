#############################################################################
## This function converts a confusion matrix of order > 2 to an 2 x 2 table
## The index k (1 to n) of the class is specified
#############################################################################
m2two.k <- function(mmat, k=1) {
    n <- nrow(mmat)
    n2 <- ncol(mmat)
    if ((n == n2) & (n > 2)) {
        if (k>n) k <- n
        res <- matrix(0, nrow=2,ncol=2)
        if ((k>1) & (k<n)) {
            tt <- mmat[,c(k,1:k-1,(k+1):n)]
            mt <- tt[c(k,1:k-1,(k+1):n),]
            res[1,1] <- mt[1,1]
            res[1,2] <- sum(mt[1,2:n])
            res[2,1] <- sum(mt[2:n,1])
            res[2,2] <- sum(mt[2:n,2:n])
        } else if (k==n) {
            tt <- mmat[,c(n,1:(n-1))]
            mt <- tt[c(n,1:(n-1)),]
            res[1,1] <- mt[1,1]
            res[1,2] <- sum(mt[1,2:n])
            res[2,1] <- sum(mt[2:n,1])
            res[2,2] <- sum(mt[2:n,2:n])
        } else {
            res[1,1] <- mmat[1,1]
            res[1,2] <- sum(mmat[1,2:n])
            res[2,1] <- sum(mmat[2:n,1])
            res[2,2] <- sum(mmat[2:n,2:n])
        }
        return(res)
    } else {
        return("m2two.k(): square matrix of order > 2 is required")
    }
}
#############################################################################

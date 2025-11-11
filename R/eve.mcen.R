#############################################################################
## This function computes the shifted modified confusion entropy for a
##  multiclass problem. The shifted value varies in [0, 1]
#############################################################################
eve.mcen <- function(mmat){
    n <- nrow(mmat)
    n2 <- ncol(mmat)
    pjmat <- pimat <- matrix(0,n,n)
    if (n == n2) {
        for (i in 1:n) {
            for (j in 1:n) {
                if (j != i) {
                    tt <- sum(mmat[j,]) + sum(mmat[,j]) - mmat[j,j]
                    if (tt == 0) { pjmat[i,j] <- 0 }
                    else { pjmat[i,j] <- mmat[i,j]/tt }
                }
            }
        }
        for (i in 1:n) {
            for (j in 1:n) {
                if (j != i) {
                    tt <- sum(mmat[i,]) + sum(mmat[,i]) - mmat[i,i]
                    if (tt == 0) {pimat[i,j] <- 0 }
                    else { pimat[i,j] <- mmat[i,j]/tt }
                }
            }
        }
        cenj <- rep(0,n)
        for (j in 1:n) {
            for (k in 1:n) {
                if (k != j) {
                    if (pimat[j,k] == 0) {t1 <- 0}
                    else {t1 <- pimat[j,k]*(log(pimat[j,k])/log(2*n-2))}
                    if (pjmat[k,j] == 0) { t2 <- 0}
                    else {t2 <- pjmat[k,j]*(log(pjmat[k,j])/log(2*n-2))}
                    cenj[j] <- cenj[j] - t1 - t2
                }
            }
        }
        pj <- rep(0,n)
        tt <- sum(diag(mmat))
        if (n == 2) { deno <- 2*sum(mmat) - 0.5*tt }
        else { deno <- 2*sum(mmat) - tt }
        for (j in 1:n) {
            nume <- sum(mmat[j,]) + sum(mmat[,j]) - mmat[j,j]
            pj[j] <- nume/deno
        }
        res <- sum(pj*cenj)
        return(1-res)
###        list(mcen.v=res, mcenj=cenj, mpj=pj)
    }  else {
        return("eve.mcen(): square matrix is required")
    }
}
#############################################################################

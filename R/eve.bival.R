#############################################################################
## This function computes some measures for an 2 x 2 confusion matrix
#############################################################################
eve.bival <- function(mmat) {
    n <- nrow(mmat)
    n2 <- ncol(mmat)
    if ((n == n2) & (n == 2)) {
        sen <- mmat[1,1]/sum(mmat[,1])
        spe <- mmat[2,2]/sum(mmat[,2])
        pre <- mmat[1,1]/sum(mmat[1,])
        fmi <- sqrt(pre*sen)
        if ((sen == 0) & (pre == 0)) {
            fscore = NA
        } else {
            fscore <- 2*(pre * sen) /(pre + sen)
        }
        auc <- (sen + spe)/2
        gini <- 2*auc-1
        list(sen=sen, spe=spe, pre=pre, fmi=fmi, fscore=fscore,
        auc=auc, gini=gini)
    } else {
        return("eve.bival(): 2 x 2  matrix is required")
    }
}
#############################################################################

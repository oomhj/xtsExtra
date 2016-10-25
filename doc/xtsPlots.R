### R code from vignette source 'xtsPlots.Rnw'

###################################################
### code chunk number 1: xtsPlots.Rnw:21-23
###################################################
library(xtsExtra)
options(width = 70)


###################################################
### code chunk number 2: xtsPlots.Rnw:46-47
###################################################
names(formals(barplot.xts))


###################################################
### code chunk number 3: xtsPlots.Rnw:69-72
###################################################
x <- xts(matrix(abs(rnorm(72)), ncol = 6), Sys.Date() + 1:12)
colnames(x) <- LETTERS[1:6]
barplot(x)


###################################################
### code chunk number 4: xtsPlots.Rnw:75-76
###################################################
barplot(x)


###################################################
### code chunk number 5: xtsPlots.Rnw:85-86
###################################################
barplot(x[c(1:5, 12),])


###################################################
### code chunk number 6: xtsPlots.Rnw:101-103
###################################################
colnames(x) <- c("Equity", "Fixed Income", "Commodities",
                 "FX","Convertibles","Alternatives")


###################################################
### code chunk number 7: xtsPlots.Rnw:108-109
###################################################
barplot(x, scale = FALSE)


###################################################
### code chunk number 8: xtsPlots.Rnw:113-114
###################################################
barplot(x, scale = TRUE)


###################################################
### code chunk number 9: xtsPlots.Rnw:122-131 (eval = FALSE)
###################################################
## scale1 <- function(x){x/rowSums(abs(x))}
## scale2 <- function(x){
##     ## Can this be vectorized?
##     for(j in seq_len(NROW(x))){
##         x[j, x[j,] > 0] <- x[j, x[j,] > 0] / sum(x[j, x[j,] > 0])
##         x[j, x[j,] < 0] <- -1 * x[j, x[j,] < 0] / sum(x[j, x[j,] < 0])
##     }
##     x
## }


###################################################
### code chunk number 10: xtsPlots.Rnw:139-140
###################################################
barplot(x, stacked = FALSE)


###################################################
### code chunk number 11: xtsPlots.Rnw:150-160
###################################################
rainbow6equal <- c("#BF4D4D", "#BFBF4D", "#4DBF4D", "#4DBFBF", 
                   "#4D4DBF", "#BF4DBF")
rainbow8equal <- c("#BF4D4D", "#BFA34D", "#86BF4D", "#4DBF69", 
                   "#4DBFBF", "#4D69BF", "#864DBF", "#BF4DA3")
rainbow10equal <- c("#BF4D4D", "#BF914D", "#A8BF4D", "#63BF4D", 
                    "#4DBF7A", "#4DBFBF", "#4D7ABF", "#634DBF",
                    "#A84DBF", "#BF4D91")
rainbow12equal <- c("#BF4D4D", "#BF864D", "#BFBF4D", "#86BF4D", 
                    "#4DBF4D", "#4DBF86", "#4DBFBF", "#4D86BF", 
                    "#4D4DBF", "#864DBF", "#BF4DBF", "#BF4D86")



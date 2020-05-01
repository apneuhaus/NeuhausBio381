FileBuilder <- function(fileN=10,
                        fileFolder="RandomFiles/",
                        fileSize=c(15,100),
                        fileNA=3){
  for (i in seq_len(fileN)) {
    fileLength <- sample(fileSize[1]:fileSize[2],size=1) 
    varX <- runif(fileLength) 
    varY <- runif(fileLength) 
    dF <- data.frame(varX,varY) 
    badVals <- rpois(n=1,lambda=fileNA)
    dF[sample(nrow(dF),size=badVals),1] <- NA 
    dF[sample(nrow(dF),size=badVals),2] <- NA 
    
    fileLabel <- paste(fileFolder,
                       "ranFile",
                       formatC(i,
                               width=3,
                               format="d",
                               flag="0"),
                       ".csv",sep="")
    
    write.table(cat("# Simulated random data file for batch processing","\n",
                    "# timestamp: ",as.character(Sys.time()),"\n",
                    "# NJG","\n",
                    "# ------------------------", "\n",
                    "\n",
                    file=fileLabel,
                    row.names="",
                    col.names="",
                    sep=""))
    
    write.table(x=dF,
                file=fileLabel,
                sep=",",
                row.names=FALSE,
                append=TRUE)
  }
}
    
betterthanfactoring <- function(data, vectornames){
  data <- as.data.frame(data)
  for(i in 1:length(vectornames)){
    whichvectorname <- which(names(data) == vectornames[i])
    data[,whichvectorname] <- as.factor(data[,whichvectorname])
  }
  return(data)
}

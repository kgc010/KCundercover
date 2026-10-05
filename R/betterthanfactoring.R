#' Factors specified vector of variables in a data frame.
#'
#' @param data is the data frame the variables you want to factor are contained in.
#' @param vectornames is a vector containing the specific variable names you want to factor as strings.
#'
#' @returns The updated data frame containing the factored variables.
#' @export
#'
#' @examples
#' neardeath <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/refs/heads/main/data/2026/2026-07-21/nde_experiences.csv")
#' class(neardeath$gender)
#' test <- betterthanfactoring(neardeath, c("gender", "country"))
#' class(test$gender)
betterthanfactoring <- function(data, vectornames){
  data <- as.data.frame(data)
  for(i in 1:length(vectornames)){
    whichvectorname <- which(names(data) == vectornames[i])
    data[,whichvectorname] <- as.factor(data[,whichvectorname])
  }
  return(data)
}

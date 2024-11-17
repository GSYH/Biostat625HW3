r_squared <- function(y, fitted_values, p = 1, withadjr = FALSE) {
  # calculate total sum of squares
  SST <- sum((y - mean(y))^2)
  
  # calculate residual sum of squares
  residuals <- y - fitted_values
  SSR <- sum(residuals^2)
  
  # calculate r-squared
  r_sq <- 1 - (SSR / SST)
  
  n <- length(y)
  adj_r_sq <- 1 - ((1 - r_sq) * (n - 1) / (n - p - 1))
  
  if(withadjr){
    return(list(R_Squared = r_sq, Adjusted_R_Squared = adj_r_sq))
  }else return(list(R_Squared = r_sq))
}

r_squared = function(y, fitted_values, p = 1, withadjr = FALSE) {

  SST = sum((y - mean(y))^2)

  residuals = y - fitted_values

  SSR = sum(residuals^2)

  r_sq = 1 - (SSR / SST)

  # in order to get the adjusted r square, we need to know the total n which is the total poplution for example in the question
  n = length(y)
  adj_r_sq = 1 - ((1 - r_sq) * (n - 1) / (n - p - 1))

  # if withadjr = true, then we will return the r square with the adjusted r square, vice versa
  if(withadjr){
    return(list(R_Squared = r_sq, Adjusted_R_Squared = adj_r_sq))
  }else return(list(R_Squared = r_sq))
}

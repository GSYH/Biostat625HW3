ci = function(X, y, alpha = 0.05) {

  # we need to ensure that we have intercept so we have 1 in here
  if (is.vector(X)) {
    X = cbind(1, X)
  } else {
    X = cbind(1, as.matrix(X))
  }

  #we will use matrix way to do the caculation since the 650 ppt using it

  #to get the big X, inverse of the cross-product of X
  inv_x = solve(t(X) %*% X)

  #estimated coefficient
  beta_hat = inv_x %*% t(X) %*% y

  residuals = y - X %*% beta_hat
  sigma_sq = sum(residuals^2) / (nrow(X) - ncol(X))

  # get estimated variance-covariance
  vcov = sigma_sq * inv_x

  # standard errors for each coefficient
  se = sqrt(diag(vcov))

  # we need to have the t-score for the given alpha level
  df = nrow(X) - ncol(X)
  tscore = qt(1 - alpha / 2, df)

  #formular for the confidence interval
  upper_ci = beta_hat + tscore * se
  lower_ci = beta_hat - tscore * se

  # we combine them into a matrix
  ci_results <- cbind(lower_ci, upper_ci)

  return(ci_results)
}

ci = function(X, y, alpha = 0.05) {
  if (is.vector(X)) {
    X = cbind(1, X)
  } else {
    X = cbind(1, as.matrix(X))
  }

  inv_x = solve(t(X) %*% X)

  beta_hat = inv_x %*% t(X) %*% y

  residuals = y - X %*% beta_hat
  sigma_sq = sum(residuals^2) / (nrow(X) - ncol(X))

  vcov = sigma_sq * inv_x

  se = sqrt(diag(vcov))

  df = nrow(X) - ncol(X)
  tscore = qt(1 - alpha / 2, df)

  lower_ci = beta_hat - tscore * se
  upper_ci = beta_hat + tscore * se

  ci_results = list(
    Lower_CI = as.vector(lower_ci),
    Upper_CI = as.vector(upper_ci)
  )

  return(ci_results)
}

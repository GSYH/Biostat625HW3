mlr = function(X, y) {
  if (is.vector(X)) {
    X = cbind(1, X)
  } else {
    X = cbind(1, as.matrix(X))
  }

  beta = solve(t(X) %*% X) %*% t(X) %*% y

  fitted_value = X %*% beta
  residuals = normal - fitted_values

  result = list(
    Beta = beta,
    FittedValues_mlr = fitted_values,
    Residuals_mlr = residuals
  )
  return(result)
}


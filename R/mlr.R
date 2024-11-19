mlr = function(X, y) {

  #we need to make sure whether X is a single variable or mutiple. If single, we add one colmn for intercept. If it is multiple variable, we make X to matrix and add intercpt.
  if (is.vector(X)) {
    X = cbind(1, X)
  } else {
    X = cbind(1, as.matrix(X))
  }

  #get the estimated beta, matrix version, p*1
  beta = solve(t(X) %*% X) %*% t(X) %*% y

  #get the predicted values
  fitted_value = X %*% beta

  #get residual
  residuals = y - fitted_values

  # this return a list for beta, fitted value and residual.
  result = list(
    Beta = beta,
    FittedValues_mlr = fitted_value,
    Residuals_mlr = residuals
  )
  return(result)
}


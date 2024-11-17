slr = function(x, y) {
  xbar = mean(x)
  ybar = mean(y)

  beta1 = sum((x - xbar) * (y - ybar)) / sum((x - xbar)^2)
  beta0 = ybar - beta1 * xbar

  fitted_values = beta0 + beta1 * x
  residuals = y - fitted_values

  result = list(
    Beta0 = beta0,
    Beta1 = beta1,
    FittedValues = fitted_values,
    Residuals = residuals
  )

  return(result)
}

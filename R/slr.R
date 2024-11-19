slr = function(x, y) {
  # we obtain the x and y bar
  xbar = mean(x)
  ybar = mean(y)

  #i used bistat650 ppt to wirte this fomular, assume this is a common knowledg
  beta1 = sum((x - xbar) * (y - ybar)) / sum((x - xbar)^2)
  beta0 = ybar - beta1 * xbar

  #this is to get the predicted value of y
  fitted_values = beta0 + beta1 * x

  #we get the residuals
  residuals = y - fitted_values

  #we return the result to a list, there have beta0, beta1, fittedvalue and residuals
  result = list(
    Beta0 = beta0,
    Beta1 = beta1,
    FittedValues = fitted_values,
    Residuals = residuals
  )

  return(result)
}

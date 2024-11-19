plot_regression = function(x, y) {
  # fit a simple linear regression model using the package slr() function
  model = slr(x, y)

  # get the fitted coefficients from the slr model
  intercept = model$Intercept
  slope = model$Slope

  #substitute your input varibale name into plot axis
  x_label = substitute(x)
  y_label = substitute(y)
  # plot x and y
  plot(x, y,
       main = "Scatter Plot with Regression Line",
       xlab = x_label,
       ylab = y_label,
       pch = 16,
       col = "blue")

  # add the regression line using the intercept and slope
  abline(intercept, slope, col = "red", lwd = 2)

  # add legend where we have best fit line, red one
  legend("topleft", legend = "Best Fit Line",
         col = "red", lty = 1, lwd = 2, cex = 0.8)
}


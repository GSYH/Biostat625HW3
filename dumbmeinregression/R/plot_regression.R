plot_regression = function(x, y) {
  # Fit a simple linear regression model using the custom slr function
  model = slr(x, y)

  # get the  fitted coefficients from the slr model
  intercept = model$Intercept
  slope = model$Slope

  x_label = substitute(x)
  y_label = substitute(y)
  # create the plot
  plot(x, y,
       main = "Scatter Plot with Regression Line",
       xlab = x_label,
       ylab = y_label,
       pch = 16,
       col = "blue")

  # add the regression line using the intercept and slope
  abline(intercept, slope, col = "red", lwd = 2)

  # add legend
  legend("topleft", legend = "Best Fit Line",
         col = "red", lty = 1, lwd = 2, cex = 0.8)
}


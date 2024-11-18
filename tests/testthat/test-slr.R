test_that("slr works", {
  set.seed(123)
  X1 <- rnorm(100)
  X2 <- rnorm(100)
  X3 <- rnorm(100)
  y <- 5 + 2*X1 + 7*X2 + 0.1*X3 + rnorm(100, sd = 5)
  simulate_data1 <- data.frame(y, X1, X2, X3)

  #we are setting the lowercase x as only variable for simple linear regression
  x = simulate_data1$X1
  #uppercase X is two variables
  X = cbind(simulate_data1$X1, simulate_data1$X2)
  y = simulate_data1$y

  result <- slr(x, y)

  # Test intercept and slope
  expect_equal(round(result$Beta0, 1), 4.1)  # Test the intercept
  expect_equal(round(result$Beta1, 1), 1.4)  # Test the slope

  # Test fitted values length
  expect_equal(length(result$FittedValues), 100)

  # Test residuals length
  expect_equal(length(result$Residuals), 100)
})

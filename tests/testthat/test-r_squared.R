test_that("r_squared works", {
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

  slr_result = slr(x,y)

  fitted_values = slr_result$FittedValues

  #use r_squared() get R-square
  r_squared_result_without_adjustedR = r_squared(y, fitted_values, p = 1, withadjr = FALSE)

  expect_equal(round(r_squared_result_without_adjustedR$R_Squared, 1), 0.02)


})

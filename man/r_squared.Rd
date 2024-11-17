\name{r_squared}
\alias{r_squared}
\title{R-Squared and Adjusted R-Squared Calculation}
\usage{
r_squared(y, fitted_values, p = 1, withadjr = FALSE)
}
\arguments{\item{y}{observed values of the dependent variable(vector or numeric values)}
           \item{fitted_values}{predicted values of the dependent variable from the model(vector or numeric values)}
           \item{p}{number of predictors in the model, function will help you exclude intercept. 1 is default value for a simple linear regression}
           \item{withadjr}{if `TRUE`, function should return both R-squared and Adjusted R-squared. In default `FALSE`, function return only R-squared}
}
\value{
R_Squared is the proportion of variance in the dependent variable explained by the model. Adjusted_R_Squared is also for the proportion of variance in the dependent variable explained by the model.
}
\description{
Calculates the R-squared for linear regression model based on observed and fitted values. if you want, you can have the function also calculates Adjusted R-squared.
}
\examples{
For fitted_values, you can first use the slr() function in this package get the fitted_values

# Example for R-squared calculation without Adjusted R-squared
set.seed(123)
X1 <- rnorm(100)
X2 <- rnorm(100)
X3 <- rnorm(100)
y <- 5 + 2*X1 + 7*X2 + 0.1*X3 + rnorm(100, sd = 5)
simulate_data1 <- data.frame(y, X1, X2, X3)

fitted_values = beta0 + beta1 * x

r_squared(y, fitted_values, p = 1, withadjr = FALSE)

#Example for R-squared with Adjusted R-squared
r_squared(y, fitted_values, p = 2, withadjr = TRUE)

}

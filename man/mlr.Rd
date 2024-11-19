\name{mlr}
\alias{mlr}
\title{Multiple linear regression fitting
}
\usage{
mlr(X, y)
}
\arguments{
    \item{X}{independent variable can contain more than one variable}
    \item{y}{observed values of the dependent variable}
}
\value{
The function return a list:
  \item{Beta}{The estimated intercept of the model}
  \item{FittedValues }{predicted values of the dependent variable from the model}
  \item{Residuals }{Value of difference between y and FittedValues}
}
\description{
This function help you fit the Multiple linear regression model, use your independent variable X and observed values of the dependent variable y. This will return four value they are returns Beta, predicted values, and residuals.
}

\examples{
#example dataset
set.seed(123)
X1 <- rnorm(100)
X2 <- rnorm(100)
X3 <- rnorm(100)
y <- 5 + 2*X1 + 7*X2 + 0.1*X3 + rnorm(100, sd = 5)
simulate_data1 <- data.frame(y, X1, X2, X3)
X = cbind(simulate_data1$X1, simulate_data1$X2)

mlr(X,y)
}

\name{slr}
\alias{slr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Simple linear regression fitting
}
\usage{
slr((x, y)
}
\arguments{
    \item{x}{the independent variable}
    \item{y}{observed values of the dependent variable}

}
\value{
The function return a list:
  \item{Beta0}{The estimated intercept of the model}
  \item{Beta1 }{The estimated slope of the model}
  \item{FittedValues }{predicted values of the dependent variable from the model}
  \item{Residuals }{Value of difference between y and FittedValues}
}
\description{
This function help you fit the simple linear regression model, use your independent variable x and observed values of the dependent variable y. This will return four value they are returns the intercept(beta0), slope(beta1), predicted values, and residuals.
}

\examples{
#example dataset
set.seed(123)
X1 <- rnorm(100)
X2 <- rnorm(100)
X3 <- rnorm(100)
y <- 5 + 2*X1 + 7*X2 + 0.1*X3 + rnorm(100, sd = 5)
simulate_data1 <- data.frame(y, X1, X2, X3)
x = X1

slr(x,y)
}

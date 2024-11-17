\name{Confiden_inter}
\alias{Confiden_inter}
\title{Confidence Interval for regression model calculation}
\usage{
ci <- function(X, y, alpha = 0.05)
}
\arguments{
    \item{X}{vector or matrix representing the predictor. if using simple linear regression, this can either be vector or vector as you like. If you wish have a multiple linear regression, this should be a matrix of predictors}
    \item{y}{observed values of the dependent variable}
    \item{alpha}{The significance level for the confidence interval. Default is 0.05, which is 95 percent confidence interval}
}
\value{
The function return a list:
  \item{Lower_CI}{Lower confidence interval}
  \item{Upper_CI}{upper confidence interval}
\description{
This function calculates confidence intervals for the regression in a simple linear regression model or mutiple regression model. We use beta_hat minus or plus t_value * standard_errors
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

#get confidence interval
ci(x,y)
}

\name{plot_regression}
\alias{plot_regression}
\title{Plot the regression}
\usage{
plot_regression(x, y)
}
\arguments{
    \item{x}{the independent variable}
    \item{y}{observed values of the dependent variable}
}
\value{
A plot return a graphic between x and y input value, but no value is returned by the function
}
\description{
This function uses the slr() function to compute the slope and intercept for a simple linear regression model. It then plots the data points and the regression line, along with a legend indicating the line of best fit
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

#Plot the regression
plot_regression(x, y)
}

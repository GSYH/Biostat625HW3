# dumbmeinregression: an R package for Simple linear regression intro calculation 

**dumbmeinregression**: I know this name is too long for you. But I am really "dumb" in learning regression, especially for the simple linear regression which is the foundation of the regression. The reason why I am writing this package is because below these functions I always forget in my BIOS650 course and I got a bad grade on the first midterm. So I write a mini package to commemorate them.

## Main Features

- **Simple linear regression model fitting**: use your independent variable x and observed values of the dependent variable y to get intercept(beta0), slope(beta1), predicted values, and residuals.

- **R-Squared**: R_Squared is the proportion of variance in the dependent variable explained by the model. Optional for you have Adjusted_R_Squared, this tells you how well a model describes the variance in the dependent variable, considering the number of independent variables used in the model.

- **Plot the regression**:  uses fitted value which we first fit the SLR model. Then it helps you plot the data points and the regression line, along with a best-fit line.

- **Confidence Interval**: calculates confidence intervals for the regression in a simple linear regression model or multiple regression model.

## Installation

Before installing the package: The "auth_token" is your token from Git Hub. If you don't have a token yet, head over here to set up your token or any secure gateway first. https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens

To install the package, run the following in R.
```r
Sys.getenv("GITHUB_PAT")
#> [1] ""
Sys.setenv(GITHUB_PAT = "auth_token")
nchar(remotes:::github_pat())
#> [1] 40

remotes::install_github("GSYH/dumbmeinregression")
```

## Usage

These functions are an example for you!

```r
library(dumbmeinregression)

#example dataset
set.seed(123)
X1 <- rnorm(100)
X2 <- rnorm(100)
X3 <- rnorm(100)
y <- 5 + 2*X1 + 7*X2 + 0.1*X3 + rnorm(100, sd = 5)
simulate_data1 <- data.frame(y, X1, X2, X3)

#we are setting the lowercase x as the only variable for simple linear regression
x = simulate_data1$X1
#uppercase X is two variables
X = cbind(simulate_data1$X1, simulate_data1$X2)
y = simulate_data1$y

#you can use slr() get $Beta0, $Beta1, $FittedValues, $Residuals values.
slr_result = slr(x, y)
print(slr_result)

fitted_values = slr_result$FittedValues
#use r_squared() get R-square 
r_squared_result_without_adjustedR = r_squared(y, fitted_values, p = 1, withadjr = FALSE)
print(r_squared_result_without_adjustedR)

fitted_values = slr_result$FittedValues
#use r_squared() and withadjr = TRUE get R-square with adjusted R-square.
r_squared_result_with_adjustedR = r_squared(y, fitted_values, p = 1, withadjr = TRUE)
print(r_squared_result_with_adjustedR)

#use this to plot_regression() plot x and y, and also for the plot_regression(), I didn't find a way to all.equal them in the vignette. But they look the same compared to the plot()
plot_regression_result = plot_regression(x, y)
print(plot_regression_result)

#use ci() to get the confidence interval. But be careful, we are using uppercase X And the default level is 0.05.
Confiden_inter_result = ci(X, y, alpha = 0.05)
print(Confiden_inter_result)
```

## Tutorial

-You can directly download from the vignette folder in the main branch and open it in your browser.

## Getting help

-Please check out the help page after you install the package. I have written a help page for you on your package bar —just click the package name!

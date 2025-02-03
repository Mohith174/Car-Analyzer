#Load the required libraries
library(ggplot2)
library(rpart)
library(rpart.plot)
library(e1071)

# Load the mtcars dataset
data(mtcars)

# Display the first few rows of the dataset
head(mtcars)

# Provide a summary of the dataset
summary(mtcars)

# Visualize relationships using a pairs plot
pairs(mtcars[, c("mpg", "disp", "hp", "wt")], main = "Pair Plot of Key Data")

# Compute and print the correlation matrix
corr = cor(mtcars)
print(corr)

# Plotting Displacement vs. MPG with corrected method in geom_smooth()
ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm") +
  ggtitle("Displacement vs. MPG") +
  xlab("Displacement in cu.in.") +
  ylab("Miles per Gallon")

# Perform linear regression analysis
fit = lm(mpg ~ wt + hp + qsec + am, data = mtcars)
print(summary(fit))
plot(fit$residuals, main = "Residuals from Regression Model", xlab = "Fitted Values", ylab = "Residuals")
abline(h = 0, col = "yellow")

# Decision tree analysis using rpart
tree = rpart(mpg ~ ., data = mtcars, method = "anova")
print(summary(tree))
rpart.plot(tree, main = "Decision Tree for MPG Prediction")

# Evaluating the decision tree
predicted = predict(tree, mtcars)
plot(mtcars$mpg, predicted, main = "Actual vs. Predicted MPG", xlab = "Actual MPG", ylab = "Predicted MPG", pch = 19)
abline(a = 0, b = 1, col = "orange")

# Naïve Bayes Model Implementation
mtcars$mpg_cat = ifelse(mtcars$mpg > median(mtcars$mpg), "High", "Low")
mtcars$mpg_cat = as.factor(mtcars$mpg_cat)

# Fit Naïve Bayes model
nb_model = naiveBayes(mpg_cat ~ ., data = mtcars)
print(nb_model)

# Prediction using Naïve Bayes model
nb_predictions = predict(nb_model, mtcars)

# Confusion Matrix for Naïve Bayes Model
nb_confusion_matrix = table(Predicted = nb_predictions, Actual = mtcars$mpg_cat)
print(nb_confusion_matrix)

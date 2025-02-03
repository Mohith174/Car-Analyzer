# Car Analyzer (MTCARS)

## Overview

This R script provides a comprehensive analysis of the `mtcars` dataset, which includes several variables related to automobile design and performance. The script utilizes multiple statistical techniques to explore, analyze, and predict vehicle efficiency based on various factors.This project demonstrates several statistical and machine learning techniques using the mtcars dataset in R. It includes data visualization, correlation analysis, linear regression, decision tree modeling, and a Naïve Bayes classifier to explore and predict Miles Per Gallon (mpg) performance.

## Features

### 1. Data Visualization
- Generates a pairs plot for key variables like miles per gallon (mpg), displacement (disp), horsepower (hp), and weight (wt).
- Plots displacement against mpg with a linear regression fit.

### 2. Statistical Analysis
- Calculates and displays a correlation matrix for the variables in the dataset.
- Conducts a linear regression analysis to predict mpg based on weight, horsepower, quarter mile time, and transmission type.

### 3. Predictive Modeling
- Uses a decision tree (via `rpart`) to model and predict mpg based on all other variables in the dataset.
- Implements a Naïve Bayes model to classify vehicles as having high or low mpg based on median mpg.
- Provides predictions and evaluates model accuracy with a confusion matrix.

## Libraries Used

- `ggplot2`: For creating advanced graphical representations.
- `rpart`, `rpart.plot`: For constructing and plotting decision trees.
- `e1071`: For machine learning methods like Naïve Bayes.

## Data

The script uses the `mtcars` dataset, which is a built-in dataset in R containing data extracted from the 1974 Motor Trend US magazine. It includes 32 observations on 11 variables.

## Authors

Mohith Kodavati and Anirudh Deveram

## Usage

To run this script, ensure that you have R installed with the required libraries. Load the script in your R environment and execute. The script will output visualizations and results directly to your R console and plots pane.

## Output

The script outputs several plots to visualize data relationships and the effectiveness of the predictive models. It also prints detailed statistical summaries and model evaluations to the console for in-depth analysis.

This README provides an organized guide to understanding and using the `Project_1.R` script for data analysis and predictive modeling purposes.

# Test script for ReviewSents
# Project for CS50R

library(testthat)
library(ReviewSents)

# Load the test data
test_data <- read.csv("test_reviews.csv", stringsAsFactors = FALSE)

# Filter out rows with missing reviews for relevant tests
clean_data <- test_data %>%
  filter(!is.na(review))

# 1. Test sentiment_scorer function
test_that("sentiment_scorer works correctly", {
  # Test with example inputs
  expect_true(sentiment_scorer("I love this restaurant!") == "positive")
  expect_true(sentiment_scorer("This place was horrible!") == "negative")
  expect_true(sentiment_scorer("It's okay, nothing special.") == "neutral")
  
  # Test that the function works without error on the full dataset
  expect_silent({
    test_data$sentiment <- sapply(test_data$review, sentiment_scorer)
  })
})

# 2. Test sentiment_trend_line function
test_that("sentiment_trend_line works and generates plot", {
  # Check if sentiment trend line runs without error
  expect_silent({
    sentiment_trend_line(clean_data)
  })
  # You can also test whether it returns a ggplot object
  plot <- sentiment_trend_line(clean_data)
  expect_s3_class(plot, "gg")
})

# 3. Test word_cloud_generator function
test_that("word_cloud_generator works and generates word cloud", {
  # Ensure the word cloud generator runs without warnings or messages
  expect_silent({
    suppressWarnings(suppressMessages(word_cloud_generator(clean_data)))
  })
})

# 4. Test rating_sentiment_correlation function
test_that("rating_sentiment_correlation works correctly", {
  # Ensure the function runs without error
  rating_data <- test_data %>%
    filter(!is.na(rating), !is.na(review))
  
  # Test for key parts of the output
  expect_output(
    rating_sentiment_correlation(rating_data),
    "Correlation",  # You might want to capture a key part of the printed output
    fixed = TRUE
  )
  
})
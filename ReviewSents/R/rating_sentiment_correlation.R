# ReviewSents - plots the correlation between the rating and sentiment
# Project for CS50R

rating_sentiment_correlation <- function(data) {
  data <- data %>%
    filter(!is.na(rating), !is.na(review)) %>%
    mutate(sentiment_score = ifelse(sapply(review, sentiment_scorer) == "positive", 1, ifelse(sapply(review, sentiment_scorer) == "negative", -1, 0)))
  
  correlation <- cor(data$rating, data$sentiment_score, use = "complete.obs")
  print(paste("Correlation between rating and sentiment score:", correlation))
  
  ggplot(data, aes(x = rating, y = sentiment_score)) +
    geom_point() +
    geom_smooth(method = "lm", col = "blue") +
    labs(title = "Rating vs Sentiment Score", x = "Rating", y = "Sentiment Score") +
    theme_minimal()
}
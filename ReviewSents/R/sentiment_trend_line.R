# ReviewSents - plots the sentiment trend over time
# Project for CS50R

sentiment_trend_line <- function(data) {
  data <- data %>%
    filter(!is.na(date), !is.na(review)) %>%
    mutate(sentiment = sapply(review, sentiment_scorer)) %>%
    group_by(date) %>%
    summarize(avg_sentiment = mean(ifelse(sentiment == "positive", 1, ifelse(sentiment == "negative", -1, 0)), na.rm = TRUE))
  
  ggplot(data, aes(x = as.Date(date), y = avg_sentiment)) +
    geom_line(color = "blue") +
    labs(title = "Sentiment Trend Over Time", x = "Date", y = "Average Sentiment") +
    theme_minimal()
}
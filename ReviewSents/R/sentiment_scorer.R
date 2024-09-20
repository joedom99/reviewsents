# ReviewSents - displays the sentiment for each review
# Project for CS50R

sentiment_scorer <- function(text) {
  sentiments <- tibble(text = text) %>%
    unnest_tokens(word, text) %>%
    inner_join(get_sentiments("bing"), by = "word") %>%
    count(sentiment, sort = TRUE) %>%
    pivot_wider(names_from = sentiment, values_from = n, values_fill = 0)
  
  if (nrow(sentiments) == 0) return("neutral")
  if (!"positive" %in% colnames(sentiments)) sentiments$positive <- 0
  if (!"negative" %in% colnames(sentiments)) sentiments$negative <- 0
  
  if (sentiments$positive > sentiments$negative) return("positive")
  else if (sentiments$negative > sentiments$positive) return("negative")
  else return("neutral")
}
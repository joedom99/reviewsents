# ReviewSents - generates a word cloud
# Project for CS50R

library(dplyr)
library(tidytext)
library(wordcloud)
library(RColorBrewer)

word_cloud_generator <- function(text_data) {
  
  # Ensure text_data contains the 'review' column
  if (!"review" %in% colnames(text_data)) {
    stop("The input data must contain a 'review' column.")
  }
  
  # Tokenize the review text into words, remove stop words
  tidy_data <- text_data %>%
    unnest_tokens(word, review) %>%
    anti_join(tidytext::stop_words) %>%
    count(word, sort = TRUE)
  
  # Create a word cloud
  wordcloud(
    words = tidy_data$word,
    freq = tidy_data$n,
    min.freq = 2,
    max.words = 200,
    random.order = FALSE,
    colors = brewer.pal(8, "Dark2")
  )
}

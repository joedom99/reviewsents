\name{sentiment_trend_line}
\alias{sentiment_trend_line}
\title{Sentiment Trend Line Function}
\description{
  This function plots the sentiment trend over time based on the sentiment analysis of review text.
}
\usage{
sentiment_trend_line(data)
}
\arguments{
  \item{data}{A data frame containing at least two columns: 'date' (a date field) and 'review' (a character string of text).}
}
\value{
  A ggplot object displaying the trend of average sentiment over time.
}
\examples{
# Example usage
data <- data.frame(
  date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03')),
  review = c("I love this!", "Not good", "It's okay")
)
sentiment_trend_line(data)
}
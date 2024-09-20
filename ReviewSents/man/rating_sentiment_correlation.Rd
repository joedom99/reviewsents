\name{rating_sentiment_correlation}
\alias{rating_sentiment_correlation}
\title{Rating-Sentiment Correlation Analyzer Function}
\description{
  This function calculates and visualizes the correlation between numerical ratings and the sentiment scores derived from review text.
}
\usage{
rating_sentiment_correlation(data)
}
\arguments{
  \item{data}{A data frame containing two columns: 'rating' (a numeric rating) and 'review' (a character string of review text).}
}
\value{
  A numeric value representing the correlation between the rating and sentiment score, and an optional scatter plot visualizing the relationship.
}
\examples{
# Example usage
data <- data.frame(
  rating = c(5, 1, 3),
  review = c("Fantastic product", "Worst ever", "It's fine")
)
rating_sentiment_correlation(data)
}
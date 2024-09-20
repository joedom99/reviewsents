\name{sentiment_scorer}
\alias{sentiment_scorer}
\title{Sentiment Scorer Function}
\description{
  This function performs sentiment analysis on a given text, categorizing it as positive, neutral, or negative based on the Bing sentiment lexicon.
}
\usage{
sentiment_scorer(text)
}
\arguments{
  \item{text}{A character string of review text to be analyzed.}
}
\value{
  A character value: "positive", "neutral", or "negative" representing the overall sentiment of the input text.
}
\examples{
# Example usage
text <- "I love this product, it is fantastic!"
sentiment_scorer(text)
}
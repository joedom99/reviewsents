\name{word_cloud_generator}
\alias{word_cloud_generator}
\title{Word Cloud Generator Function}
\description{
  This function generates a word cloud from review text, showing the most frequently used words in the dataset.
}
\usage{
word_cloud_generator(text_data)
}
\arguments{
  \item{text_data}{A data frame containing at least one column: 'review', a character string of review text.}
}
\value{
  A word cloud visualization displaying the most frequent words in the reviews.
}
\examples{
# Example usage
text_data <- data.frame(
  review = c("This product is amazing", "Terrible experience", "Good service")
)
word_cloud_generator(text_data)
}
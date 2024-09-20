# ReviewSents

ReviewSents is an R package developed as part of the CS50 R class assignment. It utilizes sentiment analysis to evaluate and visualize sentiments in online reviews, providing valuable insights through trend analysis and rating correlations.

## Features

- **Sentiment Scoring**: Automatically assigns sentiment scores to textual reviews classifying them into positive, negative, or neutral categories.
- **Trend Analysis**: Visualizes sentiment changes over time to identify patterns or anomalies in customer feedback.
- **Rating Correlation**: Analyzes the correlation between numerical ratings and derived sentiment scores to gauge consistency and reliability of ratings.

## Installation

To install the latest version of ReviewSents from GitHub:

```r
# If devtools is not installed
if(!require(devtools)) install.packages("devtools")

# Install ReviewSents from GitHub
devtools::install_github("your_github_username/ReviewSents")
```

## Usage

Here is a simple example to demonstrate how to perform sentiment analysis on a dataset of online reviews:

```r
library(ReviewSents)

# Load your data (ensure it has a 'review' column)
reviews <- read.csv("path_to_your_data.csv")

# Perform sentiment analysis
results <- sentiment_scorer(reviews$review)

# Plot sentiment trend
sentiment_trend_line(results)

# Analyze rating correlations
rating_sentiment_correlation(reviews$rating, results)
```

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

	1.	Fork the Project
	2.	Create your Feature Branch (git checkout -b feature/AmazingFeature)
	3.	Commit your Changes (git commit -m 'Add some AmazingFeature')
	4.	Push to the Branch (git push origin feature/AmazingFeature)
	5.	Open a Pull Request

## License

Distributed under the MIT License. See LICENSE for more information.

## Acknowledgments

	•	Bing Liu’s Lexicon: Utilized for the sentiment analysis algorithm.
	•	CS50 R Class: This project was created as an assignment for the class.
	•	All Contributors: Thanks to everyone who has contributed to the project!

## Contact

Joe Domaleski - jdomaleski@gmail.com
Blog: https://blog.marketingdatascience.ai
Project Link: https://github.com/joedom99/ReviewSents

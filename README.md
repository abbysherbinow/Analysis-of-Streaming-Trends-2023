# Analysis of Streaming Trends in the Most Streamed Songs of 2023

## Overview
This project explores relationships between musical characteristics and streaming performance among the most-streamed songs of 2023. Using R, I examined beats per minute (BPM), musical key, mode, and Spotify chart data to investigate patterns that may be associated with song popularity.

## Research Questions
- How does BPM relate to the number of songs in the dataset and their average streaming counts?
- Which musical keys are most common, and which have the highest average streaming counts?
- Is there an association between musical key and mode?
- What relationship exists between Spotify chart data and total streams?

## Methods
- **Data cleaning:** Removed observations with missing values, excluded rows with blank musical-key values, and removed one additional observation identified during data review.
- **Exploratory data analysis:** Used bar charts and frequency tables to examine distributions of BPM, musical key, and mode.
- **Descriptive statistics:** Calculated summary statistics for total streams and BPM.
- **Regression and correlation:** Examined the relationship between Spotify chart counts and total streams using correlation and linear regression.
- **Chi-squared hypothesis testing:** Tested for an association between musical key and mode.

## Key Findings
- **Streaming performance and Spotify chart counts:** The analysis found a weak positive correlation between Spotify chart counts and total streams (\(r = 0.253\)). Linear regression showed a statistically significant relationship, but the model explained only about 6.4% of the variation in streams.
- **Musical key and mode:** A chi-squared test found a statistically significant association between musical key and mode (\(\chi^2 = 75.841\), \(df = 10\), \(p < 0.001\)).

## Tools
- R
- Data visualization and exploratory data analysis
- Descriptive statistics
- Regression analysis and hypothesis testing

## Dataset
The analysis uses the *Most Streamed Spotify Songs 2023* dataset from Kaggle, which contains song characteristics and streaming-related metrics.

## Limitations
The analysis uses 857 observations after data cleaning. Rows with blank musical-key values and one additional observation were excluded. BPM was grouped into intervals for visualization, limiting the ability to assess individual song-level patterns. Although Spotify chart counts and total streams had a statistically significant positive relationship, the regression model explained only about 6.4% of the variation in streams. Observed associations do not establish causation.

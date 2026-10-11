# Analysis of Streaming Trends in the Most Streamed Songs of 2023

## Overview
This project explores relationships between musical characteristics and streaming performance among the most-streamed songs of 2023. Using R, I examined beats per minute (BPM), musical key, mode, and Spotify chart data to investigate patterns that may be associated with song popularity.

## Research Questions
- How does BPM relate to the number of songs in the dataset and their average streaming counts?
- Which musical keys are most common, and which have the highest average streaming counts?
- Is there an association between musical key and mode?
- What relationship exists between Spotify chart data and total streams?

## Methods
- **Data cleaning:** Removed observations with missing values and one additional observation identified during data review.
- **Exploratory data analysis:** Used bar charts and frequency tables to examine distributions of BPM, musical key, and mode.
- **Descriptive statistics:** Calculated summary statistics for total streams and BPM.
- **Regression and correlation:** Examined the relationship between Spotify chart data and total streams.
- **Chi-squared hypothesis testing:** Tested for an association between musical key and mode.

## Tools
- R
- Data visualization and exploratory data analysis
- Descriptive statistics
- Regression analysis and hypothesis testing

## Dataset
The analysis uses the *Most Streamed Spotify Songs 2023* dataset from Kaggle, which contains song characteristics and streaming-related metrics.

## Limitations
The analysis excludes observations with missing values, reducing the dataset from 943 to 857 observations. BPM was grouped into intervals for visualization, which limits the ability to assess individual song-level patterns. Observed associations do not establish causation or guarantee that musical characteristics can predict a song's popularity.

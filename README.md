### Scott Anderson and Jack Eibes Data Wrangling Project

### In this project, Jack and I web scraped movie data from metacritic using Rstudio, and merged this data with a kaggle dataset. We wanted to answer three questions: 1.	Is there a correlation between the gross income that a movie generates and the certification of the movie? 2. What does the relationship between gross income and meta score look like? 3. Is there a strong or weak correlation between the run time and meta score for movies?

### All code is available to be able to run this project completely. Links needed for this are: 1.	https://www.metacritic.com/browse/movie/ 2.	https://www.kaggle.com/datasets/willianoliveiragibin/10000-data-about-movies-1915-2023

### However, since metacritic reviews and top movies are actively chaning, I am going to explain how to do the exact analysis done in the Fall of 2023.

### Load the merged_data_for_analysis.Rdata file into Rstudio. Once this is done - the analysis code can be loaded into Rstudio with the analysis_code.R. Run analysis_code.R to get the results!

### When looking at the plots and graphs when running the analysis_code.R (merged_data_for_analysis.Rdata MUST be loaded into environment beforehand). We had these interpretations to our three questions: 

### 1.	Is there a correlation between the gross income that a movie generates and the certification of the movie? There is a strong correlation between the certification of the movie and the gross income brought in by each movie. It does appear that the data may have a little skew due to the high number of R occurrences within the dataset. 

### 2.	What does the relationship between gross income and meta score look like? There is a positive relationship between gross income and meta score. Per figure 2, the higher the meta score, the more likely it is that the movie will have a higher gross income. 

### 3.	Is there a strong or weak correlation between the run time and meta score for movies? There is a fairly weak correlation between the run time of a movie and the meta score for them. It must be kept in mind that a lot of movies have a similar run time (around 2 hours / 120 minutes). This skews the data towards these figures and leaves us with outliers.

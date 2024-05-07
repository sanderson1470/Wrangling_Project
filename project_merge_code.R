#Scott Anderson & Jack Eibes
rm(list=ls())

kaggle_df <- read.csv("kaggle_dataset.csv")
movies_metacritic_cleaned <- read.csv("movies_metacritic_cleaned.csv")

merged_df <- merge(kaggle_df, movies_metacritic_cleaned, by = c("title", "release_date"), all = TRUE)

write.csv(merged_df, "project_merged_dataframe.csv", row.names = FALSE)

#Scott Anderson & Jack Eibes
rm(list=ls())

official_data <- read.csv("project_merged_dataframe.csv")

#One final cleaning for the meta score column
official_data$meta_score <- gsub("[^0-9.]", "", official_data$meta_score)

#Analysis 1

library(dplyr)
library(ggplot2)
library(scales)  # For the comma formatting function

# Assuming 'official_data' is the name of your dataframe
average_data <- official_data %>%
  group_by(certification) %>%
  summarise(avg_gross = mean(gross, na.rm = TRUE))

# Create the bar plot with adjusted Y-axis labels
ggplot(average_data, aes(x = certification, y = avg_gross, fill = certification)) +
  geom_bar(stat = "identity") +
  labs(title = "Average Gross by Certification",
       x = "Certification",
       y = "Average Gross") +
  scale_y_continuous(labels = scales::comma) +  # Adjust the Y-axis labels
  theme_minimal()

#Analysis 2

average_data <- official_data %>%
  group_by(meta_score) %>%
  summarise(avg_gross = mean(gross, na.rm = TRUE))

# Create the bar plot with adjusted Y-axis labels
ggplot(average_data, aes(x = factor(meta_score), y = avg_gross, fill = factor(meta_score))) +
  geom_bar(stat = "identity") +
  labs(title = "Average Gross by Meta Score",
       x = "Meta Score",
       y = "Average Gross") +
  scale_y_continuous(labels = scales::comma) +  # Adjust the Y-axis labels
  theme_minimal()

#Analysis 3

plot(official_data$run_time, official_data$meta_score,
  xlab = "Run Time", ylab = "MetaScore",
  main = "Run Time and Metascore Correlation")



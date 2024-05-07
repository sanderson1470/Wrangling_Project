#Scott Anderson & Jack Eibes

rm(list=ls())

install.packages("xml2")
library(xml2)
user_agent <- "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36"
Start <- Sys.time()
#10 Pages
movies_metacritic <- data.frame()
for (i in 1:20){
  print(i)
  curr_page <- paste("https://www.metacritic.com/browse/movie/?releaseYearMin=2000&releaseYearMax=2023&page=", i, sep="")
  page <- read_html(curr_page, user_agent)
  Sys.sleep(5) 
  title <- xml_text(xml_find_all(page, "//h3[@class='c-finderProductCard_titleHeading']/span[2]"))
  release_date <- xml_text(xml_find_all(page, "//div[@class='c-finderProductCard_meta']/span[1]"))
  meta_score <- xml_text(xml_find_all(page, "//div[@class='c-finderProductCard_meta g-outer-spacing-top-auto']/span[1]"))
  movies_scraping <- data.frame(title, release_date, meta_score)
  movies_metacritic <- rbind(movies_metacritic, movies_scraping)
  rv <- sample(3:15, 1)
  Sys.sleep(rv)
}
write.csv(movies_metacritic, "Metacritic.csv")
Stop <- Sys.time()
print(Start)
print(Stop)
print(Stop-Start)

movies_metacritic$release_date <- trimws(movies_metacritic$release_date)
write.csv(movies_metacritic, "movies_metacritic.csv", row.names = FALSE)

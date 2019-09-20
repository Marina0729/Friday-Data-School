.libPaths(c("C:/Users/ale097/Data School/Packages"))
library(tidyverse)
read_csv("data/gapminder.csv")
gapminder <- read_csv("data/gapminder.csv")
select(gapminder, country, year, pop)
gapminderfiltered <- select(gapminder, country, year, pop)
filter(gapminderfiltered, country == "Australia")
australia <- filter(gapminderfiltered, country == "Australia")

#select will return columns
select(filter(gapminder, country =="Australia"), country, year, pop)


#filter will return rows
filter(select(gapminder, country, year, pop), country == "Australia")


select(gapminder, year, pop)

#piping is a way of funneling down 
gapminder %>% select(year, pop)

gapminder %>% filter(country == "Australia") %>% 
  select(country,year, pop)

filter(gapminder, country == "Australia", year >=1997)
#or with piping
small <- gapminder %>% filter(country=="Australia", year >=1997)
small

gapminder %>% 
  filter(country == "Australia") %>% 
  select(country, year, pop)
#this is much easier to read

Australian_Year_Pop <- gapminder %>% 
  filter(country == "Australia") %>% 
  select(country, year, pop)

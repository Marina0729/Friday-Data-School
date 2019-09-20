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
#We are creating a data frame Australian_Year_Pop using the gapminder data frame 
#then filter from that where the country is Australia then filter the colums 
#country, year and pop

Australian_Year_Pop <- gapminder %>% 
  filter(country == "Australia") %>% 
  select(country, year, pop) %>% 
  rename(population = pop)

Australian_Year_Pop

#mutate
mutate(gapminder, gdp = gdpPercap * pop)
gapminder
mutate(gapminder, popmillion = pop/1000000 )
popmillion <- mutate(gapminder, popmillion = pop/1000000 )

mutate(gapminder, poplog = log(pop))
poplog <- mutate(gapminder, poplog = log(pop))

#string subset to shorten cell names
str_sub("A long bit of text", start = 1, end = 5)

mutate(gapminder, country_abbr = str_sub(country, start=1, end = 3))

#new column with the number of characters in a country's name
mutate(gapminder, characters_in_country = str_length(country))
characters_in_country <- mutate(gapminder, characters_in_country = str_length(country))

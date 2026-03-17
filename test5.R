#Part 1
library(tidyverse)
library(gapminder)
gapminder
glimpse(gapminder)
head(gapminder)
#Part 2
gapminder %>%
  select(country, year)
gapminder %>%
  select(country, continent, year, lifeExp)
#Part 3
gapminder %>% 
  filter(year == 2002 & country=="Australia")
gapminder %>% 
  filter (country %in% c("Australia", "China") & year ==2002)
#Part 4
gapminder %>% arrange()
gapminder %>% arrange(desc(country))
#Part 5
new_db <- gapminder %>% 
  mutate(lifeExp = lifeExp * 100)
new_db
new_after_boss <- gapminder %>%
  mutate(country=paste0(country," Boss"))
new_after_boss
#Part 6
gapminder %>%
  filter(year==1952) %>%
  summarise(Life_Exp=mean(lifeExp) , GDP_PER_CAP=max(gdpPercap))
#Part 7
gapminder %>%
  group_by(year) %>%
  summarise(Life_Exp=mean(lifeExp) , GDP_PER_CAP=max(gdpPercap))
#Part 8
gapminder %>%
  count(continent, sort=TRUE)
#Part 9
gapminder %>%
  filter(year==1952) %>%
  count(continent,wt=pop,sort = FALSE)
# Part 10
gapminder %>%
  group_by(continent)%>%
  top_n(-1, gdpPercap)
# Find the countries with the highest life expectancy, in months, in the year 2007
gapminder %>%
  filter(year == 2007) %>%
  mutate(lifeExp_months = lifeExp * 12) %>%
  filter(lifeExp == max(lifeExp)) %>%
  select(country, lifeExp, lifeExp_months)


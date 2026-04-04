install.packages("fivethirtyeight")
install.packages("lubridate")
install.packages("dplyr")
library(dplyr)
library(lubridate)
library(fivethirtyeight)
head(biopics,10)

biopics %>%
  is.na() %>% 
  colSums()
ModEl <- lm(box_office ~ country + year_release, 
              data = biopics)
median(abs(biopics$box_office - ModEl$fitted.values), na.rm = TRUE)
#mean imputation
install.packages("VIM")
library(VIM)
head(tao,10)
tao %>%
  is.na() %>% 
  colSums()
tao %>%
  group_by(Year) %>%
  summarise(missing_air_temp = sum(is.na(Air.Temp)))
tao_imp <- tao %>% 
  # Create a binary indicator for missing values in air_temp
  mutate(Air.Temp_imp = ifelse(is.na(Air.Temp), TRUE, FALSE)) %>%
  # Impute air_temp with its mean
  mutate(Air.Temp = ifelse(is.na(Air.Temp), mean(Air.Temp, na.rm = TRUE), Air.Temp))
tao_imp %>%
  is.na() %>% 
  colSums()
tao_imp %>% 
  select(Air.Temp, Sea.Surface.Temp, Air.Temp_imp) %>%
  marginplot(delimiter = "imp")
#Hot Deck Method
tao_imps <- hotdeck(tao, variable = "Air.Temp")
print(tao_imps)
tao_imps %>% 
  select(Air.Temp, Sea.Surface.Temp, Air.Temp_imp) %>% 
  marginplot(delimiter = "imp")
tao_imps <- hotdeck(tao, variable = "Air.Temp",domain_var = "Year")
tao_imps %>% 
  select(Air.Temp, Sea.Surface.Temp, Air.Temp_imp) %>% 
  marginplot(delimiter = "imp")
tao_imps %>%
  is.na() %>% 
  colSums()
tao_imps <- hotdeck(tao, variable = "Humidity")
tao_imps %>%
  is.na() %>% 
  colSums()
tao_imps %>% 
  select(Humidity, Sea.Surface.Temp, Air.Temp) %>% 
  marginplot(delimiter = "imp")


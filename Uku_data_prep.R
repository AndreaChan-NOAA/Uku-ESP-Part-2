library(rvest)
library(NEesp2)
library(here)
library(ecodata)

#MRIP queries for recreational trips, catch, and landings
uku_catch <- get_mrip_catch(species = "GREEN JOBFISH",
                            type = "all", 
                            region = "hawaii")
#uku_catch_Pacific <- get_mrip_catch(species = "GREEN JOBFISH",
#                                    type = "all", 
#                                    region = "pacific coast")
head(uku_catch)
#head(uku_catch_Pacific)
  #No records matched your query parameters
uku_rec_landings <- get_mrip_catch(species = "GREEN JOBFISH",
                                   type = "landings",
                                   region = "hawaii")
head(uku_rec_landings)

#Format data for use in ESPs
esp_catch <- create_total_mrip(uku_catch$data,
                               var_name = "catch")
### Removing data that does not meet MRIP standards. 
###If you want to keep this data, set `remove_non_standard = FALSE`.
head(esp_catch) |>
  knitr::kable()

esp_rec_landings <- create_total_mrip(uku_rec_landings$data,
                                  var_name = "rec_landings")
### Removing data that does not meet MRIP standards. 
###If you want to keep this data, set `remove_non_standard = FALSE`.
head(esp_rec_landings) |>
  knitr::kable()

#Save data
save_catch(
  this_species = "green jobfish",
  this_region = "hawaii",
  out_folder = here::here("./mrip_data"),
  catch_type = "all")
#Data saved at: C:/Users/andrea.chan/Documents/Github/Uku-ESP-Part-2/./mrip_data/catch_all_green_jobfish_hawaii.Rds
save_catch(
  this_species = "green jobfish",
  this_region = "hawaii",
  out_folder = here::here("./mrip_data"),
  catch_type = "landings")
#Data saved at: C:/Users/andrea.chan/Documents/Github/Uku-ESP-Part-2/./mrip_data/catch_landings_green_jobfish_hawaii.Rds

#Plot data
plt_indicator(esp_catch) #Need column names to be INDICATOR_NAME, DATA_VALUE, YEAR
plt_indicator(esp_rec_landings) #Need column names to be INDICATOR_NAME, DATA_VALUE, YEAR

#Total Recreational Trips
trips_2005 <- get_mrip_trips(species = "GREEN JOBFISH", 
                             region = "hawaii", 
                             year = "2005") #one year at a time
##2002-2005 queries yielded no data
#Automate data pulls with save_trips()
# create parameter grid
params <- expand.grid(
  region = "hawaii",
  year = c(2022:2025),
  species = "green jobfish"
)

# iterate
purrr::map(
  purrr::list_transpose(list(
    region = params$region,
    year = params$year,
    species = params$species
  )),
  ~ try(NEesp2::save_trips(
    this_species = .x$species,
    this_year = .x$year,
    this_region = .x$region,
    out_folder = here::here("./mrip_data")
  ))
)
#wrangle data, with correct path
esp_trips <- create_mrip_trips(
  files = list.files(path = "./mrip_data/green_jobfish_trips",
                     pattern = "trips_green_jobfish_hawaii*",
                     recursive = TRUE,
                     full.names = TRUE
  )
)

esp_trips |>
  knitr::kable()

plt_indicator(esp_trips)

#########################Plot FOSS Data################################
library(tidyverse)
data <- read.csv("./FOSS_data/FOSS_commercial_uku_landings.csv", 
                 header = TRUE, 
                 stringsAsFactors = FALSE)
head(data)

data_cleaned <- data %>%
  mutate(Pounds = str_replace_all(Pounds,
                                  pattern = ",",
                                  replacement = ""))%>%
  mutate(Dollars = str_replace_all(Dollars,
                                  pattern = ",",
                                  replacement = ""))%>%
  mutate(across(c(Pounds,Dollars),as.numeric))
head(data_cleaned)

data_plus <- data_cleaned %>%
  mutate(PRICE_PER_POUND = Dollars/Pounds)
head(data_plus)

#Plot commercial landings using NEesp2 plt_indicator
#Need column names to be INDICATOR_NAME, DATA_VALUE, YEAR
data_plus_landings <- data_plus %>% 
  rename(INDICATOR_NAME = Collection,
         DATA_VALUE = Pounds,
         YEAR = Year)
plt_indicator(data_plus_landings)

#Plot commercial price per pound using NEesp2 plt_indicator
#Need column names to be INDICATOR_NAME, DATA_VALUE, YEAR
data_plus_PPP <- data_plus %>% 
  rename(INDICATOR_NAME = Collection,
         DATA_VALUE = PRICE_PER_POUND,
         YEAR = Year)
plt_indicator(data_plus_PPP)

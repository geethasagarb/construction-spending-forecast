# Set all figures to be center aligned
knitr::opts_chunk$set(
  fig.align = "center"
)

# List of libraries to install and load
packages <- c(
  "tidyverse", # includes ggplot2, dplyr, tidyr, readr, purrr, tibble, stringr, forcats
  'fpp3',
  "janitor", # for cleaning data
  "lubridate",  # for working with dates
  "gt",  # for making tables
  "patchwork",  # for making plots
  "kableExtra",  # for making tables
  "gapminder", # world bank data
  "fredr", # fred data
  'WDI', # world bank data
  'fpp3', # forecasting datasets
  "tsibble", # for working with time series data
  'slider', # for rolling functions
  'feasts', # for forecasting attributes
  'fable', # for forecasting methods
  'corrplot', # for correlation plots
  'DT', # for interactive tables
  'data.table', # for data manipulation,
  'changepoint', # for changepoint detection,
  'fable.prophet', # fable prophet implementation
  'imputeTS' # for imputing missing values
)

# Install and Load Libraries
lapply(packages,function(name){

if(length(find.package(name,quiet=TRUE)) == 0){
  install.packages(name)
  require(name,character.only = TRUE)
} else {

  require(name,character.only = TRUE)
}

})

# Set Theme
theme_set(theme_bw())

# Set Seed
set.seed(1234)
#Download packages and datasets
list.of.packages <- c("nycflights13", 
                      "gapminder", 
                      "Lahman", 
                      "tidyverse", 
                      "readxl", 
                      "fivethirtyeight", 
                      "broom")

new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages) > 0) install.packages(new.packages)


# set system langaue to english, just in case
Sys.setenv(LANGUAGE = "en")



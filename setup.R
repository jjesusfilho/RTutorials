  
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


# library(readxl)
# 
# enrollment <- "S:/Data Analytics/Resource Library/R Help/Assignment/Enrollment.xlsx"
# 
# # Define A Load Data Functions
# loaddata <- function(file, sheetname, cn){
#   x <- read_excel(file, sheet = sheetname, na = "", col_names = cn)
#   valid_column_names <- make.names(names=names(x), unique=TRUE, allow_ = TRUE)
#   names(x) <- valid_column_names
#   return(x)
# }
# 
# # Load the Data (fill in these commands)
# lastyearEnrollment <- loaddata(enrollment, 1, T)
# thisyearEnrollment <- loaddata(enrollment, 2, T)
# schoolMap <- loaddata(enrollment, 3, T)
# 
# 
# IAdata <- "S:/Data Analytics/Interim Assessments/SY15-16/Source files/Tableau/Raw Data_v1_SY1516_upload.xlsx"
# coltypes <- rep("text", 23)
# coltypes[c(13, 20, 21)] <- "numeric"
# IAs <- read_excel(IAdata, "Student IA Results", col_names=T, col_types=coltypes)
# valid_column_names <- make.names(names=names(IAs), unique=TRUE, allow_ = TRUE)
# names(IAs) <- valid_column_names
# 
# assessMap <- loaddata(IAdata, "Assessment mapping", T) %>%
#   select(Assessment.Name:Year)
# 
setwd("S:/Data Analytics/Resource Library/R Help/data")

# saveRDS(IAs, "IAs.rds")
# saveRDS(assessMap, "assessMap.rds")
# saveRDS(schoolMap, "schoolMap.rds")
# saveRDS(lastyearEnrollment, "lastyearEnrollment.rds")
# saveRDS(thisyearEnrollment, "thisyearEnrollment.rds")


IAs <- readRDS("IAs.rds")
assessMap <- readRDS("assessMap.rds")
schoolMap <- readRDS("schoolMap.rds")
lastyearEnrollment <- readRDS("lastyearEnrollment.rds")
thisyearEnrollment <- readRDS("thisyearEnrollment.rds")

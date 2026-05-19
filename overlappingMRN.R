library(readxl)
library(readr)
library(dplyr)


file1 <- "C:/Users/heidi/OneDrive/Desktop/For Rossa/Bushra_csv.xlsx"
file2 <- "C:/Users/heidi/OneDrive/Desktop/For Rossa/Newcastle_DPLD_transplant_database.csv"


bushra <- read_excel(file1)
newcastle <- read_csv(file2)


names(bushra)
names(newcastle)


bushra_mrn <- bushra %>%
  mutate(MRN = as.character(MRN)) %>%
  distinct(MRN)

newcastle_mrn <- newcastle %>%
  mutate(MRN = as.character(MRN)) %>%
  distinct(MRN)


overlap_mrn <- inner_join(bushra_mrn, newcastle_mrn, by = "MRN")

n_overlap <- nrow(overlap_mrn)

print(n_overlap)

print(overlap_mrn)

write_csv(
  overlap_mrn,
  "C:/Users/heidi/OneDrive/Desktop/For Rossa/overlapping_MRNs.csv"
)
##########
###########
library(readr)
library(dplyr)

file1 <- "C:/Users/heidi/OneDrive/Desktop/For Rossa/Bushra_csv.csv"
file2 <- "C:/Users/heidi/OneDrive/Desktop/For Rossa/Newcastle_DPLD_transplant_database.csv"

bushra <- read_csv(file1)
newcastle <- read_csv(file2)

names(bushra)
names(newcastle)

bushra_mrn <- bushra %>%
  mutate(MRN = trimws(as.character(MRN))) %>%
  filter(!is.na(MRN), MRN != "") %>%
  distinct(MRN)

newcastle_mrn <- newcastle %>%
  mutate(MRN = trimws(as.character(MRN))) %>%
  filter(!is.na(MRN), MRN != "") %>%
  distinct(MRN)

overlap_mrn <- inner_join(bushra_mrn, newcastle_mrn, by = "MRN")


print(nrow(overlap_mrn))

print(overlap_mrn)




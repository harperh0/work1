library(readr)
library(dplyr)
library(ggplot2)

Bor <- read_csv("data/Rents_borough.csv")
Pos <- read_csv("data/Rents_postcode.csv")

summary(Bor)
summary(Pos)

# Filter rows where Bedroom Category is "Room"
Bor_room <- Bor %>% filter(`Bedroom Category` == "Room")
Bor_stu <- Bor %>% filter(`Bedroom Category` == "Studio")
Bor_1 <- Bor %>% filter(`Bedroom Category` == "One Bedroom")
Bor_2 <- Bor %>% filter(`Bedroom Category` == "Two Bedrooms")
Bor_3 <- Bor %>% filter(`Bedroom Category` == "Three Bedrooms")
Bor_4 <- Bor %>% filter(`Bedroom Category` == "Four or More Bedrooms")

# Filter rows where Bedroom Category is "Room" with borough, count and median
Bor_room <- Bor %>% 
  filter(`Bedroom Category` == "Room") %>% 
  select(`Borough`, `Bedroom Category`, `Median`, `Count of rents`)
Bor_stu <- Bor %>% 
  filter(`Bedroom Category` == "Studio") %>% 
  select(`Borough`, `Bedroom Category`, `Median`, `Count of rents`)
Bor_1 <- Bor %>% 
  filter(`Bedroom Category` == "One Bedroom") %>% 
  select(`Borough`, `Bedroom Category`, `Median`, `Count of rents`)
Bor_2 <- Bor %>% 
  filter(`Bedroom Category` == "Two Bedrooms") %>% 
  select(`Borough`, `Bedroom Category`, `Median`, `Count of rents`)
Bor_3 <- Bor %>% 
  filter(`Bedroom Category` == "Three Bedrooms") %>% 
  select(`Borough`, `Bedroom Category`, `Median`, `Count of rents`)
Bor_4 <- Bor %>% 
  filter(`Bedroom Category` == "Four or More Bedrooms") %>% 
  select(`Borough`, `Bedroom Category`, `Median`, `Count of rents`)

# Filter rows where Bedroom Category is "Room" with borough, count and median
Pos_room <- Pos %>% 
  filter(`Bedroom Category` == "Room") %>% 
  select(`Postcode District`, `Bedroom Category`, `Median`, `Count of rents`)
Pos_stu <- Pos %>% 
  filter(`Bedroom Category` == "Studio") %>% 
  select(`Postcode District`, `Bedroom Category`, `Median`, `Count of rents`)
Pos_1 <- Pos %>% 
  filter(`Bedroom Category` == "One Bedroom") %>% 
  select(`Postcode District`, `Bedroom Category`, `Median`, `Count of rents`)
Pos_2 <- Pos %>% 
  filter(`Bedroom Category` == "Two Bedrooms") %>% 
  select(`Postcode District`, `Bedroom Category`, `Median`, `Count of rents`)
Pos_3 <- Pos %>% 
  filter(`Bedroom Category` == "Three Bedrooms") %>% 
  select(`Postcode District`, `Bedroom Category`, `Median`, `Count of rents`)
Pos_4 <- Pos %>% 
  filter(`Bedroom Category` == "Four or More Bedrooms") %>% 
  select(`Postcode District`, `Bedroom Category`, `Median`, `Count of rents`)

# export
write.csv(Bor_room, "Bor_room.csv", row.names = FALSE)
write.csv(Bor_stu, "Bor_stu.csv", row.names = FALSE)
write.csv(Bor_1, "Bor_1.csv", row.names = FALSE)
write.csv(Bor_2, "Bor_2.csv", row.names = FALSE)
write.csv(Bor_3, "Bor_3.csv", row.names = FALSE)
write.csv(Bor_4, "Bor_4.csv", row.names = FALSE)
write.csv(Pos_room, "Pos_room.csv", row.names = FALSE)
write.csv(Pos_stu, "Pos_stu.csv", row.names = FALSE)
write.csv(Pos_1, "Pos_1.csv", row.names = FALSE)
write.csv(Pos_2, "Pos_2.csv", row.names = FALSE)
write.csv(Pos_3, "Pos_3.csv", row.names = FALSE)
write.csv(Pos_4, "Pos_4.csv", row.names = FALSE)
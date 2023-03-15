library(tidyverse)
library(ggplot2)

bookings_df <- read.csv("test/hotel_bookings.csv")

onlineta_city_hotels <- filter(bookings_df,(hotel=="City Hotel" & bookings_df$market_segment=="Online TA")) #nolint

View(onlineta_city_hotels)

ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))

setwd("~/Desktop")

devtools::install("youngmetro")

devtools::document("youngmetro")

install.packages("devtools")
devtools::install_github("aaronbaggett/youngmetro")


library(dplyr)
library(ggplot2)

# Compare monthly home sales in Austin, TX (2006, 2009)
tx_bubble <- txhousing %>% 
  group_by(month, year) %>% 
  filter(city == "Austin") %>% 
  filter(year == "2006" | year == "2009") %>% 
  summarize(sales = sum(sales))

txhousing %>% 
  group_by(year) %>% 
  filter(city == "Austin") %>% 
  filter(year == "2006" | year == "2009") %>% 
  summarize(mean_sales = mean(sales))

# Line plot of monthly home sales in Austin, TX, 2006 and 2009
ggplot(data = tx_bubble, aes(x = month, y = sales, color = factor(year))) +
  geom_point(size = 2.5) + geom_line() + 
  scale_x_continuous(breaks = seq(1, 12, 1), name = "\nMonth") +
  scale_y_continuous(limits = c(500, 3500), 
    breaks = seq(500, 3500, 500), name = "Number of Sales\n") +
  scale_color_manual(values = c("dodgerblue", "tomato"), 
    name = "Year") + theme_classic() +
  theme(axis.title = element_text(size = 13, 
    face = "bold"), axis.text = element_text(size = 11)) + 
  theme(legend.text = element_text(size = 11), 
    legend.title = element_text(size = 13, face = "bold")) + 
  theme(legend.position = "right")

# Regression model of sales
tx_bubble$year <- factor(tx_bubble$year)
tx_bubble$year <- relevel(tx_bubble$year, ref = "2006")
tx_lm <- lm(sales ~ year, data = tx_bubble)
summary(tx_lm)
xtable::xtable(summary(tx_lm))

tx_lm <- lm(scale(sales) ~ year, data = tx_bubble)
summary(tx_lm)

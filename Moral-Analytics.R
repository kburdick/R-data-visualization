#########################################
#### Purpose: Demonstration of Morality in Data Analytics
#### Author: Kurt Burdick
#### date modified: 12-16-19
#########################################

library(mdsr)
library(readr)
library(readxl)
library(dplyr)

# change to have the appropriate path for the file
myxl <- "~/4-19-FALL-Ithaca/MATH-348/Murder-by-Weapons.xlsx" 

# this file contains data on murder totals for each instrument and overall totals in the state of florida 
# Florida 1995 - 2018

murderData <- read_excel(myxl)

murderData


# this is the code that helps me create the plot!
murderData2 <- murderData

murderData2 <- murderData %>% 
  select(Year, Firearm)

murderData2

murderData2 <- na.omit(murderData2)

murderData2

tail(murderData2, 5)

plot1 <- murderData2 %>%
  ggplot( aes(x = Year, y = Firearm, group = 1)) + 
  geom_area( aes(fill = "red"))  +
  geom_line(size = 3) + 
  geom_point(shape = 21, color = "white", fill = "black", stroke = 1.5, size = 4) +
  scale_y_reverse() +
  xlab("Year") + ylab("Number of Murders committed using firearms") +
  labs(caption = "Source: Florida Department of Law Enforcement") +
  theme(legend.position = "none")

plot1

# this is a plot that is demonstrating the wrongful data manupulation of an example 
# plot from the book Modern Data Science with R.

plot2 <- murderData2 %>%
  ggplot( aes(x = Year, y = Firearm, group = 1)) + 
  geom_area( aes(fill = "red"))  +
  geom_line(size = 3) + 
  geom_point(shape = 21, color = "white", fill = "black", stroke = 1.5, size = 4) +
  xlab("Year") + ylab("Number of Murders committed using firearms") +
  labs(caption = "Source: Florida Department of Law Enforcement") +
  theme(legend.position = "none")

plot2

# shows the increase in murders in Florida due to the stand your ground law
# being enacted in 2005

# shows misleading data analytics and represents the power that scientists have
# with a single line of extra code.
#
############################################
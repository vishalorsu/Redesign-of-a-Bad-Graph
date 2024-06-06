library(ggplot2)
library(dplyr)
library(readxl)
# Redesigned Graph 1

# Read in data from Excel file
CricInfo <- read_excel("D:/RWorkshop/W35.xlsx")
y
# Create bar plot of averages with borders, thin bars, and color gradient in descending order
avg_plot <- ggplot(CricInfo, aes(x = reorder(Batsman, -Average), y = Average, fill = Average)) +
  geom_bar(stat = "identity", color = "black", width = 0.5) +
  geom_text(aes(label = sprintf("%.2f", Average)), vjust = -0.5, size = 3) +
  scale_fill_gradient(low = "skyblue", high = "#023858") +
  labs(title = "Indian Batsmen vs Left Arm Pace",
       subtitle = "Batting averages since World Cup 2015",
       x = "Batsman",
       y = "Batting Average (runs)") +
  theme(plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5),
        axis.text.x = element_text(hjust = 0.5))

# Display the plot
avg_plot

#----------------------------------------------------------------------------
# Redesigned Graph 2

library(ggplot2)
library(dplyr)
library(readxl)

# Read in data from Excel file
CricInfo <- read_excel("D:/RWorkshop/W35.xlsx")

# Create bar plot of dismissals with borders, thin bars, and color gradient in descending order
dismissals_plot <- ggplot(CricInfo, aes(x = reorder(Batsman, -Dismissals), y = Dismissals, fill = Dismissals)) + 
  geom_bar(stat = "identity", color = "black", width = 0.5) +
  xlab("Batsman") + ylab("Number of Dismissals") +
  scale_fill_gradient(low = "#FFC0CB", high = "#990000") +
  ggtitle("Indian Batsmen vs Left Arm Pace") +
  labs(subtitle = "Dismissals since World Cup 2015") +
  geom_text(aes(label = Dismissals), vjust = -0.5) +
  theme(plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5),
        axis.text.x = element_text(hjust = 0.5),
        axis.title.y = element_text(margin = margin(t = 0, r = 10, b = 0, l = 0)))

# Display the plot
dismissals_plot
#-------------------------------------------------------------------------------
# Redesigned Graph 3

# Load the required libraries
library(ggplot2)
library(readxl)
library(tidyr)

# Load the data from the excel file
data <- read_excel("D:/RWorkshop/W35.xlsx")

# Convert data to long format
data_long <- pivot_longer(data, cols = c("Average", "Dismissals"), names_to = "Variable", values_to = "Value")

# Create the plot
ggplot(data_long, aes(x = reorder(Batsman, desc(Value)), y = Value, fill = Variable)) +
  geom_bar(stat = "identity", position = "dodge", width = 0.6, color = "black", size = 0.2) + # Customize the bar appearance
  scale_fill_manual(values = c("skyblue", "tomato")) +
  labs(x = "Batsman", y = "Value", 
       title = "Indian Batsmen vs Left Arm Pace", 
       subtitle = "Batting averages and Dismissals since World Cup 2015",
       caption = "Source: D:/RWorkshop/W35.xlsx") +
  theme_classic() +
  geom_text(aes(label = Value), position = position_dodge(width = 0.6), vjust = 0, hjust= -0.5, size = 4) + # Adjust the size of the text labels
  coord_flip() + # Flip the x and y axis to display horizontal bars
  theme(plot.title = element_text(size = 16, face = "bold"),
        plot.subtitle = element_text(size = 14),
        plot.caption = element_text(hjust = 1),
        axis.text = element_text(size = 12),
        axis.title = element_text(size = 14, face = "bold"),
        legend.position = "bottom",
        legend.title = element_blank(),
        legend.text = element_text(size = 12)) +
  scale_y_continuous(expand = expansion(mult = c(0.05, 0.1))) + # Set the amount of expansion for the y-axis scale
  theme(panel.spacing = unit(0.3, "lines"), panel.grid.major.y = element_blank()) + # Adjust the panel spacing and remove the horizontal gridlines
  guides(fill = guide_legend(reverse = TRUE)) # Reverse the order of the legend items
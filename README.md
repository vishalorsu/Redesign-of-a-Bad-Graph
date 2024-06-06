# Redesign of Graph Illustrating Indian Batsmen Performance Against Left-Arm Bowlers

## Overview

This project presents a redesign of a poorly constructed graph that attempted to show the performance of Indian batsmen against left-arm bowlers since the 2015 Cricket World Cup. The original graph was ineffective due to several flaws such as a lack of accurate pointers, the use of non-standard figures, overlapped plots, and improper scales. We used data from ESPN CricInfo and employed R to redraw three graphs, which more effectively illustrate the batting average and number of dismissals of five Indian batsmen against left-arm seamers since the 2015 World Cup.

## Author
- Vishal Orsu
- 
## Project Objectives

1. To demonstrate the importance of proper graph design in effectively communicating data.
2. To redesign a flawed graph to better illustrate the performance of Indian batsmen against left-arm bowlers.
3. To utilize R and ggplot2 for creating clear and informative data visualizations.

## Methodology

- **Data Source**: ESPN CricInfo
- **Tools Used**: RStudio, ggplot2
- **Steps**:
  1. Data extraction and cleaning
  2. Redesigning graphs using ggplot2 in R
  3. Incorporating best practices in graph design, such as using grid lines, scales, and gradients.

## Redesign Details

### Original Visualization Issues

- **Useless Y-Axis Scale**: The original graph had an unclear and unlabeled y-axis.
- **Non-Standard Figures**: Use of non-standard figures instead of bars was distracting.
- **Lack of Labels**: Important data points were not clearly labeled.

### Redesigned Graphs

1. **Batting Average of 5 Indian Batsmen Against Left-Arm Seamers**
2. **Number of Dismissals of 5 Indian Batsmen Against Left-Arm Seamers**
3. **Combined Graph of Batting Average and Number of Dismissals**

### Design Improvements

- Use of standard bar charts.
- Clear and appropriate scales and axis labels.
- Addition of grid lines and gradients for better readability.
- Proper labeling of important data points.

## Results

The redesigned graphs clearly illustrate the performance of Indian batsmen against left-arm seamers since the 2015 World Cup. Notable insights include:
- Virat Kohli has the highest batting average against left-arm pace.
- MS Dhoni has the highest number of dismissals.

## Conclusion

This project highlights the importance of using appropriate graphs to accurately represent data. Proper graph design is crucial for effective data communication and can prevent misinterpretation of the data.

## References

1. [Tactics Board: How India can beat Australia - ESPN CricInfo](https://www.espncricinfo.com/story/tactics-board-how-india-can-beat-australia-1187863)
2. [Indian Batsmen vs. Left-Arm Pace Dataset - data.world](https://data.world/makeovermonday/2020w35-indian-batsmen-v-left-arm-pace)
3. [Statsguru - ESPN CricInfo](https://stats.espncricinfo.com/ci/engine/stats)
4. [ggplot2 Documentation - Geom Bar](https://ggplot2.tidyverse.org/reference/geom_bar.html)

## How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/redesign-indian-batsmen-performance.git
2. Open the project in RStudio.
3. Run the redesign_graphs.R script to see the data cleaning, preprocessing, and redesigned visualizations.

## Contact
For any questions or feedback, please reach out to us via email:

Vishal Orsu: vorsu@gmu.edu













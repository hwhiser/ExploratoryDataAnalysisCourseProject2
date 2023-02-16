##NEI <- readRDS("E:/RDir/summarySCC_PM25.rds")
##library(ggplot2)
png("E:/RDir/ExploratoryDataAnalysisCourseProject2/plot6.png", 
    width=480, height=480)
baltimoreLAMotors <- subset(NEI, NEI$fips %in% c("24510","06037") & NEI$type == "ON-ROAD")
baltimoreLAMotorsAgg <- aggregate(Emissions ~ year + fips, baltimoreLAMotors, sum)
ggplot(baltimoreLAMotorsAgg, aes(year, Emissions, col = fips)) +
  geom_line() +
  geom_point() +
  ggtitle(expression("Baltimore and Los Angeles" ~ PM[2.5] ~ "Motor Vehicle Emissions by Year")) +
  labs(x = "Year", y = expression(~PM[2.5]~ "Motor Vehicle Emissions") ) +
  scale_colour_discrete(name = "City", labels = c("Los Angeles", "Baltimore")) +
  theme(legend.title = element_text(face = "bold"))
dev.off()
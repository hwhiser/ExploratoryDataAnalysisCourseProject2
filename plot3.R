##NEI <- readRDS("E:/RDir/summarySCC_PM25.rds")
##library(ggplot2)
baltimore <- subset(NEI, NEI$fips == "24510")
baltimoreSource <- aggregate(Emissions ~ year + type, baltimore, sum)
png("E:/RDir/ExploratoryDataAnalysisCourseProject2/plot3.png", 
    width=480, height=480)
ggplot(baltimoreSource, aes(year, Emissions, col = type)) +
  geom_line() +
  geom_point() +
  ggtitle(expression("Total " ~ PM[2.5] ~ "Emissions by Type and Year Baltimore")) +
  ylab(expression(PM[2.5])) +
  xlab("Year") +
  scale_colour_discrete(name = "Type of sources") +
  theme(legend.title = element_text(face = "bold"))
dev.off()
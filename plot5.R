##NEI <- readRDS("E:/RDir/summarySCC_PM25.rds")
##library(ggplot2)
png("E:/RDir/ExploratoryDataAnalysisCourseProject2/plot5.png", 
    width=480, height=480)
baltimoreMotor <- subset(NEI, NEI$fips == "24510" & NEI$type == "ON-ROAD")
baltimoreMotorAgg <- aggregate(Emissions ~ year, baltimoreMotor, sum)
ggplot(baltimoreMotorAgg, aes(year, Emissions)) +
  geom_line(col = "black") +
  geom_point(col = "black") +
  ggtitle(expression("Baltimore " ~ PM[2.5] ~ "Motor Vehicle Emissions by Year")) +
  xlab("Year") +
  ylab(expression(PM[2.5]))
dev.off()
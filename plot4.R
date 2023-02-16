##NEI <- readRDS("E:/RDir/summarySCC_PM25.rds")
##SCC<- readRDS("E:/RDir/Source_Classification_Code.rds")
##library(ggplot2)
png("E:/RDir/ExploratoryDataAnalysisCourseProject2/plot4.png", 
    width=480, height=480)
SCCcoal <- SCC[grepl("coal", SCC$Short.Name, ignore.case = T),]
NEIcoal <- NEI[NEI$SCC %in% SCCcoal$SCC,]
sumCoal <- aggregate(Emissions ~ year + type, NEIcoal, sum)

ggplot(sumCoal, aes(year, Emissions, col = type)) +
  geom_line() +
  geom_point() +
  ggtitle(expression("Total " ~ PM[2.5] ~ "Coal Emission by Type and Year US")) +
  xlab("Year") +
  ylab(expression(PM[2.5])) +
  scale_colour_discrete(name = "Type of sources") +
  theme(legend.title = element_text(face = "bold"))
dev.off()
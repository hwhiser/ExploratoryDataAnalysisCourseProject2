##NEI <- readRDS("E:/RDir/summarySCC_PM25.rds")
png("E:/RDir/ExploratoryDataAnalysisCourseProject2/plot2.png", 
       width=480, height=480)
baltimore <- subset(NEI, NEI$fips == "24510")
sumbaltimore <- aggregate(Emissions ~ year, baltimore, sum)
plot(sumbaltimore$year, sumbaltimore$Emissions, type = "o", pch= 20, cex = 2,
       lwd= 2, main = expression("Total " ~ PM[2.5] ~ "Emissions by Year Baltimore"), 
       xlab = "Year", ylab = expression(PM[2.5]), col = "black")
dev.off()
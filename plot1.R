##NEI <- readRDS("E:/RDir/summarySCC_PM25.rds")
png("E:/RDir/ExploratoryDataAnalysisCourseProject2/plot1.png",width=480, height=480)
totalPM25 <- aggregate(Emissions ~ year, NEI, sum)
plot(totalPM25$year,totalPM25$Emissions,type= "o", pch = 20, cex = 2, lwd = 2, 
     col="black",main = expression("Total "~ PM[2.5]~ "Emissions by Year in the US"), 
     xlab= "Year", ylab = expression(PM[2.5]))
dev.off()
eda_project1 <- function(){
  
  # loading data
  data <- read.table("household_power_consumption.txt", sep=";", header = TRUE)
  indexes <- (data$Date == "1/2/2007") | (data$Date == "2/2/2007")
  # select rows from date 1/2/2007 to date 2/2/2007
  selection <- data[indexes,]
  
  # plot 1
  # save plot to png graphics device
  png("plot1.png", bg = "transparent")
  par(mfrow = c(1,1))
  GAP <- as.numeric(as.character(selection$Global_active_power))
  hist(GAP, main = "Global Active Power", col = "red", ylab = "Frequency", xlab = "Global Active Power (kilowatts)")
  dev.off()
  
}
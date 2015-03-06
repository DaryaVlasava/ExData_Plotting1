eda_project1 <- function(){
  
  # loading data
  data <- read.table("household_power_consumption.txt", sep=";", header = TRUE)
  indexes <- (data$Date == "1/2/2007") | (data$Date == "2/2/2007")
  # select rows from date 1/2/2007 to date 2/2/2007
  selection <- data[indexes,]
  
  # plot 2
  # save plot to png graphics device
  png("plot2.png", bg = "transparent")
  # convert Date and Time variables to Date/Time class
  datetime <- paste(selection$Date, selection$Time)
  datetime <- strptime(datetime, format = "%d/%m/%Y %H:%M:%S")
  
  plot(datetime, GAP, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
  dev.off()
  
}
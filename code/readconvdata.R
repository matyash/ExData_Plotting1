
ReadConvData <- function (){
      
      # Check if data file is already downloaded, if not: download & unzip
      if (!file.exists("household_power_consumption.txt")){
            url <- paste("https://d396qusza40orc.cloudfront.net/",
                         "exdata%2Fdata%2Fhousehold_power_consumption.zip", sep="")
            dest <- "household_power_consumption.zip"
            download.file(url, dest)
            unzip("household_power_consumption.zip")
      }
      
      # Read data and assign appropriate classes
      PowUse <- read.table("household_power_consumption.txt", 
                           sep=';',header=TRUE, na.strings="?",
                           colClasses=c(rep('character', 2), rep('numeric', 7)))
      
      # Convert dates
      PowUse$Date <- as.Date(PowUse$Date, format="%d/%m/%Y")
      
      # Subset data for given dates
      PowUse <- subset(PowUse, PowUse$Date >= as.Date("1/2/2007", "%d/%m/%Y") &
                             PowUse$Date <= as.Date("2/2/2007", "%d/%m/%Y"))
      
      # Combine dates and times in new column
      PowUse$DateTime <- as.POSIXct(paste(PowUse$Date, PowUse$Time), 
                                    format="%Y-%m-%d %H:%M:%S")
      
      # Load converted data
      ReadConvData <- PowUse
      
}
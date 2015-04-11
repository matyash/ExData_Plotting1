
plot1 <- function(){
      
      # Get Data
      source("code\\readconvdata.R")
      PowUse <- ReadConvData()
      
      # Start png device
      png(filename="figure\\plot1.png")
      
      # Plot Data
      hist(PowUse$Global_active_power, col="red", main="Global Active Power",
           xlab="Global Active Power (kilowatts)") 
      
      # Turn off png device
      dev.off()
      
}
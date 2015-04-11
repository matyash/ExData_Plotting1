
plot2 <- function() {
      
      # Get Data
      source("code\\readconvdata.R")
      PowUse <- ReadConvData()
      
      # Start png device
      png(filename="figure\\plot2.png")
      
      # Plot Data
      plot(PowUse$DateTime,PowUse$Global_active_power, type="l",
           ylab="Global Active Power (kilowatts)", xlab="")
      
      # Turn off png device
      dev.off()
      
}

plot3 <- function() {
      
      # Get Data
      source("code\\readconvdata.R")
      PowUse <- ReadConvData()
      
      # Start png device
      png(filename="figure\\plot3.png")
      
      # Plot Data
      plot(PowUse$DateTime,PowUse$Sub_metering_1, col="black",
           xlab="", ylab="Energy sub metering", type="l")
      lines(PowUse$DateTime,PowUse$Sub_metering_2, col="red")
      lines(PowUse$DateTime,PowUse$Sub_metering_3, col="blue")
      legend("topright", lty=c(1,1,1), col = c("black","red","blue"), 
             legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
      
      # Turn off png device
      dev.off()
      
}
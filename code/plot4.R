
plot4 <- function() {
      
      # Get Data
      source("code\\readconvdata.R")
      PowUse <- ReadConvData()
      
      # Start png device
      png(filename="figure\\plot4.png")
      
      # Devide Plot Window
      par(mfrow=c(2,2))
      
      # Plot Data TopLeft
      plot(PowUse$DateTime,PowUse$Global_active_power, type="l",
           xlab="", ylab="Global Active Power")  
      
      # Plot Data TopLeft
      plot(PowUse$DateTime,PowUse$Voltage, type="l",
           xlab="datetime", ylab="Voltage")
      
      # Plot Data BotLeft
      plot(PowUse$DateTime,PowUse$Sub_metering_1, col="black",
           xlab="", ylab="Energy sub metering", type="l")
      lines(PowUse$DateTime,PowUse$Sub_metering_2, col="red")
      lines(PowUse$DateTime,PowUse$Sub_metering_3, col="blue")
      legend("topright", lty=c(1,1,1), col = c("black","red","blue"), bty = "n",
             legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
      
      # Plot Data BotRight
      plot(PowUse$DateTime,PowUse$Global_reactive_power, type="l",
           xlab="datetime", ylab="Global_reactive_power") 
      
      # Turn off png device
      dev.off()
      
}
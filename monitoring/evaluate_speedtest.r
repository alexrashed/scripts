library(zoo)

# Load the CSV Data (containing time, ping, download/upload)
dat <- read.table("speedtest.csv", sep="\t", header=T)

# Order the data by date
temp <- zoo(x = dat, order.by = dat[,1])

# Create the rolling mean value with w=10 for the down-/upload
ma <- rollmean(temp, k=10, align="right")

# Plot the data
#plot(temp, screens=1, type="l", lwd=c(1,1),col=c("red2", "blue"), xlab="", ylab="MBit/s",
#     main="UPC internet speed")
#legend('topright', names(temp),lty=1, col=c(red2", "blue"))

# Calculate the Downtime Percentage
# Calculate the mean, lowest, highest ping/down-/upload
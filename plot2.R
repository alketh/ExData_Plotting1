source("read_clean.R")

dd <- read_clean()

ylab <- "Global Active Power"

png(filename = "plot2.png")
plot(dd$date, dd$gap, ylab = paste(ylab, "(kilowatts)"))
dev.off()

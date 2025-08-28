#setwd("C:\\Users\\IT24100743\\Desktop\\IT24100743")

Delivery_Times <- read.table("Exercise - Lab 05.txt",header=TRUE,sep = ",")
# fix(Delivery_Times)
attach(Delivery_Times)
names(Delivery_Times) <- c("delivery_time")
attach(Delivery_Times)
# fix(Delivery_Times)

histogram <- hist(delivery_time,main="Histogram for Delivery Times", xlab= "Delivery Time",breaks = seq(20, 70,length = 10),right = FALSE)

breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids

Classes <- c()

for(i in 1:length(breaks)-1){
  Classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}

cum.freq <- cumsum(freq)

new <- c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  } else {
    new[i] = cum.freq[i-1]
  }
}

plot(breaks, new, type = 'l', main = "Cumulative Frequency Polygon for Delivery Times", xlab = "Delivery Time", ylab = "Cumulative Frequency", ylim = c(0,max(cum.freq)))
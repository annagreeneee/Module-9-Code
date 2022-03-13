goog200 <- read.csv("C:/Users/AnnaG/Downloads/goog200.csv")
View(goog200)

plot(goog200$time, goog200$value, main="Google Stock Value over Time", xlab="Time", ylab="Stock Price")
lines(goog200$time, goog200$value, col="red")

g <- ggplot(goog200, aes(x=Time, y=StockPrice))
g + geom_area(stat="identity", fill="purple")

b <- qplot(Time, StockPrice, data=google200, color=StockPrice)
b + scale_fill_manual(breaks=c(400, 425, 450, 500)) + scale_color_gradient(low="blue", high="red")
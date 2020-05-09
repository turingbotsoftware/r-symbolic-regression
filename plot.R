library(ggplot2)

data <- read.csv("spx.csv")
data$idx <- as.numeric(row.names(data))
print(data)

eq = function(row){2966.96+(2.98602*(-55.4604+row)*cos(0.0397268*(row+8.34129*cos(-0.0819996*row))-1.16301*cos(-0.0358919*row)))}

p <- ggplot(data, aes(x=idx, y=Close)) + geom_point()
#p <- ggplot() + geom_line(aes(x=idx, y=Close), data=data)

p + stat_function(fun=eq, color='blue')

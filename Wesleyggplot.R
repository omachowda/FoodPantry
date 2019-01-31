data = read.csv("/Users/omachowda/Downloads/WEFP - Summary.xlsx - By Month (1).csv")

data$Months = as.factor(data$Months)
library(ggplot2)
ggplot(data = data, mapping = aes(x = factor(Months), y = HH, fill = factor(Year))) + geom_bar(stat= 'identity', position = 'stack')+ scale_fill_brewer(palette = 1)
ggplot(data = data, mapping = aes(x = factor(Months), y = HH, fill = factor(Year))) + geom_bar(stat= 'identity', position = 'dodge')


ggplot(data = data[which(data$Months == "April"), ], mapping = aes(x = factor(Year), y = HH, fill = factor(Year))) + geom_bar(stat= 'identity', position = 'dodge')
ggplot(data = data[which(data$Months == "January"), ], mapping = aes(x = factor(Year), y = HH, fill = factor(Year))) + geom_bar(stat= 'identity', position = 'dodge')
ggplot(data = data[which(data$Months == "July"), ], mapping = aes(x = factor(Year), y = HH, fill = factor(Year))) + geom_bar(stat= 'identity', position = 'dodge')

year = c(2012, 2013, 2014, 2015, 2016, 2017)
avr = rep(0, 6)
for(i in year) {
  avr[i - 2011] = mean(data[which(data$Year == i), ]$Ind, na.rm = TRUE)
}
meany = data.frame(year, avr)

ggplot(data = meany, mapping = aes(x = factor(year), y = avr, fill = factor(year))) + geom_bar(stat= 'identity', position = 'dodge')

ggplot(data = data[which(data$Year == "2012"), ], mapping = aes(x = factor(Months), y = HH, fill = factor(Months))) + geom_bar(stat= 'identity', position = 'dodge')
ggplot(data = data[which(data$Months == "July"), ], mapping = aes(x = factor(Year), y = HH, fill = factor(Year))) + geom_bar(stat= 'identity', position = 'dodge')

       

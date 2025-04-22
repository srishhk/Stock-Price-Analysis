# Stock Price Analysis using R

# Load necessary libraries
if (!require("quantmod")) install.packages("quantmod", repos='http://cran.us.r-project.org')
if (!require("TTR")) install.packages("TTR", repos='http://cran.us.r-project.org')

library(quantmod)
library(TTR) 

# Step 1: Fetch Stock Data for Apple (AAPL)
getSymbols("AAPL", src = "yahoo", from = "2023-01-01", to = Sys.Date())

# Step 2: Calculate Moving Averages (50-day and 200-day)
aapl <- AAPL
aapl$SMA50 <- SMA(Cl(aapl), n = 50)
aapl$SMA200 <- SMA(Cl(aapl), n = 200)

# Step 3: Plotting the stock price with moving averages
png("aapl_moving_averages.png", width = 800, height = 600)
chartSeries(aapl, TA = "addSMA(50,col='blue');addSMA(200,col='red')", 
            theme = chartTheme("white"), name = "AAPL Stock Price with SMAs")
dev.off()
# Stock Price Analysis using R

Stock price analysis is a handy way for investors to spot market momentum and trend shifts. In this mini‑project we tap into the quantmod toolkit to pull live price data and layer on moving‑average insights.

⚙️ What you’ll need

R installed locally

A working internet connection (to retrieve current price data)

🛠️ R packages

quantmod – grabs market data with a single line

TTR – supplies a rich set of technical‑analysis functions

📝 Workflow

-> Import price data for a chosen ticker via getSymbols() (using quantmod).

-> Compute moving averages – specifically the 50‑day and 200‑day Simple Moving Averages (SMA) with SMA() from TTR.

-> Plot everything together – overlay closing prices with both SMAs to reveal crossovers and long‑term trends.

📈 Expected output

A chart of AAPL daily closes decorated with its 50‑day and 200‑day SMAs (saved as aapl_moving_averages.png).

✅ Takeaways

The moving‑average overlay quickly highlights bullish or bearish turns in Apple’s share price. You can take this further by layering on forecasting techniques—ARIMA, exponential smoothing, or even machine‑learning models—to project future price paths.

📁 Project structure

-> stock_analysis.R – the main R script.

-> aapl_moving_averages.png – chart produced after running the script.
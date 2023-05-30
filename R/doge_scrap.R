doge_scrap <- function() {

  nome <- "DOGE-USD"
  data_fim <- Sys.Date()
  data_ini <- as.Date(data_fim)-(365*2)

  precos <- yf_get(tickers = nome, first_date = data_ini, last_date = data_fim)
  precos <- precos %>% select(price_open, price_close, price_adjusted, ret_adjusted_prices)

return(precos)
}

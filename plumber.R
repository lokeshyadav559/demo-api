library(plumber)
r <- plumb("main.R")
r$run(port=80, host="0.0.0.0")

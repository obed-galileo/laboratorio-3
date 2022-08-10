source("code.R")

set.seed(Sys.getenv('SEED'), kind = "Mersenne-Twister", normal.kind = "Inversion")
conjunto <- c("A","B","C","D")
result <- poblacion(conjunto, 15, 5)

first_result <- unlist(strsplit(Sys.getenv('FIRST_RESULT2'), " "))
last_result <- unlist(strsplit(Sys.getenv('LAST_RESULT2'), " "))


if (sum(first_result == result[[1]]) == 15 && sum(last_result == result[[5]]) == 15){
  quit(status = 0)
  
} else {
  quit(status = 1)
}  
source("code.R")

set.seed(Sys.getenv('SEED'), kind = "Mersenne-Twister", normal.kind = "Inversion")
conjunto <- c("Cara","Escudo")
result <- poblacion(conjunto, 5, 5)
result

first_result <- unlist(strsplit(Sys.getenv('FIRST_RESULT3'), " "))
last_result <- unlist(strsplit(Sys.getenv('LAST_RESULT3'), " "))


if (sum(first_result == result[[1]]) == 5 && sum(last_result == result[[5]]) == 5){
  quit(status = 0)
} else {
  quit(status = 1)
}  
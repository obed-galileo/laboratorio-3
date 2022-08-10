source("code.R")

set.seed(Sys.getenv('SEED'), kind = "Mersenne-Twister", normal.kind = "Inversion")
result <- poblacion(c(0,1), 10, 10)


first_result <- as.double(unlist(strsplit(Sys.getenv('FIRST_RESULT'), " ")))
last_result <- as.double(unlist(strsplit(Sys.getenv('LAST_RESULT'), " ")))


if (sum(first_result == result[[1]]) == 10 && sum(last_result == result[[10]]) == 10){
  quit(status = 0)
  
} else {
  quit(status = 1)
}  
source("code.R")

x <- 1:5
y <- letters[1:5]
result <- mix1(x,y)

expected_result <- unlist(strsplit(Sys.getenv('RESULT5'), " "))


if (sum(expected_result == result) == 5){
  quit(status = 0)
} else {
  quit(status = 1)
}  
source("code.R")

x <- 1:10
y <- letters[1:10]

result <- mix1(x,y)

expected_result <- unlist(strsplit(Sys.getenv('RESULT4'), " "))


if (sum(expected_result == result) == 10){
  quit(status = 0)
} else {
  quit(status = 1)
}  
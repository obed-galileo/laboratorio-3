source("code.R")

Vec1 <- c(1,"a","c",3,4,5)
Vec2 <- c(1,2,"c","a",1,5)

result <- vequal(Vec1,Vec2)

expected_result <- as.integer(Sys.getenv('RESULT6'))


if (result == expected_result){
  quit(status = 0)
} else {
  quit(status = 1)
}  
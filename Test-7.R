source("code.R")

Vec1 <- c("m","a","e","s","t","r","i","a")
Vec2 <-  c("m","a","e","s","t","r","o","s")

result <- vequal(Vec1,Vec2)

expected_result <- as.integer(Sys.getenv('RESULT7'))


if (result == expected_result){
  quit(status = 0)
} else {
  quit(status = 1)
}  
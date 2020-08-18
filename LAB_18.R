#Calculating the square
square<- function(n){
  n**2
}
square(c(1:10))
#checking whether the number is prime or not
prime<- function(x){
  flag = 0
  for (i in 2:(x-1)) {
    p = x
    if((p%%i)==0){
      flag = 1
      break
    }
  }
    if(x==2){
      flag = 0
    }
    if(flag==1){
      print("The number is not prime")
    }
    else{
      print("The number is prime")
    }
   
}
num<- as.integer(readline(prompt = "Enter the number to be checked"))
prime(num)
#REcursive using factorial
fac <- function(x) {
  if (x == 0){
    return (1)
  }
  else { return (x * fac(x-1))}
}
f <- as.integer(readline(prompt = "Enter the number "))
fac(f)
ls()
environment()

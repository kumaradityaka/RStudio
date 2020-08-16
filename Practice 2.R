  #Symbol Binding
    lm<- function(x){}
    lm<- function(x){x*x}
    lm(5)
    25
    #lm is predefined function in R
      search()
    ".GlobalEnv"       
   "tools:rstudio"    
   "package:stats"    
   "package:graphics" 
   "package:grDevices"
   "package:utils"    
   "package:datasets" 
   "package:methods"  
   "Autoloads"        
  "package:base"     
    #lexical scoping
      #free variable:Not a formal nor a local variable
      x<-function(a,b){}
      x<-function(a,b){a+b-c}#Error in a + b - c : non-numeric argument to binary operator
      x(2,3)
#nested function
    outer<-function(n){
      inner<-function(x){
        x**n
      }
      inner
      }
Cube<-outer(3)    
Cube         
Square<-outer(2)
Cube(5) #125
Square(4) #16
ls(environment(Cube)) #"inner" "n"
get("n",environment(Cube)) #3
get("x",environment(Cube(x)))
y<-10
f<-function(x1){
  y<-2
  y**2 + g(x1)
}
g<- function(x2){
  x2*y
}
f(2)
#Dates
d<- as.Date("1970-01-01")
d
unclass(d)
x<-Sys.time()
p<-as.POSIXlt(x)
p$sec
x
unclass(p)
datestring<-c("August 10,2020 10:00","August 10,2019 10:00")
t<-strptime(datestring,%B %D %Y,%H:%M)

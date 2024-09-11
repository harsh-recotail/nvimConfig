package main 

import "fmt"

func fib(n int64) int64 {
  if(n<3){
    return 1
  }
  return fib(n-1) + fib(n-2)
}

func main(){
  fmt.Println("Hello, world")
  fmt.Println(fib(50));
}

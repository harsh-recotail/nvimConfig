function  fib(n){
  if (n<3){
    return 1;
  }
  else{
    return fib(n-1) + fib(n-2);
  }
}

console.log(fib(5));

async function main(a,b){
  return a ** b;
}

console.log(5,9)
console.log(fib())

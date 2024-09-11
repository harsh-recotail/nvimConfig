def fib(n:int):
    if n<3:
        return 1
    else:
        return fib(n-1) + fib(n-2)

print(fib(5))

def pnr(a:int,b:int):
    return b**a 

print(pnr(6,2))        

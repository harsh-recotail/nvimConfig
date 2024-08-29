def fib(n:int):
    if n < 3 :
        return 1
    return fib(n-1) + fib(n-2)


def main():
    print(fib(5))







#Iterative(Non-Recursive) Program
nterms = int(input("Enter number of terms "))

n1, n2 = 0, 1

if nterms <= 1:
    print(n1)    
else:
    print(n1)
    print(n2)
    for i in range(nterms-2):
        nth = n1 + n2
        n1 = n2
        n2 = nth
        print(nth)


#Recursive Program

def fib(n):
    if(n==0 or n==1):
        return n
    else:
        return fib(n-1) + fib(n-2)

n=int(input())
for i in range(n):
    print(fib(i) , end=" ")


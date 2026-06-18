def f(a,b,c,d):
    return a + b + c + d
def g():
    a = 1
    b = 2
    c = 3
    d = 4
    return f(**locals())
print(g())

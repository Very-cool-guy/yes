s = lambda f, *args: f(*args)
lisp_eval = lambda text: eval(','.join(text.replace("(", "s(").split()))

assign = lambda a, b: exec(f"global {a}; {a} = {b}")
do = lambda *args: args[-1]

sexp = """
(do
  (assign \"x\" 1)
  (print x)
  x)
"""
print(lisp_eval(sexp))

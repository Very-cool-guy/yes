prime ← {2=+/0=(⍳⍵)|⍵}

IsDivBy ← {0=⍵|⍺}
multiples ← {⍺[⍸⍺ IsDivBy ⍵]}

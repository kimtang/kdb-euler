
args:.Q.def[`name`port!("euler25";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler25:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
The Fibonacci sequence is defined by the recurrence relation:

Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
Hence the first 12 terms will be:

F1 = 1
F2 = 1
F3 = 2
F4 = 3
F5 = 5
F6 = 8
F7 = 13
F8 = 21
F9 = 34
F10 = 55
F11 = 89
F12 = 144
The 12th term, F12, is the first term to contain three digits.

What is the first term in the Fibonacci sequence to contain 1000 digits?
\

norm0:{sum key[x]{k:x+til count r:("J"$) each reverse string y;k!r}'value x}

norm:{norm0/[x]}
i:2
(::)r:{1000>count value last x}{i+:1;-2#x,enlist norm sum x}/2#enlist enlist[0]!enlist 1
i

t) The result is %1;i
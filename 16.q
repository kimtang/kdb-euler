
args:.Q.def[`name`port!("16";8888);].Q.opt .z.x

/ remove this line when using in production
/ 16:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/

2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?

\


/ big numbers

/ normalize an array

1 12 31 / should be 1 2 2 3

(::)c:til[count c] !c:1 92 91


norm0:{sum key[x]{k:x+til count r:("J"$) each reverse string y;k!r}'value x}

norm:{norm0/[x]}

norm c

f:{norm 2 * x}

(::)r:f/[1000;] enlist[0]!enlist 2

sum value r

/ add two numbers 




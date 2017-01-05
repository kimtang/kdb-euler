args:.Q.def[`name`port!("40.q";8888);].Q.opt .z.x

/ remove this line when using in production
/ 40.q:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
An irrational decimal fraction is created by concatenating the positive integers:

0.123456789101112131415161718192021...

It can be seen that the 12th digit of the fractional part is 1.

If dn represents the nth digit of the fractional part, find the value of the following expression.

d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000
\


d:1 10 100 1000 10000 100000 1000000

r:raze string til 1+ last d

prd "J"$'r d
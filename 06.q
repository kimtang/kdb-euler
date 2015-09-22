
args:.Q.def[`name`port!("euler06";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler06:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
\

\t (s*s:sum r)-/r*r:1+til 100

\t (s*s:sum r)-sum r*r:1+til 100
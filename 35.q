
args:.Q.def[`name`port!("euler35";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler35:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
Circular primes
Problem 35
Published on 17 January 2003 at 06:00 pm [Server Time]
The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

How many circular primes are there below one million?
\

(::)prim:reverse first 

{f:first n: x 1;(f,x 0;n where n mod f)}/[{ count x 1};(();1_1+til 90)]
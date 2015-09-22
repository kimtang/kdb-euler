args:.Q.def[`name`port!("euler04";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler04:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
\

\t max r where r="J"$reverse each string r: distinct raze r*/:\:r:1+til 999

906609j



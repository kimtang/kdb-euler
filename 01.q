
args:.Q.def[`name`port!("euler 1";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler 1:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];


/
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
\


sum distinct raze 1+til each ceiling (n:1000)%3 5


t) the sum is: %1; (::)r:sum distinct asc raze l*1+til each -1 + ceiling 1000 %/:l:3 5


\t sum w where n>=w:asc distinct raze (1+til n:100000)*/:3 5

\t r:sum asc distinct  raze l*1+til each -1 + ceiling n %l:3 5





args:.Q.def[`name`port!("euler21";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler21:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];



/

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

d(d(a)) = a

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.

\


r:sum x where (not x=df) and x = (x!df) df:(d:{sum r where not `boolean $ x mod r:1_ til x})@'x:1+til 10000


t) result is %1;r
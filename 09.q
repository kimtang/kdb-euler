args:.Q.def[`name`port!("euler09";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler09:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];



/
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
\

r where 1000=sum each r:(r w),'`long$s w:where s = floor s:sqrt sum@'r*r:raze r,/:\:r:1+til 1000

200 375 425


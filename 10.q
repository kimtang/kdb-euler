

args:.Q.def[`name`port!("euler10";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler10:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
\

/ sum {p:first y; r:1_y; rr:r where not 0=r mod p;$[0=count rr;x,p ;.z.s[x,p;rr] ]}[();]1_1+til 2000000


r:{0<count last x} {p:first last x;0N!count r:1_ last x;rr:r where not 0=r mod p;:(p,first x;rr) }/(();1_1+til 2000000)

sum r 0

142913828922j
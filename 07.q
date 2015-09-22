args:.Q.def[`name`port!("euler07";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler07:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];



/

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

\

cprim:{[x;y] rr:r first where 0=x mod r:1+y+til 1000;$[null rr;.z.s[x;last r];:`long$rr] }

p:{r:cprim[x;1];$[r=x;r;.z.s[`long$x % r],r]}

ip:1=count p@

pp:{x where ip@'x}

r:{0N!count x:(pp r:1_z+til y),x;$[10001<=count x;x;.z.s[x;1000;last r] ]}[();1000;1]





asc[r] 10000
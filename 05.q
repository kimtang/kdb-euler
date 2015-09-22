
args:.Q.def[`name`port!("euler05";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler05:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
\

cprim:{[x;y] rr:r first where 0=x mod r:1+y+til 1000;$[null rr;.z.s[x;last r];:`long$rr] }

p:{r:cprim[x;1];$[r=x;r;.z.s[`long$x % r],r]}

cg:count each group@

prd `long$key[r]xexp'value r:{[x;y]x |c:cg (),p y} over enlist[()!()],1 _ 1+til 20

232792560j

p 8


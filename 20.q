

args:.Q.def[`name`port!("20";8888);].Q.opt .z.x

/ remove this line when using in production
/ 20:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];


norm0:{sum key[x]{k:x+til count r:("J"$) each reverse string y;k!r}'value x}

norm:{norm0/[x]}

(::)sum value r:{[x;y] 0N!norm x*y } over enlist[enlist [0]!enlist 1],1_til 100

norm0 enlist[0]!enlist 24

r

/

norm0/[10]

f:{norm 2 * x}

(::)r:f/[1000;] enlist[0]!enlist 2

sum value r
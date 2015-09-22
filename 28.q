
args:.Q.def[`name`port!("euler28";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler28:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];


/
Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

21 22 23 24 25
20  7  8  9 10
19  6  1  2 11
18  5  4  3 12
17 16 15 14 13

It can be verified that the sum of the numbers on the diagonals is 101.

What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?


\

"works only for uneven numbers"

(::)m:`r`u`l`o!(0 1;1 0;0 -1;-1 0)

(::)a:sums enlist[2#floor 0.5*x],m -1_raze -1_(raze (2#)each 1+til x)#'(2*x:1001)#key m
(::)v:1+til count a

(::)i:iasc {y+x*z}[;;x] . flip a

(::){([]x)}f:til[x]{(z=x+y)|x=y}[;;-1+x]/:\:til x

(::)r:sum raze f*x cut v i

/

5 cut a i


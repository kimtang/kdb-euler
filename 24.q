
args:.Q.def[`name`port!("euler24";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler24:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
\

perm:{[s] $[(count s)=1;s;raze {(first x),/:perm 1_x}each (rotate[1]\)s]}

f:{[x] if[2=count x;:x (0 1; 1 0)];raze x{y,/:f x except y}/: x}

@[;1000000 - 1] asc parse each f raze string til 10
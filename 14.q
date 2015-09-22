
args:.Q.def[`name`port!("name";1234);].Q.opt .z.x

/ remove this line when using in production
/ name:localhost:1234::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 1234"; } @[hopen;`:localhost:1234;0];


/
Longest Collatz sequence
Problem 14
Published on 05 April 2002 at 06:00 pm [Server Time]
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
\

col:{{not x=1}{`long$$[0=x mod 2;x % 2;1+3*x] }\ x}

\t r:w last iasc (count col@) @'w:1_1+til `long$10 xexp 3

/ too slow
2405

(::)w:1_1+til 10

f:{[w]
 a:1=w;
 b1:`long$%[;2]w b:where(not a)&0=w mod 2;
 c1:`long$1+3*w c:where(not a)&1=w mod 2;
 :((count[ where a]#1),b1,c1) iasc where[a],b,c}


/ divide and conquer

w:250000 cut w:1_1+til `long$10 xexp 6

ff:{[w]w last iasc {sum not 1=x}@'flip {not all 1 =x } f \ w}

\t r: ff each w  

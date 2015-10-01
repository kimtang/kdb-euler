
args:.Q.def[`name`port!("36.q";8888);].Q.opt .z.x

/ remove this line when using in production
/ 36.q:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
The decimal number, 585 = 1001001001_2 (binary), is palindromic in both bases.

Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

(Please note that the palindromic number, in either base, may not include leading zeros.)
\
 
sum t where {r~reverse r:{1_reverse div[;y]\[x]mod y}[;2]x} each t:t where t="J"$reverse each string t:til 1000000
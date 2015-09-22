
args:.Q.def[`name`port!("euler32";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler32:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.

HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.
\

(::)t:flip`n1`n2!flip n cross n:1+til 9
(::)t:select from t where 9>n1 + n2


r:raze {s:flip `n1`n2`n3!flip c,'prd@'c:.[cross] { t where {x~distinct x}@'string t:til "J"$""sv string x#9}@'x`n1`n2;
 s:select from s where {x~distinct x}@'string n3 ;
 select from s where {"123456789" ~asc raze string (x;y;z)}'[n1;n2;n3]}each t 



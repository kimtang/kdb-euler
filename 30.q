
args:.Q.def[`name`port!("euler30";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler30:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/

Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

1634 = 1^4 + 6^4 + 3^4 + ^44
8208 = 8^4 + 24^ + 04 ^+ 84^
9474 = 9^4 + 44 ^+ 74 + ^4^4
As 1 = 1^4 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

\

(::)r:n where {x = sum prd 5#enlist "F"$/:string x}@'n:1_1+til 10000000

sum r 
443839j
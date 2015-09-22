args:.Q.def[`name`port!("euler26";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler26:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:

1/2	= 	0.5
1/3	= 	0.(3)
1/4	= 	0.25
1/5	= 	0.2
1/6	= 	0.1(6)
1/7	= 	0.(142857)
1/8	= 	0.125
1/9	= 	0.(1)
1/10	= 	0.1
Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.

Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.
\

f:{({[x;y]a:10*last last x; x,enlist(a div y;a mod y)}[;x])/[ {r:last[x]~/:-1_x;$[0=count r;1b;not max r] }; enlist 1 ,10 mod x]}

r idesc v:({0N!last deltas where x~\:last x} f@) each r:til 1000

t) The result is %1; r first idesc v
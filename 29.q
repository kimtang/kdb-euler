
args:.Q.def[`name`port!("euler29";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler29:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
Consider all integer combinations of ab for 2 ≤ a ≤ 5 and 2 ≤ b ≤ 5:

22=4, 23=8, 24=16, 25=32
32=9, 33=27, 34=81, 35=243
42=16, 43=64, 44=256, 45=1024
52=25, 53=125, 54=625, 55=3125
If they are then placed in numerical order, with any repeats removed, we get the following sequence of 15 distinct terms:

4, 8, 9, 16, 25, 27, 32, 64, 81, 125, 243, 256, 625, 1024, 3125

How many distinct terms are in the sequence generated by ab for 2 ≤ a ≤ 100 and 2 ≤ b ≤ 100?
\

a:1 _ 1+til 5
b:a

(::)c:til[count c] !c:1 92 91

norm0:{sum key[x]{k:x+til count r:("J"$) each reverse string y;k!r}'value x}

norm:{norm0/[x]}

norm c

(::)r:count distinct raze res:a{{norm x*y} over {norm enlist[1]! enlist x}@'x#y}\:/:b

([]distinct raze res)

/TODO: norm seems not to be correct, fix it
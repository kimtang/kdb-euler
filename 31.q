
args:.Q.def[`name`port!("euler31";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler31:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/

In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
It is possible to make £2 in the following way:

1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
How many different ways can £2 be made using any number of coins?

\

(::)cur:200 100 50 20 10 5 2f
num:"f"$cross[;]over 6#cnt:til each 1+"j"$200%cur 
num:num where 200>=result:num$6#cur  
num:num cross "f"$last cnt 
num:num where 200>=result:num$cur
count num

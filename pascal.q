
args:.Q.def[`name`port!("pascal";8888);].Q.opt .z.x

/ remove this line when using in production
/ pascal:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];



sum@'x 0 1 +/:-1  + til 1+count x:1 1

\t {sum@'x 0 1 +/:-1  + til 1+count x}\[250;1 1]

{sum x y,y+1}[x]@'-1  + til 1+count x:1 1

\t {{sum x y,y+1}[x]@'-1  + til 1+count x}\[250;1 1]

\t {sum@'x 0 1 +/:-1  + til 1+count x}\[250;1 1]
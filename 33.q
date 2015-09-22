args:.Q.def[`name`port!("33";8888);].Q.opt .z.x

/ remove this line when using in production
/ 33:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];



(%). reverse prd exec r from({b:((%). x)=(%). r:"J"$r except\:i:(inter). r:string x;`g`j`r`x!(b;"J"$i;r;x)} each distinct asc each t cross t:10+til 90)where g,not j in 0N 0j

/

exit 0

4#enlist 1+til 9
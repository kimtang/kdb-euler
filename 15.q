
args:.Q.def[`name`port!("15";8887);].Q.opt .z.x

/ remove this line when using in production
/ 15:localhost:8887::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8887"; } @[hopen;`:localhost:8887;0];

/

* * *
* * *
* * *

\


(::)t:flip raze t,/:\:t:til 20

t:([] x:t 0; y:t 1)

2 xexp count[ select from t where not x = 19, not y = 19] 
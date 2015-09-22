
args:.Q.def[`name`port!("name";8888);].Q.opt .z.x

/ remove this line when using in production
/ name:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];


(::)t:([]localtime: 1 2 3 4;abc:4 5 6 7)

(::)t:update localtime:localtime from t
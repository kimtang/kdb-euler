args:.Q.def[`name`port!("euler03";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler03:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
\

cprim:{[x;y] rr:r first where 0=x mod r:1+y+til 1000;
				$[null rr;
					.z.s[x;last r];
					:`long$rr
				] 
			}

cprim[600851475143j;1]

max {r:cprim[x;1];$[r=x;r;.z.s[`long$x % r],r]}600851475143j

6857
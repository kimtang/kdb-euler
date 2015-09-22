
args:.Q.def[`name`port!("euler27";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler27:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];


/
Euler discovered the remarkable quadratic formula:

n² + n + 41

It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.

The incredible formula  n² − 79n + 1601 was discovered, which produces 80 primes for the consecutive values n = 0 to 79. The product of the coefficients, −79 and 1601, is −126479.

Considering quadratics of the form:

n² + an + b, where |a| < 1000 and |b| < 1000

where |n| is the modulus/absolute value of n
e.g. |11| = 11 and |−4| = 4
Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n = 0.
\

(::)a:reverse[a],1_neg a: til 1000
(::)a:raze a,/:\:a

isprim:{first 1#"b"$min x mod 2_@[til;x;()]}

([]isprim@/:neg til 10;neg til 10)

g:{[a;b;x] b + x * a + x}

{[x;f]r:f x;$[isprim r;x;x+1]}[;g . a 1]\[100;0]  

\t r:{ {last {[x;f]r:f x;$[isprim r;x;x+1]}[;x]\[0]} g . x}each 1000#a




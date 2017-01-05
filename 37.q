args:.Q.def[`name`port!("37.q";8888);].Q.opt .z.x

/ remove this line when using in production
/ 37.q:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];

/
The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
\

isPrime:{not max r=floor r:x % 2+til ceiling 0.5*x}
isPrime0:{not max r=floor r:x % 2_til x}

trunctable:{d:distinct "J"$(n,neg n:1+til count s)#\:s:string x;if[1 in d;:0b];min isPrime0 each d}

\t count r:n where trunctable each n:7_1+til num:1003797

sum 11#r
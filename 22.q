args:.Q.def[`name`port!("euler22";8888);].Q.opt .z.x

/ remove this line when using in production
/ euler22:localhost:8888::
{ if[not x=0; @[x;"\\\\";()]]; value"\\p 8888"; } @[hopen;`:localhost:8888;0];


/
Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?
\

r:sum (1+ til count n)*sum@'(.Q.a!1+til count .Q.a) n:{ lower -1_1_x}@'"," vs raze read0 `:names.txt

t) The result is %1; r


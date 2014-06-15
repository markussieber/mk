
/  mk framework by markus sieber
\d .m

/ util functions


/ t: timer


T:([]t:`s#0#.z.Z;f:())
tn:.z.ts:{e:T i:t?&/t:T`t;$[0>r:.z.Z-0Wz^e`t;."\\t ",$0|-_r*86400000;[T::(i#T),(i+1)_T;@[e`f;::];tn[]]]}
t:{$[7h=t:abs@@x;x:.z.Z+19h$x;]; $[in[t]17 18 19h;x:"z"$x+.z.D+$[x< t$.z.Z;1;0];];  x:15h$x;   T,:`t`f!(x;y) ;tn[]; }









/
/ END OF SCRIPT, the following is not called
/ some nice things..

/ nice sudoku solver from arthur himself
p:p,:3/:_(p:,/'+:\9#'!9)%3;s:{*(,x)(,/{@[x;y;:;]'&21=x[&|/p=p[;y]]?!10}')/&~x} /s is a function that solves sudokus
s@.:'"200370009009200007001004002050000800008000900006000040900100500800007600400089001" /call s with a demo sudoku

/ a sample http server that outputs fibonacci numbers; call http://localhost:1025/80  to see 80th fibonacci number
.z.ph:{$*(-7h$x 0){1_x,+/x}/!2};."\\p 1025"





/  mk framework by markus sieber
\d .mk

/ util functions
imin:{m:i:0;do[-1+#x;$[x[m]>x[i+:1];m:i;]];m}  /get index of min element


/ t: timer
T:([]t:0#.z.Z;f:();r:0#0b) /timer table
tn:.z.ts:{e:T i:imin T`t;$[ 0<r:.z.Z-0Wz^e`t;[T::(i#T),(i+1)_T; @[e`f;::];tn[]];."\\t ",$0|-_r*86400000]}
t:{T,:`t`f`r!(.z.Z+x%86400000;y;0b);tn[]} /setTimeout[timeoutInMs;function]


/
/ END OF SCRIPT, the following is not called
/ some nice things..

/ nice sudoku solver from arthur himself
p:p,:3/:_(p:,/'+:\9#'!9)%3;s:{*(,x)(,/{@[x;y;:;]'&21=x[&|/p=p[;y]]?!10}')/&~x} /s is a function that solves sudokus
s@.:'"200370009009200007001004002050000800008000900006000040900100500800007600400089001" /call s with a demo sudoku

/ a sample http server that outputs fibonacci numbers; call http://localhost:1025/80  to see 80th fibonacci number
.z.ph:{$*(-7h$x 0){1_x,+/x}/!2};."\\p 1025"



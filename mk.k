
/  mk framework by markus sieber
\d .mk

/ util functions
imin:{m:i:0;do[-1+#x;$[x[m]>x[i+:1];m:i;]];m}  /get index of min element


/ t: timer
T:([]t:0#.z.Z;f:();r:0#0b) /timer table
tn:.z.ts:{e:T i:imin T`t;$[ 0<r:.z.Z-0Wz^e`t;[T::(i#T),(i+1)_T; @[e`f;::];tn[]];."\\t ",$0|-_r*86400000]}
t:{T,:`t`f`r!(.z.Z+x%86400000;y;0b);tn[]} /setTimeout[timeoutInMs;function]

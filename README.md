mk
==

mk framework for kdb+

current features:
 * timer abstraction


example usage of timer functionality:

.mk.t[2000;{1 "hello"}] /says hello on stdout after 2s
.mk.T /shows the timer table columns are t(ime of exection), f(unction to call), r(epeat)

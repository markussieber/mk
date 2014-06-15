Markus framework for kdb+
=========================

current features:
 * timer abstraction


example usage of timer functionality:

.m.t[2000;{1"hello"}] /says hello on stdout after 2s

.m.t[.z.Z+1;{1"hello"}] /says hello on stdout tomorrow same date
.m.t[20:33;{1"20:33"}] /callback at 20:33 (auto next day..)
.m.t[00:00;{1"eod"}] / callback at midnight

.m.T /shows the timer table columns are t(ime of exection), f(unction to call), r(epeat)

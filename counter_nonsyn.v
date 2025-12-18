module counter_nonsyn(CP, Q, NQ);
input CP;
output [3:0] Q, NQ;

jk_ff u0 (CP, 1, 1, Q[0], NQ[0]);
jk_ff u1 (NQ[0], 1, 1, Q[1], NQ[1]);
jk_ff u2 (NQ[1], 1, 1, Q[2], NQ[2]);
jk_ff u3 (NQ[2], 1, 1, Q[3], NQ[3]);
OPENQASM 2.0;
include "qelib1.inc";

qreg q[1];
qreg r[2];
creg c[1];

cx q[0],r[0];

x q[0];
cx q[0],r[1];
x q[0];

cx r[0],r[1];

cx q[0],r[0];

x r[1];

measure r[1] -> c[0];
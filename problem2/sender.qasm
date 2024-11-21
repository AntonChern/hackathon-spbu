OPENQASM 2.0;
include "qelib1.inc";

qreg q[1];
qreg r[1];
creg c[2];

cx q[0],r[0];
h q[0];

measure q[0] -> c[0];
measure r[0] -> c[1];
clear
clc

syms D Lb C Vc ibQ s
A = [0 -D/Lb -D/Lb;D/C 0 0;D/C 0 0];
B = [-Vc/Lb -Vc/Lb; ibQ/C 0; 0 ibQ/C];
C = [ 1 0 0; 0 1 -1; 0 1 1];
I = eye(3);

G = C*( inv(s*I-A) )*B
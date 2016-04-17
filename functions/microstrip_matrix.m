function [ A_, Z, S ] = microstrip_matrix( Z0, f, l )
%ABCD_TL generates ABCD matrix for transmission line
%   Table 4.1

A_ = ABCD_TL(Z0, f, l);

A = A_(1,1); B = A_(1,2);
C = A_(2,1); D = A_(2,2);

Z = Z_TL(A, B, C, D);

S = S_TL(Z0, A, B, C, D);

function [ ABCD ] = ABCD_TL( Z0, f, l )
%ABCD_TL generates ABCD matrix for transmission line
%   Table 4.1

c = 3E8;
lam = c/f;
beta = 2*pi/lam;
bl = beta*l;

A = cos(bl);
B = 1j*Z0*sin(bl);
C = 1j*sin(bl)/Z0;
D = cos(bl);

ABCD = [A, B; C, D];

function [ Z ] = Z_TL( A, B, C, D )
%Z_TL generates Z matrix for transmission line from ABCD
%   Table 4.1

z11 = A/C;
z12 = (A*D - B*C)/C;
z21 = 1/C;
z22 = D/C;

Z = [z11, z12; z21, z22];

function [ S ] = S_TL( Z0, A, B, C, D )
%S_TL generates ABCD matrix for transmission line from ABCD and Z0
%   Table 4.1

s11 = (A + B/Z0 - C*Z0 - D)/(A + B/Z0 + C*Z0 + D);
s12 = (2*(A*D - B*C))/(A + B/Z0 + C*Z0 + D);
s21 = (2)/(A + B/Z0 + C*Z0 + D);
s22 = (-A + B/Z0 - C*Z0 + D)/(A + B/Z0 + C*Z0 + D);

S = [s11, s12; s21, s22];

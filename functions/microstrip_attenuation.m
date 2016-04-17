function [ a_c, a_d, a_t ] = microstrip_attenuation( f, W, d, Z0, l, tan_d, eps_r, sig )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
c = 3E8;
u0 = 4E-7*pi;
k0 = 2*pi*f/c;
eps_e = (eps_r + 1)/2 + ((eps_r - 1)/2)*(1/sqrt(1+12*d/W));
Rs = sqrt(u0*2*pi*f/(2*sig));

a_d = k0*eps_r*(eps_e - 1)*tan_d/(2*sqrt(eps_e)*(eps_r - 1))*l;
a_c = Rs/(Z0*W)*l;

a_t = a_d + a_c;

end

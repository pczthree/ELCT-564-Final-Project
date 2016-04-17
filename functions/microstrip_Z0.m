function Z0 = microstrip_Z0( W, d, eps_r )
%microstrip_Z0 Given dielectric constant, thickness, and strip width can
%compute the characteristic impedance
%   Equation 3.196

eps_e = (eps_r + 1)/2 + ((eps_r - 1)/2)*(1/sqrt(1+12*d/W));

if (W/d < 1 || W/d == 1)
    Z0 = 60/sqrt(eps_e)*log(8*d/W + W/(4*d));
else
    Z0 = 120*pi/(sqrt(eps_e)*(W/d + 1.393 + 0.667*log(W/d + 1.444)));
end

end

